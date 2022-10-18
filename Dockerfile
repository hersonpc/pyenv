FROM hersonpc/pyenv:latest

# Expondo portas
EXPOSE 8000 8501 8888

COPY *.py /app
COPY Makefile /app

# ENV TINI_VERSION v0.6.0
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
# RUN chmod +x /usr/bin/tini
# ENTRYPOINT ["/usr/bin/tini", "--"]

# EXPOSE 8888
# CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]

# ENTRYPOINT [ "python", "main.py" ]
# ENTRYPOINT ["streamlit", "run", "streamlit_app.py", "--server.port=8501", "--server.address=0.0.0.0"]
# ENTRYPOINT [ "/usr/local/bin/jupyter", "lab", "--allow-root", "--port=8888" ]

CMD [ "ln", "-s", "/root/.local/share/jupyter/runtime/jupyter_cookie_secret", "/app/jupyter_cookie_secret" ]

ENTRYPOINT ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]