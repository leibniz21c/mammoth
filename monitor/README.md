# Mammoth Monitor

## 1. Overview
In the environment where the Hadoop system is installed, \
it monitors the Hadoop system and sends log data to the collector server.

## 2. Installation
On your Linux system with Hadoop installed,

```
$ git clone https://github.com/ndo04343/container-based-hadoop-distributed-system-log-analyzer.git &&
    mv container-based-hadoop-distributed-system-log-analyzer/monitor . &&
    rm -rf container-based-hadoop-distributed-system-log-analyzer/ &&
    cd monitor &&
    pip3 install -r requirements.txt 
```

## 3. Start
Sign up and get started on the Mammoth application. \
If you have not registered as a member of mammoth service, the program will not work.
```
$ python3 main.py [YOUR_EMAIL] [YOUR_PASSWORD]
```