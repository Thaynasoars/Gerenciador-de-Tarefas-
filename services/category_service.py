class CategoryService:
    def __init__(self):
        self.categories = []

    def get_all(self):
        return self.categories

    def add_category(self, category):
        self.categories.append(category)

category_service = CategoryService()