# start-v4l2loopback.sh
Bash script for raspberry pi to automatically run modprobe v4l2oopback on launch

## Instructions:
1. Download `start-v4l2loopback.sh`.  
2. If you haven't already, create a scripts folder:
    * `sudo mkdir -p /home/warg/scripts`
3. Move `start-v4l2loopback.sh` to the new scripts folder:
    * `sudo mv /home/warg/Downloads/start-v4l2loopback.sh /home/warg/scripts/`
4. Ensure that `start-v4l2loopback.sh` is executable:
    * `sudo chmod +x /home/warg/scripts/start-v4l2loopback.sh`
5. Open crontab:
    * `sudo crontab -e`
6. In crontab, add `@reboot /home/warg/scripts/start-v4l2loopback.sh`.
7. Save and exit.
8. Reboot your pi with `sudo reboot`.
