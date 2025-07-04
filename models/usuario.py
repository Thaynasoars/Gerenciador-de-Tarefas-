class Usuario:
    def __init__(self, id, nome, email, senha):
        self.id = id
        self.nome = nome
        self.email = email
        self.senha = senha

    def to_dict(self):
        return {
            "id": self.id,
            "nome": self.nome,
            "email": self.email,
            "senha": self.senha
        }

    @staticmethod
    def from_dict(data):
        return Usuario(
            id=data.get("id"),
            nome=data.get("nome"),
            email=data.get("email"),
            senha=data.get("senha")
        )