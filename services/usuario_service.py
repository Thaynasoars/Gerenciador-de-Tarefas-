import json
import os
from models.usuario import Usuario

USUARIOS_FILE = 'data/usuarios.json'

def carregar_usuarios():
    if not os.path.exists(USUARIOS_FILE):
        return []
    with open(USUARIOS_FILE, 'r', encoding='utf-8') as f:
        return [Usuario.from_dict(u) for u in json.load(f)]

def salvar_usuarios(usuarios):
    with open(USUARIOS_FILE, 'w', encoding='utf-8') as f:
        json.dump([u.to_dict() for u in usuarios], f, indent=4, ensure_ascii=False)

def get_all():
    return carregar_usuarios()

def adicionar_usuario(usuario):
    usuarios = carregar_usuarios()
    usuarios.append(usuario)
    salvar_usuarios(usuarios)

def find_by_email(email):
    usuarios = carregar_usuarios()
    for u in usuarios:
        if u.email == email:
            return u
    return None

# Para facilitar o import, crie a instância:
class UsuarioService:
    get_all = staticmethod(get_all)
    adicionar_usuario = staticmethod(adicionar_usuario)
    find_by_email = staticmethod(find_by_email)

usuario_service = UsuarioService()