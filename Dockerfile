FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["streamlit", "run", "web-todo.py", "--server.port=8080", "--server.address=0.0.0.0"]
