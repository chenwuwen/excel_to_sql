import core.excel as excel
import core.mysql_script as ms
import time
#excel所在目录
excel.base_dir = 'E:\\'
#excel文件名
excel.src_filename = "dzys.xlsx"

start_time = time.time()
print(start_time)
excel.exec()
ms.open_file()
print(time.time())
print("执行时长：%f 秒" % (time.time() - start_time))
