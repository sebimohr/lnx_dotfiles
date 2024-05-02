#~/startOTHVpn.sh

echo "Starting OTH VPN"


notify_user() {
    notify-send -i $HOME/.config/mako/icons/vpn.png "VPN connected" "OTH VPN connected"
}

sudo openfortivpn | while IFS= read -r line
do
  echo "$line"  # Print the output to the console
  if echo "$line" | grep -q "INFO:   Tunnel is up and running."; then
    # Display a notification when the specific line appears
    notify_user
  fi
done

# If it doesn't work try this one:
# sudo openfortivpn --pppd-accept-remote

