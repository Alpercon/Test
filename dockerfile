# Selecciona una imagen base
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
# Establece el directorio de trabajo en /app
WORKDIR /app
# Copia el archivo requirements.txt al contenedor
COPY requirements.txt .
# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt
# Copia el resto de los archivos al contenedor
COPY . .
# Expone el puerto 80 (puerto predeterminado para FastAPI)
EXPOSE 80
# Ejecuta el servidor de la aplicación
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
