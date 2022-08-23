FROM python:3.8-slim-buster

RUN apt-get update && \
    apt-get install -y \
	libmagic1 \
	git

RUN git clone https://github.com/Stability-AI/stability-sdk.git

RUN cd stability-sdk && pip install install -r requirements.txt

RUN pip install stability-sdk

ENV W=512 \
    H=512 \
    PROMPT="A stunning house." \
    STABILITY_KEY="MY_API_KEY HERE VISIT https://beta.dreamstudio.ai/membership"

RUN mkdir -p /output
WORKDIR /output
CMD python3 /stability-sdk/src/stability_sdk/client.py -W $W -H $H $PROMPT
