from __future__ import annotations

from app.models.hdfs.hdfs_info import HdfsInfo
from app.models.influx_client import influx_client
from conf import config

def main_func_info(hdfs_info: HdfsInfo) -> bool:
    if hdfs_info:
        # Model to dictionary
        email = hdfs_info.email
        dt = hdfs_info.datetime
        dicted_hdfs_info = hdfs_info.__dict__
        
        # remove email field
        del dicted_hdfs_info['email']
        data = [
            {
                "measurement": "hdfsInfo",
                "tags": {
                    "datetime": dt
                },
                "fields": dicted_hdfs_info
            }
        ]
        # Write to influx
        influx_client.write_points(data, database=email)

        return True
    return False