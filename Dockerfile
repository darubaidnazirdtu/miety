FROM nginx:alpine

# Use custom nginx config and copy static sites
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY frontend /usr/share/nginx/html/
COPY backend /usr/share/nginx/html/backend/
COPY requirements.txt /usr/share/nginx/html/backend/
RUN pip install --no-cache-dir -r /usr/share/nginx/html/backend/requirements.txt

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
