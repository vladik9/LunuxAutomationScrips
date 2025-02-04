#!/bin/bash
echo "################################################"
echo "Installing Login Alert using swatchdog..."

# Update package list and install necessary packages
sudo apt-get update
sudo apt-get install -y swatchdog mailutils

# Copy configuration file to the proper location
sudo cp ../utils/login-notification/swatch.conf /etc/swatch.conf

# Ensure the notification script is executable and copy it to /usr/local/bin
sudo chmod +x ../utils/login-notification/login-notify.sh
sudo cp ../utils/login-notification/login-notify.sh /usr/local/bin/login-notify.sh

# Create the systemd service file for swatchdog
sudo tee /etc/systemd/system/swatch.service > /dev/null <<'EOF'
[Unit]
Description=Swatch Log Monitor for Login Events using swatchdog
After=network.target

[Service]
ExecStart=/usr/bin/swatchdog --config-file=/etc/swatch.conf --tail-file=/var/log/auth.log
Restart=always
User=root

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd configuration to pick up the new service
sudo systemctl daemon-reload

# Enable and start the swatch service (using swatchdog)
sudo systemctl enable swatch
sudo systemctl start swatch

# Display the service status for debugging purposes
sudo systemctl status swatch

echo "Login Alert has been installed successfully using swatchdog."
echo "################################################"
