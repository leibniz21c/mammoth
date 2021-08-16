from pydantic import BaseModel
from typing import Any, List
        
class AppList(BaseModel):
    id: str
    user: str
    name: str
    queue: str
    state: str
    finalStatus: str
    progress: float
    trackingUI: str
    trackingUrl: str
    diagnostics: str
    clusterId: int
    applicationType: str
    applicationTags: str
    startedTime: int
    finishedTime: int
    elapsedTime:  int
    amContainerLogs: str
    amHostHttpAddress: str
    allocatedMB:  int
    allocatedVCores: int
    runningContainers: int
    memorySeconds: int
    vcoreSeconds: int
    preemptedResourceMB: int
    preemptedResourceVCores: int
    numNonAMContainerPreempted: int
    numAMContainerPreempted: int


class ClusterApplications(BaseModel):
    app: List[AppList]
    email: str
    datetime: str

    def __init__(self, **data: Any):
        super().__init__(**data)
        self.__dict__['app'] = [dict(item) for item in self.app]