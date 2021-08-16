# Mammoth : Collector

## 1. Overview
It is an API server that processes the data received from the Mammoth monitor and inserts the data into the time series database (Influx). \
In addition, it manages the login of the Mammoth monitor client and receives data from many monitors, \
so it is easily implemented for load balancing. \

## 2. Installation
1. Requirements : 
    - docker>=19.03.0
    - docker-compose>=1.25.5
2. Clone
```
$ git clone https://github.com/ndo04343/mammoth.git &&
mv mammoth/collector . &&
rm -rf mammoth/ &&
cd collector 
```
3. Modify config file : ```conf.py``` \
__Example__
```
config = {
    "MONGO_URL": "127.0.0.1",
    "MONGO_PORT": 27017,
    "MONGO_USER": "username",
    "MONGO_PW": "password",

    "INFLUX_HOST": "127.0.0.1",
    "INFLUX_PORT": 8086,
    "INFLUX_USER": "username",
    "INFLUX_PASSWORD": "password"
}
```
4. Run server
```
$ docker-compose up -d
Status: Downloaded newer image for leibniz21c/mammoth-collector:1.0.0
Creating mammoth-collector ... done
```

## 3. Directory structure
```
collector
│  .dockerignore                    # docker ignore
│  .env                             # env
│  .gitignore                       # git ignore
│  conf.py                          # Config file
│  docker-compose.yml               # docker compose file
│  README.md            
│  requirements.in                  # pip 
│  requirements.txt                 # pip
│
└─app
    │  main.py                      
    │  __init__.py
    │
    ├─apis                          # apis main modules
    │  ├─hdfs_collector
    │  │      mainmod.py
    │  │      __init__.py
    │  │
    │  ├─user_conf
    │  │      mainmod.py
    │  │      __init__.py
    │  │
    │  └─yarn_collector
    │          mainmod.py
    │          __init__.py
    │
    ├─core                          # core
    │      auth.py
    │      config.py
    │      __init__.py
    │
    ├─models                        # ORM models
    │  │  influx_client.py
    │  │  __init__.py
    │  │
    │  ├─hdfs
    │  │      hdfs_info.py
    │  │      __init__.py
    │  │
    │  ├─user
    │  │      user_conf.py
    │  │      __init__.py
    │  │
    │  └─yarn
    │          clusterapplications.py
    │          clusterappstatistics.py
    │          clustermetrics.py
    │          __init__.py
    │
    └─routes                         # Routes
            views.py
```
