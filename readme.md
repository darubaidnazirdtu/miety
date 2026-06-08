Hi Meity

**Docker**

Build the Docker image:

```bash
docker build -t testproject .
```

Run the container (maps port 80 in container to 8080 on host):

```bash
docker run --rm -p 8080:80 testproject
```

Open http://localhost:8080 for the frontend and http://localhost:8080/backend for the backend.