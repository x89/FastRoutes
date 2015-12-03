local_gateway="192.168.0.1"
IPs=(
  # Dota 2
  146.66.0.0/16 # EU West
  155.133.0.0/16  # EU East
  # BBC
  132.185.112.0/20 
  132.185.0.0/16 
  212.58.224.0/19 
  132.185.128.0/20 
  # Pacman repos
  144.76.111.189 
  78.46.94.41 
  78.46.225.133 
  144.76.102.73 
  178.63.62.19 
)

for ip in "${IPs[@]}"
do
  echo "Routing ${ip} via ${local_gateway}…"
  ret=$(/usr/bin/ip route add ${ip} via ${local_gateway})
done

