from pymongo import MongoClient
import re


class execmogo:

    # 建立MongoDB数据库连接
    client = MongoClient("115.47.147.131", 27017)
    # 选择数据库  rycj为数据库名称
    db = client.rycj
    # 数据库认证
    db.authenticate("rycj", "rycj")
    # 选择数据库集合 t_zidian为rycj数据库集合（也就是sql中的表）
    collection = db.t_zidian

    def exec(self, data):
        print("*****************")
        print(data)
        result = self.collection.insert_many(data)
        print(result)
        self.client.close()


class formData:
    data_list = []

    def exec_data(self):
        with open("data.txt", 'r', encoding='utf-8') as data:
            for i, line in enumerate(data.readlines()):
                one = {'dm': '', 'mc': '', 'type': 'minzu'}
                # 取得当前数据行中的中文字符
                r = re.compile('[^\u4e00-\u9fa5]')
                # print(r)
                zh = "".join(r.split(line)).strip()
                print(zh)
                len_z = len(zh)
                zh_2 = zh[0:len_z // 2]
                print(zh_2)
                one['dm'] = zh_2
                one['mc'] = zh_2
                self.data_list.append(one)

    def test(self):
        return self.data_list


if __name__ == '__main__':
    f = formData()
    f.exec_data()
    d = f.test()
    e = execmogo()
    e.exec(d)
