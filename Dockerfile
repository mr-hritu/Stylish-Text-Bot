FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install -U -r requirements.txt
RUN pip3 install -r requirements.txt
COPY bot.py .
CMD ["python3", "bot.py"]
