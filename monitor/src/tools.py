import requests
from datetime import datetime
import time
from threading import Thread
from src.user import User
import requests
import subprocess
from parse import compile
import json

def req(url: str, data: dict, description: str):
    res = requests.post(url, headers={'Content-Type': "application/json; charset=utf-8"}, data=json.dumps(data))
    if res.status_code == 200:
        print(datetime.now().strftime('%Y-%m-%d-%H:%M:%S') + ' [INFO] : Send json to server - ', description)
        return res
    print(datetime.now().strftime('%Y-%m-%d-%H:%M:%S') + ' [ERROR] : HTTP/' + str(res.status_code))
    return res

class YarnWorker(Thread):
    __name: str # Thread name
    __user: User
    __url: str

    def __init__(self, name: str, user: User, url: str, metric, metric_name, metric_arg=None):
        super().__init__()
        self.__name = name
        self.__user = user
        self.__url = url
        self.__metric = metric
        self.__metric_name = metric_name
        self.__metric_arg = metric_arg

    def run(self):
        sended = None

        while True:
            # Get data from API
            try:
                data = self.__metric()[self.__metric_name]
            except:
                print(datetime.now().strftime('%Y-%m-%d-%H:%M:%S') + " [ERROR] : "+ self.__name +" - Cannot receive data from hadoop")
                return

            # Append email and datetime
            data['email'] = self.__user.email
            data['datetime'] = datetime.now().strftime('%Y-%m-%d-%H:%M:%S')

            # Send data
            data_res = req(self.__url, data, self.__metric_name)
            time.sleep(5)

class HdfsWorker(Thread):
    __name: str # Thread name
    __user: User
    __url: str

    def __init__(self, name: str, user: User, url: str):
        super().__init__()
        self.__name = name
        self.__user = user
        self.__url = url

    def run(self):
        sended = None

        while True:
            # Get data
            try:
                data = get_hdfs_usage()
            except:
                print(datetime.now().strftime('%Y-%m-%d-%H:%M:%S') + " [ERROR] : "+ self.__name +" - Cannot receive data from hadoop")
                return

            data['email'] = self.__user.email
            data['datetime'] = datetime.now().strftime('%Y-%m-%d-%H:%M:%S')

            # Send data
            data_res = req(self.__url, data, "Hdfs information")
            time.sleep(5)

def get_hdfs_usage():
    pattern = "Filesystem                  Size     Used     Available  Use%\n{} {} {} {} {}%\n"
    pattern = compile(pattern)
    log = subprocess.check_output(["hdfs", "dfs", "-df"], universal_newlines=True)
    result = pattern.parse(log)

    return {
        "size": int(result[1]),
        "used": int(result[2]),
        "available": int(result[3]),
        "usePercentage": int(result[4]),
    }