import json
import os
from models.user import User

USERS_FILE = 'data/users.json'

def load_users():
    if not os.path.exists(USERS_FILE):
        return []
    with open(USERS_FILE, 'r', encoding='utf-8') as f:
        return [User.from_dict(u) for u in json.load(f)]

def save_users(users):
    with open(USERS_FILE, 'w', encoding='utf-8') as f:
        json.dump([u.to_dict() for u in users], f, indent=4, ensure_ascii=False)

def get_all():
    return load_users()

def add_user(user):
    users = load_users()
    users.append(user)
    save_users(users)

def find_by_email(email):
    users = load_users()
    for u in users:
        if u.email == email:
            return u
    return None