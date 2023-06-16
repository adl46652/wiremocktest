FROM  wiremock/wiremock:2.35.0

ARG DEPLOYMENT_TYPE

COPY ./__files/$DEPLOYMENT_TYPE /home/wiremock/__files
COPY ./mappings/$DEPLOYMENT_TYPE /home/wiremock/mappings

# COPY ./__files /home/wiremock/__files
# COPY ./mappings /home/wiremock/mappings

EXPOSE 8080

