from influxdb import InfluxDBClient
from conf import config

influx_client = InfluxDBClient(
    host=config['INFLUX_HOST'],
    port=config['INFLUX_PORT'],
    username=config['INFLUX_USER'],
    password=config['INFLUX_PASSWORD']
)