FROM python:3.7

ARG VERSION

LABEL org.label-schema.version=$VERSION

# folder trong docker đặt tên thoải mái
COPY ./requirements.txt /testapp/requirements.txt

WORKDIR /testapp

RUN pip install -r requirements.txt

COPY webapp/* /testapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
