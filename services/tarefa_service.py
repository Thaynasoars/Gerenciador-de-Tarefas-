from models.categoria import Categoria

DATA_PATH = "data/categories.json"

def get_all():
    if not os.path.exists(DATA_PATH):
        return []
    with open(DATA_PATH, "r", encoding="utf-8") as f:
        # Converte cada dicionário em uma instância de Categoria
        return [Categoria(**cat) for cat in json.load(f)]

def add_category(category: Categoria):
    categories = get_all()
    categories.append(category)
    # Salva como dicionário
    with open(DATA_PATH, "w", encoding="utf-8") as f:
        json.dump([cat.__dict__ for cat in categories], f, indent=4, ensure_ascii=False)

