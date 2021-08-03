from __future__ import annotations

from fastapi import APIRouter, Depends

from app.apis.yarn_collector.mainmod import main_func_clusterinfo as main_func_yarn_clusterinfo

# from app.core.auth import get_current_user

# model
from app.models.yarn.clusterinfo import ClusterInfo

router = APIRouter()

@router.post("/yarn/clusterinfo", tags=["yarn_clusterinfo"])
async def view_yarn_clusterinfo(
    cluster_info: ClusterInfo,
    # auth: Depends = Depends(get_current_user),
) -> str:
    return main_func_yarn_clusterinfo(cluster_info)
