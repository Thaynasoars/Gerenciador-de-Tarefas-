import os
import json
from models.categoria import Categoria

DATA_PATH = "data/categorias.json"

class CategoriaService:
    def __init__(self):
        # Garante que o arquivo existe
        if not os.path.exists(DATA_PATH):
            with open(DATA_PATH, "w", encoding="utf-8") as f:
                json.dump([], f)

    def get_all(self):
        with open(DATA_PATH, "r", encoding="utf-8") as f:
            return [Categoria(**cat) for cat in json.load(f)]

    def adicionar_categoria(self, categoria):
        categorias = self.get_all()
        categorias.append(categoria)
        with open(DATA_PATH, "w", encoding="utf-8") as f:
            json.dump([cat.__dict__ for cat in categorias], f, indent=4, ensure_ascii=False)

categoria_service = CategoriaService()