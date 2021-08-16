<img src="./imgs/readme_logo_mammoth.png" width="100%" style="display: block; margin-left: auto; margin-right: auto;"></img>

## 0. Project Name
> Container based hadoop distributed system log analyzer

## 1. Overview
Mammoth is a __container based hadoop distributed system log analyzer__. \
It monitors the Hadoop system as a whole and plays a role in easily delivering meaningful data to users. 

<br>

> Manage your Hadoop system with ease!

[ usage image.1 ]

> Do not worry and use it in any OS!

[ usage image.2 ]

> Easy installation!

[ usage image.3 ]

## 2. Features

1. Hadoop Overview
    - Status monitoring of all nodes
    - Disk Usage/Quota monitoring with visualiztion
    - vCores/Memory monitoring
    - Status monitoring of all applications

2. Resources(Yarn monitoring)
    - vCores monitoring with graph visualization
    - Memory monitoring with graph visualization

3. HDFS(Hadoop File System monitoring)
    - Disk quota monitoring
    - Disk usage monitoring
    - Disk status monitoring with graph visualization
    - File browsing service
    
4. Applications(MapReduce applications monitoring)
    - Status monitoring of all applications
    - Detailed application information monitoring

## 3. Architecture

[ architecture image(modified) ]

## 4. Frameworks
1. __Mammoth monitor__ 

<img src="./pictures/logo_python.png" height="50" style="display: block; margin-left: auto; margin-right: auto;"></img> 

> Python is installed on most systems these days.

[Here is README.md of mammoth monitor!](https://github.com/ndo04343/mammoth/tree/main/monitor)

2. __Mammoth collector__ 

<img src="./pictures/logo_fastapi.png" height="50" style="display: block; margin-left: auto; margin-right: auto;"></img> 
> Very high performance, on par with NodeJS and Go (thanks to Starlette and Pydantic).

[Here is README.md of mammoth collector!](https://github.com/ndo04343/mammoth/tree/main/collector)

## 5. Installation(General user)

1. Download the __Mammoth__ and register as a member.
    - Windows, OSX, Linux, or iPad, you can use this app anywhere you can think of.
2. Install __mammoth monitor__ in your hadoop system.
    - [Mammoth monitor installation guide](https://github.com/ndo04343/mammoth/tree/main/monitor)
3. Run __Mammoth monitor__  

## 6. Installation(from server to client)

1. Download the __Mammoth__ and register as a member.
    - Windows, OSX, Linux, or iPad, you can use this app anywhere you can think of.
2. Install __mammoth monitor__ in your hadoop system.
    - [Mammoth monitor installation guide](https://github.com/ndo04343/mammoth/tree/main/monitor)
3. Install __mammoth collector__ in your own server.
4. Install __influxdb__ and __mongodb__ in your own server.
    - [Databases installation guide](https://github.com/ndo04343/mammoth/tree/main/db)

5. Change ```conf.py``` in your collector
6. Change ```conf.py``` in your monitor

## 7. Pages

[ pages ]

## 8. Mammoth service server status

1. Collector(Load balanced)
    - mammoth-collector1 :
        - CPU : 4 cores
        - Memory : 8GB
    - mammoth-collector2 :
        - CPU : 4 cores
        - Memory : 8GB
    - mammoth-collector3 :
        - CPU : 4 cores
        - Memory : 8GB        
    - mammoth-collector4 :
        - CPU : 4 cores
        - Memory : 8GB
    - mammoth-collector5 :
        - CPU : 4 cores
        - Memory : 8GB

2. InfluxDB
    - CPU : 8 cores
    - Memory : 64GB

2. InfluxDB
    - CPU : 4 cores
    - Memory : 32GB


<br><br><br><br><br><br><br><br><br><br><br>
### __Sponsed by__  

<img src="./pictures/logo_mantech.png" height="40"></img> <img src="./pictures/logo_navercloud.png" height="40"></img> 
