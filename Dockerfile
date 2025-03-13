FROM mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --upgrade pip setuptools setuptools-scm
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install --upgrade setuptools wheel

COPY . .

CMD ["bash", "start.sh"]
