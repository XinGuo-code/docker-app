FROM python:2.7-slim

WORKDIR /app

COPY . /app

RUN pip install --trusted-host pypi.python.org -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

EXPOSE 80

ENV NAME World

CMD ["python", "app.py"]
