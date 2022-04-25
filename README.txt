1. sudo cp test_homework_service.sh /usr/bin/test_homework_service.sh
2. sudo chmod +x /usr/bin/test_homework_service.sh
3. sudo cp test_homework_service.service /lib/systemd/system/test_homework_service.service
4. sudo cp test_homework_service.service /etc/systemd/system/test_homework_service.service
5. sudo chmod 644 /etc/systemd/system/test_homework_service.service

check that service works:
sudo systemctl start test_homework_service
sudo systemctl status test_homework_service

stop/restart:
sudo systemctl stop test_homework_service
sudo systemctl restart test_homework_service

start on boot:
sudo systemctl enable test_homework_service
