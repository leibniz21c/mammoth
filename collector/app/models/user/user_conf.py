from pydantic import BaseModel
        
class UserConf(BaseModel):
    email: str
    password: str