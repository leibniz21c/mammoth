from pydantic import BaseModel

class ClusterInfo(BaseModel):
    id: int
    startedOn: int
    state: str
    haState: str
    rmStateStoreName: str
    resourceManagerVersion: str
    resourceManagerBuildVersion: str
    resourceManagerVersionBuiltOn: str
    hadoopVersion: str
    hadoopBuildVersion: str
    hadoopVersionBuiltOn: str
    haZooKeeperConnectionState: str


    def __str__(self):
        return """
        cluster info -
        id: {0}
        startedOn: {1}
        state: {2}
        haState: {3}
        rmStateStoreName: {4}
        resourceManagerVersion: {5}
        resourceManagerBuildVersion: {6}
        resourceManagerVersionBuiltOn: {7}
        hadoopVersion: {8}
        hadoopBuildVersion: {9}
        hadoopVersionBuiltOn: {10}
        haZooKeeperConnectionState: {11}
        """.format(
                self.id, 
                self.startedOn,
                self.state,
                self.haState,
                self.rmStateStoreName,
                self.resourceManagerVersion,
                self.resourceManagerBuildVersion,
                self.resourceManagerVersionBuiltOn,
                self.hadoopVersion,
                self.hadoopBuildVersion,
                self.hadoopVersionBuiltOn,
                self.haZooKeeperConnectionState
            )
