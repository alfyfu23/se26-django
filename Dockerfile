# TODO Start: [Student] Complete Dockerfile
FROM python:3.11

ENV DEPLOY=1

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -i https://pypi-cache-sepi.app.secoder.net/simple -r requirements.txt

EXPOSE 80

CMD ["bash", "start.sh"]
# TODO End: [Student] Complete Dockerfile
