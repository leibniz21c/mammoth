class CollectorHandler:
    __collector: str

    # yarn api url
    __yarn_cluster_info: str
    __yarn_cluster_metrics: str
    __yarn_cluster_applications: str
    __yarn_cluster_appstatistics: str
    __yarn_cluster_nodes: str

    # hdfs api url
    __hdfs_info_nodes: str

    def __init__(self, url, port):
        self.__collector = url + ":" + str(port) + "/"
        self.__yarn_cluster_info = self.__collector + "yarn/clusterinfo" 
        self.__yarn_cluster_metrics = self.__collector + "yarn/clustermetrics"
        self.__yarn_cluster_applications = self.__collector + "yarn/clusterapplications"
        self.__yarn_cluster_appstatistics = self.__collector + "yarn/clusterappstatistics"
        self.__yarn_cluster_nodes = self.__collector + "yarn/clusternodes"
        self.__hdfs_info_nodes = self.__collector + "hdfs/info"

    # yarn url getter
    def get_yarn_cluster_info_url(self):
        return self.__yarn_cluster_info

    def get_yarn_cluster_metrics_url(self):
        return self.__yarn_cluster_metrics

    def get_yarn_cluster_applications_url(self):
        return self.__yarn_cluster_applications

    def get_yarn_cluster_appstatistics_url(self):
        return self.__yarn_cluster_appstatistics

    def get_yarn_cluster_nodes_url(self):
        return self.__yarn_cluster_nodes

    # Hdfs url getter
    def get_hdfs_info_url(self):
        return self.__hdfs_info_nodes