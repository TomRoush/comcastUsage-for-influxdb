FROM tomroush/python-selenium-firefox-docker:latest

WORKDIR /src

COPY . /src
RUN pip3 install --no-cache-dir -r requirements.txt

CMD ["python3", "-u", "/src/InfluxdbComcast.py"]
