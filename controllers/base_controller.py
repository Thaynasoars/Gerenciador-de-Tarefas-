from bottle import redirect as bottle_redirect, HTTPResponse

class BaseController:
    # ... outros métodos ...

    def redirect(self, url):
        try:
            return bottle_redirect(url)
        except HTTPResponse as e:
            raise e
        except Exception as ex:
            print(f"Erro ao redirecionar para {url}: {ex}")
            raise ex