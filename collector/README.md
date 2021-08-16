# Mammoth : Collector

## 1. Overview
It is an API server that processes the data received from the Mammoth monitor and inserts the data into the time series database (Influx). \
In addition, it manages the login of the Mammoth monitor client and receives data from many monitors, \
so it is easily implemented for load balancing. \

## 2. Installation
__Requirements__ : 
    - docker>=19.03.0
    - docker-compose>=1.25.5

```
$ git clone https://github.com/ndo04343/container-based-hadoop-distributed-system-log-analyzer.git &&
mv container-based-hadoop-distributed-system-log-analyzer/collector . &&
rm -rf container-based-hadoop-distributed-system-log-analyzer/ &&
cd collector &&
docker-compose up -d
```

## 3. Usage
Sign up and get started on the Mammoth application. \
If you have not registered as a member of mammoth service, the program will not work.
```
$ python3 main.py [YOUR_EMAIL] [YOUR_PASSWORD]
======================================================================================================================
                                < Welcome to mammoth hadoop monitoring service >

Version : 1.0.0
Stable hadoop version : 2.7.7
Current mammoth Log collector server : http://slb-7695562.ncloudslb.com
Github : https://github.com/ndo04343/container-based-hadoop-distributed-system-log-analyzer/tree/main/monitor
======================================================================================================================
...
```

## 4. Environment
__Built with python>=3.6__
```
hadoop-yarn-rest-api==1.1.0
requests==2.18.4
parse==1.19.0
```

## 5. Directory structure
```
monitor
│  .gitignore
│  conf.py              # config file
│  main.py              # starting position
│  README.md        
│  requirements.txt     # env
└─src
        collector.py    # collector module
        main.py         # main module
        tools.py        # tools module
        user.py         # user module
        __init__.py
```