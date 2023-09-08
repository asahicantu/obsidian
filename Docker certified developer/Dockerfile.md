Image layers

```yaml
FROM python
RUN pip install flask
WORKDIR /app
COPY . .
CMD python app.py

```

```bash
docker build
```

