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
            # 获取当前行经纬度 (列表从右侧数第一/二个)
            lng = row_list[-2]
            lat = row_list[-1]

            # 然后当前列表的最后两个元素(因为经纬度不能插入到name字段) pop 会做两件事: 删除 list 的最后一个元素, 然后返回删除元素的值
            row_list.pop()
            row_list.pop()
            for index, addressName in enumerate(row_list, 1):
                # 每插完一行数据将flag置为true
                flag = index == 1

                if index == 1:
                    supId1, supName1 = exec_sql(addressName.strip(), "", lng, lat, None, index, flag)
                elif index == 2:
                    supId2, supName2 = exec_sql(addressName.strip(), supName1, lng, lat, int(supId1), index, flag)
                elif index == 3:
                    supId3, supName3 = exec_sql(addressName.strip(), supName2, lng, lat, int(supId2), index, flag)
                elif index == 4:
                    supId4, supName4 = exec_sql(addressName.strip(), supName3, lng, lat, int(supId3), index, flag)
                elif index == 5:
                    supId5, supName5 = exec_sql(addressName.strip(), supName4, lng, lat, int(supId4), index, flag)
                elif index == 6:
                    supId6, supName6 = exec_sql(addressName.strip(), supName5, lng, lat, int(supId5), index, flag)
                else:
                    exec_sql(addressName.strip(), supName6, lng, lat, int(supId6), index, flag)


def exec_sql(addressName, supName, lng, lat, supId, index, flag):
    # print("******************************")
    # print("名称：", addressName)
    # print("supId：", supId)
    # print("rank：", rank)
    value = {
        'addressName': addressName,
        'supId': supId,
        'rank': index,
        'state': 1,
        'supName': supName,
        'lng': lng,
        'lat': lat
    }
    if index != 4:
        value['lng'] = None
        value['lat'] = None

    query_sql_txt = '''
        select id from sc_address where addressName=%(addressName)s and rank=%(rank)s  and supId=%(supId)s
    
    '''
    insert_sql_txt = '''
    insert
    into
    sc_address
    (addressName, supId, rank,state,supName,lng,lat)
    VALUES(%(addressName)s, %(supId)s, %(rank)s, %(state)s,%(supName)s,%(lng)s,%(lat)s)
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
            return a[0], addressName
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
            return cursor.lastrowid, addressName
    # 如果不是每一行的第一个数据,也需要先查找再插入
    else:
        cursor.execute(query_sql_txt, value)
        a = cursor.fetchone()
        if a:
            return a[0], supName + addressName
        else:
            cursor.execute(insert_sql_txt, value)
            conn.commit()
            # print("返回的ID是：", cursor.lastrowid)
            return cursor.lastrowid, supName + addressName


if __name__ == '__main__':
    open_file()
