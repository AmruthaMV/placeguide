FROM python:3
COPY . /place
WORKDIR /place

EXPOSE 5000
ENV FLASK_APP=place.py
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "flask" ]
CMD [ "run","--host","0.0.0.0" ]