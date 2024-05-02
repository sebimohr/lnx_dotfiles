#~/startMongoDb.sh

sudo chown -R mongodb:mongodb /var/lib/mongodb
sudo chown mongodb:mongodb /tmp/mongodb-271017.sock
sudo systemctl start mongodb
sudo systemctl status mongodb
