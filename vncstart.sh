   Figlet
	figlet "vnc"
    # Start VNC Server with GNOME Desktop
    vncserver :1 -geometry 1920x1080 -depth 24

    # Start noVNC Server
    cd /path/to/noVNC
    ./utils/launch.sh --vnc localhost:5901