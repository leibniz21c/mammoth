from pydantic import BaseModel
        
class HdfsInfo(BaseModel):
    size: int
    used: int
    available: int
    usePercentage: int
    email: str
    datetime: str