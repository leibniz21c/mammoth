from __future__ import annotations

from app.models.yarn.clusterinfo import ClusterInfo

def main_func_clusterinfo(cluster_info: ClusterInfo) -> str:
    # Need to try/catch
    print(cluster_info)
    return "SUCCESS"
