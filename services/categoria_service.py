class CategoriaService:
    def __init__(self):
        self.categorias = []

    def get_all(self):
        return self.categorias

    def adicionar_categoria(self, categoria):
        self.categorias.append(categoria)

categoria_service = CategoriaService()