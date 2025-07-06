import os
import json
from models.tarefa import Tarefa, TarefaComPrazo

DATA_PATH = "data/tarefas.json"

class TarefaService:
    def get_all(self):
        if not os.path.exists(DATA_PATH):
            return []
        with open(DATA_PATH, "r", encoding="utf-8") as f:
            tarefas_json = json.load(f)
            tarefas = []
            for t in tarefas_json:
                if "prazo" in t:
                    tarefas.append(TarefaComPrazo(**t))
                else:
                    tarefas.append(Tarefa(**t))
            return tarefas

    def add_tarefa(self, tarefa: Tarefa):
        tarefas = self.get_all()
        tarefas.append(tarefa)
        with open(DATA_PATH, "w", encoding="utf-8") as f:
            json.dump([t.__dict__ for t in tarefas], f, indent=4, ensure_ascii=False)

tarefa_service = TarefaService()

def delete_tarefa(self, tarefa_id):
    tarefas = self.get_all()
    tarefas = [t for t in tarefas if t.id != tarefa_id]
    with open(DATA_PATH, "w", encoding="utf-8") as f:
        json.dump([t.__dict__ for t in tarefas], f, indent=4, ensure_ascii=False)
