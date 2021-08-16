from __future__ import annotations

from app.models.yarn.clustermetrics import ClusterMetrics
from app.models.yarn.clusterapplications import ClusterApplications
from app.models.yarn.clusterappstatistics import ClusterAppstatistics
from app.models.influx_client import influx_client
from datetime import datetime
import time

def main_func_clustermetrics(cluster_metrics: ClusterMetrics) -> bool:
    if cluster_metrics:
        # Model to dictionary
        email = cluster_metrics.email
        dicted_cluster_metrics = cluster_metrics.__dict__
        
        # remove email field
        del dicted_cluster_metrics['email']
        data = [
            {
                "measurement": "yarnClusterMetrics",
                "tags": {
                    "datetime": cluster_metrics.datetime
                },
                "fields": dicted_cluster_metrics
            }
        ]
        # Write to influx
        influx_client.write_points(data, database=email)

        return True
    return False


## Uncompleted
def main_func_clusterapplications(cluster_applications: ClusterApplications) -> bool:
    if cluster_applications:
        # Model to dictionary
        email = cluster_applications.email

        apps = cluster_applications.app
        data = []

        for app in apps:
            app['startedTime'] = datetime.fromtimestamp(int(app['startedTime']/1000)).isoformat()
            app['finishedTime'] = datetime.fromtimestamp(int(app['finishedTime']/1000)).isoformat()
            data.append({
                "measurement": "yarnClusterApplications",
                "tags": {
                    "id": app['id'],
                },
                "time": app['startedTime'],
                "fields": app
            })
        
        # Write to influx
        influx_client.write_points(data, database=email)

        return True
    return False

## Uncompleted    
def main_func_clusterappstatistics(cluster_appstatistics: ClusterAppstatistics) -> bool:
    if cluster_appstatistics:
        email = cluster_appstatistics.email

        # Model to dictionary
        dicted_cluster_appstatistics = {
            "ACCEPTED": 0,
            "SUBMITTED": 0,
            "FINISHED": 0,
            "KILLED": 0,
            "NEW_SAVING": 0,
            "RUNNING": 0,
            "NEW": 0,
            "FAILED": 0
        }
        for item in cluster_appstatistics.statItem:
            if item["state"] == "ACCEPTED":
                dicted_cluster_appstatistics["ACCEPTED"] = item["count"]
            elif item["state"] == "SUBMITTED":
                dicted_cluster_appstatistics["SUBMITTED"] = item["count"]
            elif item["state"] == "FINISHED":
                dicted_cluster_appstatistics["FINISHED"] = item["count"]
            elif item["state"] == "KILLED":
                dicted_cluster_appstatistics["KILLED"] = item["count"]
            elif item["state"] == "NEW_SAVING":
                dicted_cluster_appstatistics["NEW_SAVING"] = item["count"]
            elif item["state"] == "RUNNING":
                dicted_cluster_appstatistics["RUNNING"] = item["count"]
            elif item["state"] == "NEW":
                dicted_cluster_appstatistics["NEW"] = item["count"]
            elif item["state"] == "FAILED":
                dicted_cluster_appstatistics["FAILED"] = item["count"]
                    
        data = [
            {
                "measurement": "yarnClusterAppStatistics",
                "tags": {
                    "datetime": cluster_appstatistics.datetime
                },
                "fields": dicted_cluster_appstatistics
            }
        ]
        # Write to influx
        influx_client.write_points(data, database=email)
        return True
    return False