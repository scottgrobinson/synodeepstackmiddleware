FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir -p /app/tmp
COPY run.py /run.py
CMD ["python", "/run.py"]
RUN pip install requests loguru pillow