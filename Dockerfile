FROM python:3.9

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements.txt file into the container
COPY requirements.txt /code/requirements.txt

# Install dependencies listed in requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the Python app (main.py) and HTML form (form.html) into the container
COPY main.py /code/main.py
COPY form.html /code/form.html

# Set the command to run the application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

