class Tarefa:
    def __init__(self, id, title, description, category_id, user_id, status="pendente"):
        self.id = id
        self.title = title
        self.description = description
        self.category_id = category_id
        self.user_id = user_id
        self.status = status