<# SSH Tunnel Keep Alive #>

ssh -o ServerAliveInterval=20 -L 5901:127.0.0.1:5901 -C -N -l <username> <ip-address> -p <port-optional>