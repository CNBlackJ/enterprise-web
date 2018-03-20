start:
	pm2 start npm --name "enterprise_web" -- run start

phoney: start