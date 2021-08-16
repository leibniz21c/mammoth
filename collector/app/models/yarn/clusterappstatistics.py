from pydantic import BaseModel
from typing import List, Any

class StatItem(BaseModel): 
    state: str
    type: str
    count: int

class ClusterAppstatistics(BaseModel):
    statItem: List[StatItem]
    email: str
    datetime: str

    def __init__(self, **data: Any):
        super().__init__(**data)
        self.__dict__['statItem'] = [dict(item) for item in self.statItem]

"""
{
    'statItem': [
        {
            'state': 'ACCEPTED', 
            'type': '*', 
            'count': 0
        }, 
        {'state': 'SUBMITTED', 'type': '*', 'count': 0}, {'state': 'FINISHED', 'type': '*', 'count': 0}, {'state': 'KILLED', 'type': '*', 'count': 0}, {'state': 'NEW_SAVING', 'type': '*', 'count': 0}, {'state': 'RUNNING', 'type': '*', 'count': 0}, {'state': 'NEW', 'type': '*', 'count': 0}, {'state': 'FAILED', 'type': '*', 'count': 3}
    ], 
    'email': 'leibniz21c@gmail.com', 
    'datetime': '2021-08-14-19:53:22'
    }
    """