# Simple Flask App

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- W projekcie wykorzystamy virtual environment, dla utworzenia hermetycznego środowisko dla aplikacji:

  ```
  # tworzymy hermetyczne środowisko dla bibliotek aplikacji:
  $ python -m venv .venv

  # aktywowanie hermetycznego środowiska
  $ source .venv/Source/activate
  $ pip install -r requirements.txt
  $ pip install -r test_requirements.txt

  # zobacz
  $ pip list
  ```

  Sprawdź: [tutorial venv](https://docs.python.org/3/tutorial/venv.html) oraz [biblioteki flask](http://flask.pocoo.org).

- Uruchamianie applikacji:

  ```
  # jako zwykły program
  $ python main.py

  # albo:
  $ PYTHONPATH=. FLASK_APP=hello_world flask run
  ```

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ```
  $ PYTHONPATH=. py.test
  $ PYTHONPATH=. py.test --verbose -s
  ```

- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ```
  # deaktywacja
  $ deactivate
  ```

  ```
  ...

  # aktywacja 
  $ source .venv/Source/activate
  ```

- Integracja z TravisCI:

  ```
  # miejsce na twoje notatki
   Naprawiono błąd w formacie JSON: Poprzednia wersja zwracała nieprawidłowy format (brak cudzysłowu w kluczu mgs). Obecna wersja generuje poprawny obiekt JSON zgodny ze standardem.
Problem: Aplikacja zwracała niepoprawny ciąg znaków: { "imie":"Michal", "mgs":Hello World!"} – brakowało cudzysłowu otwierającego wartość dla klucza mgs. Zmieniono sposób składania ciągu w pliku formater.py na "mgs":"' + msg + '"
  ```

# Pomocnicze

## Ubuntu

- Instalacja dockera: [dockerce howto](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

## Centos

- Instalacja docker-a:

  ```
  $ yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

  $ yum install -y yum-utils

  $ yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

  $ yum makecache fast
  $ yum install -y docker-ce
  $ systemctl start docker
  ```
## Docker Hub
Obraz projektu jest dostępny pod adresem: 
https://hub.docker.com/r/michalgorecki10/hello-world-printer
![Zrzut ekranu z Docker Hub](docker_hub_screenshot.png)
