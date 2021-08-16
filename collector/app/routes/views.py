from __future__ import annotations

from fastapi import APIRouter

# controller
from app.apis.user_conf.mainmod import main_func_userconf
from app.apis.yarn_collector.mainmod import main_func_clustermetrics as main_func_yarn_clustermetrics
from app.apis.yarn_collector.mainmod import main_func_clusterapplications as main_func_yarn_clusterapplications
from app.apis.yarn_collector.mainmod import main_func_clusterappstatistics as main_func_yarn_clusterappstatistics
from app.apis.hdfs_collector.mainmod import main_func_info as main_func_hdfs_info

# models
from app.models.user.user_conf import UserConf
from app.models.yarn.clustermetrics import ClusterMetrics
from app.models.yarn.clusterapplications import ClusterApplications
from app.models.yarn.clusterappstatistics import ClusterAppstatistics
from app.models.hdfs.hdfs_info import HdfsInfo

# Router
router = APIRouter()

# posts
@router.post("/userconf", tags=["user_conf"])
async def view_userconf(user_conf: UserConf):
    return main_func_userconf(user_conf)

@router.post("/yarn/clustermetrics", tags=["yarn_clustermetrics"])
async def view_yarn_clustermetrics(
    cluster_metrics: ClusterMetrics,
    # auth: Depends = Depends(get_current_user),
) -> bool:
    return main_func_yarn_clustermetrics(cluster_metrics)

@router.post("/yarn/clusterapplications", tags=["yarn_clusterapplications"])
async def view_yarn_clusterapplications(
    cluster_applications: ClusterApplications,
    # auth: Depends = Depends(get_current_user),
) -> bool:
    return main_func_yarn_clusterapplications(cluster_applications)

@router.post("/yarn/clusterappstatistics", tags=["yarn_clusterappstatistics"])
async def view_yarn_clusterappstatistics(
    cluster_appstatistics: ClusterAppstatistics,
    # auth: Depends = Depends(get_current_user),
) -> bool:
    return main_func_yarn_clusterappstatistics(cluster_appstatistics)

@router.post("/hdfs/info", tags=["hdfs_info"])
async def view_hdfs_info(
    hdfs_info: HdfsInfo
) -> bool:
    return main_func_hdfs_info(hdfs_info)

