from __future__ import annotations

from app.models.user.user_conf import UserConf
from bcrypt import checkpw
from pymongo import MongoClient
from conf import config
import json

def main_func_userconf(user_conf: UserConf) -> str:    

    # Connect with mongo
    mongo_client = MongoClient(
        host=config['MONGO_URL'], 
        port=config['MONGO_PORT']
    )

    # Check email/pw
    userdata = mongo_client.test.find.find_one({"email": user_conf.email})

    if userdata != None:
        if checkpw(user_conf.password.encode('utf-8'), userdata['password'].encode('utf-8')):
            del userdata['_id']
            del userdata['password']
            return json.dumps(userdata)

    return json.dumps({"msg": "Access denied"})