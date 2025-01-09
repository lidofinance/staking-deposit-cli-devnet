FROM python:alpine3.19

WORKDIR /app

COPY requirements.txt setup.py ./
COPY staking_deposit ./staking_deposit

RUN apk add --update gcc libc-dev linux-headers

RUN pip3 install -r requirements.txt
RUN python3 setup.py install

# Adding a wrapper script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

ARG cli_command

ENTRYPOINT ["/app/entrypoint.sh"]
CMD [ $cli_command ]
