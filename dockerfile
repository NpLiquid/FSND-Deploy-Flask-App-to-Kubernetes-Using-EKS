FROM python:stretch

#Copy all the files in the new workspace
COPY . /aDockerProjectFold

#Create the directory for the project
WORKDIR aDockerProjectFold

#Install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

#execute the main.py
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]