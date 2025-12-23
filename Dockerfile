FROM python:3

ARG APP_DIR=/usr/src/hello_world_printer

WORKDIR /tmp
# Dodajemy plik requirements osobno, aby przyspieszyć budowanie
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p $APP_DIR
# Kopiujemy resztę plików
ADD hello_world/ $APP_DIR/hello_world/
ADD main.py $APP_DIR

# Zmieniamy format CMD na JSON (rozwiązuje błąd JSONArgsRecommended)
CMD ["sh", "-c", "PYTHONPATH=$PYTHONPATH:/usr/src/hello_world_printer FLASK_APP=hello_world flask run --host=0.0.0.0"]