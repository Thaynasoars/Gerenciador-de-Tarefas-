from datetime import datetime

class Tarefa:
    def __init__(self, id, title, description, category_id, user_id, status="pendente"):
        self.id = id
        self.title = title
        self.description = description
        self.category_id = category_id
        self.user_id = user_id
        self.status = status

    def tipo(self):
        return "Simples"

    def status_detalhado(self):
        return self.status


class TarefaComPrazo(Tarefa):
    def __init__(self, id, title, description, category_id, user_id, prazo, status="pendente"):
        super().__init__(id, title, description, category_id, user_id, status)
        self.prazo = prazo  # formato: dd/mm/yyyy

    def tipo(self):
        return "Com Prazo"

    def status_detalhado(self):
        try:
            prazo_data = datetime.strptime(self.prazo, "%d/%m/%Y").date()
            hoje = datetime.today().date()
            if hoje > prazo_data:
                return f"{self.status.upper()} (vencida em {self.prazo})"
            return f"{self.status} (vence em {self.prazo})"
        except ValueError:
            return f"{self.status} (prazo inválido)"
