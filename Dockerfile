FROM python:3.8
WORKDIR /app
RUN pip install pipenv
ENV PIPENV_VENV_IN_PROJECT=true 
COPY Pipfile Pipfile.lock  /app/
RUN pipenv lock -r > requirements.txt
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "uvicorn", "src.server:app" , "--host", "0.0.0.0", "--port", "8080"]