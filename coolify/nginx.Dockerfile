FROM nginx:alpine
COPY nginx/coolify.conf /etc/nginx/conf.d/default.conf
