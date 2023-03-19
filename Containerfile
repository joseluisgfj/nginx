# Definimos la imagen que deseamos usar, en este caso docker.io
FROM docker.io/nginx:latest

# Definimos el creador del container
MAINTAINER Jose Luis G.F.

# Instalamos el servicio NGINX
RUN dnf -y install nginx && dnf clean all

# Copiamos en nuestro contenedor los diferentes archivos de configuración
COPY index.html /usr/share/nginx/html/
COPY nginx.conf /etc/

# Exponemos el puerto 8080
EXPOSE 8080
CMD ["/usr/sbin/nginx","-c","/etc/nginx.conf"]
