# Pinned: the floating python:3 tag moved to a release that removed ast.Str,
# which the pinned werkzeug 2.0.3 still uses, so the API crashed at startup
FROM python:3.11-slim

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV FLASK_APP=server.py

ENTRYPOINT [ "flask" ]
CMD ["run", "--host", "0.0.0.0"]
