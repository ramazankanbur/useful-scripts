# docker-monitoring
monitoring docker containers using cadvisor, prometheus,node exporter and grafana
# running services in docker-compose file
docker-compose up
# running grafana on docker host
docker run -d --name grafana -p 3000:3000 grafana/grafana