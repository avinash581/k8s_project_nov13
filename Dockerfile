FROM python:3.9 
WORKDIR /code
COPY /root/k8s_project_nov13/requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --
upgrade -r /code/requirements.txt
COPY /root/k8s_project_nov13/main.py /code/main.py
COPY /root/k8s_project_nov13/form.html /code/form.html
CMD ["uvicorn", "main:app", "--host", 
"0.0.0.0", "--port", "80"]

