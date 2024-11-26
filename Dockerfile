FROM python:3.11.3-bullseye
WORKDIR /work
ENV STOCK='GOOGL'
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["sh", "-c", "python3 yfinance_test.py ${STOCK}"]
