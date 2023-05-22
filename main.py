from fastapi import FastAPI

app = FastAPI()

@app.get("/ejemplo")
def obtener_ejemplo():
    ejemplo = {"mensaje": "Hola, mundo!"}
    return ejemplo