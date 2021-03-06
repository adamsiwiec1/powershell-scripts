<# SSH Tunnel Keep Alive into Ubuntu #>

ssh -o ServerAliveInterval=20 -L 5901:127.0.0.1:5901 -C -N -l ukryty 3.tcp.ngrok.io -p 27816