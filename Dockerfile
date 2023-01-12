FROM python:3.10-slim

WORKDIR /code

COPY requirements.txt requirements.txt
#RUN apk add --no-cache gcc musl-dev linux-headers
#RUN 
RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]
