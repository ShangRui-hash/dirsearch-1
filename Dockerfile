FROM python:3.7-alpine


WORKDIR /root/
ADD . /root/

RUN apk add \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    libffi-dev

RUN pip install cryptography==2.8 \
    chardet \
    markupsafe \
    PySocks \
    urllib3 \
    certifi

ENTRYPOINT ["python3","/root/dirsearch.py"]
CMD ["--help"]
