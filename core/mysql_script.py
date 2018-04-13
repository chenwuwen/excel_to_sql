import pymysql
import os

base_dir = os.path.dirname(__file__)
script = "script.txt"

conn = pymysql.connect(host='127.0.0.1', port=3306, user='root', passwd='root', db='kaoqin', charset='utf8')
cursor = conn.cursor()


def open_file():
    with open(base_dir + "/" + script, 'r', encoding='utf-8') as data:
        for i, line in enumerate(data.readlines()):
            row_list = line.split("\t")
            # print(row_list)
            print("已执行%d行" % (i))
            for index, addressName in enumerate(row_list, 1):
                # 每插完一行数据将flag置为true
                flag = index == 1
                # rank1, rank2, rank3, rank4, rank5, rank6 = 0
                if index == 1:
                    rank1 = exec_sql(addressName.strip(), 0, index, flag)
                elif index == 2:
                    rank2 = exec_sql(addressName.strip(), int(rank1), index, flag)
                elif index == 3:
                    rank3 = exec_sql(addressName.strip(), int(rank2), index, flag)
                elif index == 4:
                    rank4 = exec_sql(addressName.strip(), int(rank3), index, flag)
                elif index == 5:
                    rank5 = exec_sql(addressName.strip(), int(rank4), index, flag)
                elif index == 6:
                    rank6 = exec_sql(addressName.strip(), int(rank5), index, flag)
                else:
                    exec_sql(addressName.strip(), int(rank6), index, flag)


def exec_sql(addressName, supId, rank, flag):
    # print("******************************")
    # print("名称：", addressName)
    # print("supId：", supId)
    # print("rank：", rank)
    value = {
        'addressName': addressName,
        'supId': supId,
        'rank': rank,
        'state': 1
    }
    query_sql_txt = '''
        select id from sc_address where addressName=%(addressName)s and rank=%(rank)s  and supId=%(supId)s
    
    '''
    insert_sql_txt = '''
    insert
    into
    sc_address
    (addressName, supId, rank,state)
    VALUES(%(addressName)s, %(supId)s, %(rank)s, %(state)s)
    '''
    # 如果flag为true,说明程序开始读取新一行的第一个数据,需要先判断这个数据在数据库是否存在
    if flag:
        query_sql_txt_rank_1 = '''
             select id from sc_address where addressName=%(addressName)s  and rank='1' 

         '''
        cursor.execute(query_sql_txt_rank_1, value)
        # a = cursor.fetchone()返回的是一个元组，a=cursor.execute()也可以返回一个数字但这个数字不是你的主键(在有些情况下可能会恰好跟主键一致),不要使用这个方法
        a = cursor.fetchone()
        # 如果之前有数据那么,这条数据就不必插入,并将主键返回
        if a:
            return a[0]
        else:
            insert_sql_txt_rank_1 = '''
            insert
            into
            sc_address
            (addressName, supId, rank,state)
            VALUES(%(addressName)s, %(supId)s, %(rank)s,%(state)s) 
            '''
            cursor.execute(insert_sql_txt_rank_1, value)
            conn.commit()
            # 返回主键
            return cursor.lastrowid
    # 如果不是每一行的第一个数据,也需要先查找再插入
    else:
        cursor.execute(query_sql_txt, value)
        a = cursor.fetchone()
        if a:
            return a[0]
        else:
            cursor.execute(insert_sql_txt, value)
            conn.commit()
            # print("返回的ID是：", cursor.lastrowid)
            return cursor.lastrowid


if __name__ == '__main__':
    open_file()
