from pydantic import BaseModel

class ClusterMetrics(BaseModel):
    appsSubmitted: int
    appsCompleted: int
    appsPending: int
    appsRunning: int
    appsFailed: int
    appsKilled: int
    reservedMB: int
    availableMB: int
    allocatedMB: int
    reservedVirtualCores: int
    availableVirtualCores: int
    allocatedVirtualCores: int
    containersAllocated: int
    containersReserved: int
    containersPending: int
    totalMB: int
    totalVirtualCores: int
    totalNodes: int
    lostNodes: int
    unhealthyNodes: int
    decommissionedNodes: int
    rebootedNodes: int
    activeNodes: int
    email: str
    datetime: str
