cd /opt/stacks/paperless-1/
docker-compose exec webserver document_exporter ../export
zip -r /mnt/volume/backup-paperless-1/$(date +"%Y%m%d")_export.zip /opt/stacks/paperless-1/export
find /mnt/volume/backup-paperless-1* -mtime +61 -exec rm {} \;
