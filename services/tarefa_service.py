import os
import json
from models.tarefa import Tarefa

DATA_PATH = "data/tarefas.json"

class TarefaService:
    def get_all(self):
        if not os.path.exists(DATA_PATH):
            return []
        with open(DATA_PATH, "r", encoding="utf-8") as f:
            return [Tarefa(**task) for task in json.load(f)]

    def add_tarefa(self, tarefa: Tarefa):
        tarefas = self.get_all()
        tarefas.append(tarefa)
        with open(DATA_PATH, "w", encoding="utf-8") as f:
            json.dump([t.__dict__ for t in tarefas], f, indent=4, ensure_ascii=False)

tarefa_service = TarefaService()