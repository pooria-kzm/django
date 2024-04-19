FROM docker.mci.dev/python:3.10-slim

# Allows docker to cache installed dependencies between builds
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Mounts the application code to the image
COPY . code
WORKDIR /code

# runs the production server
ENTRYPOINT ["python", "my_app/manage.py"]
CMD ["runserver", "0.0.0.0:8001"]