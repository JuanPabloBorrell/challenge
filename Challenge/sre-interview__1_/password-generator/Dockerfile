# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el contenido actual del directorio al contenedor en /app
COPY . .

# Instala las dependencias necesarias
RUN pip install Flask

# Expone el puerto 5000 para que Flask pueda ser accedido desde fuera del contenedor
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python3", "main.py"]
