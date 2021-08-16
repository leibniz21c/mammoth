from ast import parse
import json
from src.user import User
from src.tools import HdfsWorker, YarnWorker
from src.collector import CollectorHandler
from hadoop.yarn import Yarn
from conf import config
from datetime import datetime

import requests

def main(argv):
    print("""
======================================================================================================================
                                < Welcome to mammoth hadoop monitoring service >
            
Version : 1.0.0
Stable hadoop version : 2.7.7
Current mammoth Log collector server : {0}
Github : {1}
======================================================================================================================
    """.format(config['COLLECTOR_URL'], config['GITHUB']))

    # Arg check
    if len(argv) != 3:
        print("Usage : python3 " + argv[0] + "[YOUR_EMAIL] " + "[YOUR_PW]")
        return

    # Check email/pw
    response = requests.post(
        url=config['COLLECTOR_URL'] 
            + ":" 
            + str(config['COLLECTOR_PORT'])
            + config['COLLECTOR_USER_CONF'],
        json = {
            "email": argv[1],
            "password": argv[2]
        }
    )
    # 503 Server error
    if response.status_code == 503:
        print(datetime.now().strftime('%Y-%m-%d-%H:%M:%S') + ' [ERROR] : HTTP/' + str(response.status_code) + " There are not collector server now.")
        return

    # Error handling
    if response.content.decode('utf-8') == "Internal Server Error":
        print("[ERROR] : Internal Server Error!")
        return

    # Bytes to str(simple)    
    user = eval(json.loads(response.content.decode('utf-8')))
    
    try :
        # Getted Info
        user = User(
            email=user['email'],
            port={
                "50010" : user["port"]["50010"],
                "50020" : user["port"]["50020"],
                "50070" : user["port"]["50070"],
                "50075" : user["port"]["50075"],
                "50090" : user["port"]["50090"],
                "8020" : user["port"]["8020"],
                "9000" : user["port"]["9000"],
                "10020" : user["port"]["10020"],
                "19888" : user["port"]["19888"],
                "8030" : user["port"]["8030"],
                "8031" : user["port"]["8031"],
                "8032" : user["port"]["8032"],
                "8033" : user["port"]["8033"],
                "8040" : user["port"]["8040"],
                "8042" : user["port"]["8042"],
                "8088" : user["port"]["8088"]
            })
    except:
        print(datetime.now().strftime('%Y-%m-%d-%H:%M:%S') + ' [ERROR] : Account mismatch. Are you a member?')
        return

    collector_handler = CollectorHandler(
        url=config['COLLECTOR_URL'],
        port=config['COLLECTOR_PORT']
    )

    # yarn client
    yarn = Yarn(user.get_yarn_url(), 'json')

    # yarn : thread
    yarn_cluster_metrics_thread = YarnWorker(
        name="Yarn cluster metrics",
        user=user,
        url=collector_handler.get_yarn_cluster_metrics_url(),
        metric=yarn.cluster_metrics,
        metric_name='clusterMetrics'
    )
    yarn_cluster_applications_thread = YarnWorker(
        name="Yarn cluster applications",
        user=user,
        url=collector_handler.get_yarn_cluster_applications_url(),
        metric=yarn.cluster_applications,
        metric_name="apps"
    )
    yarn_cluster_appstatistics_thread = YarnWorker(
        name="Yarn cluster appstatistics",
        user=user,
        url=collector_handler.get_yarn_cluster_appstatistics_url(),
        metric=yarn.cluster_appstatistics,
        metric_name="appStatInfo"
    )
    hdfs_info_thread = HdfsWorker(
        name="HDFS information",
        user=user,
        url=collector_handler.get_hdfs_info_url(),
    )

    # threading start
    yarn_cluster_metrics_thread.start()
    yarn_cluster_applications_thread.start()
    yarn_cluster_appstatistics_thread.start()
    hdfs_info_thread.start()

    # threading join
    yarn_cluster_metrics_thread.join()
    yarn_cluster_applications_thread.join()
    yarn_cluster_appstatistics_thread.join()
    hdfs_info_thread.join()