FROM hersonpc/pyenv:latest

# Expondo portas
EXPOSE 8000 8501 8888

COPY main.py /app

ENTRYPOINT [ "python", "main.py" ]