[Unit]
Description=Minecraft Server

Wants=network.target
After=network.target

[Service]
WorkingDirectory=<%= $install_dir %>
ExecStart=/usr/bin/java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.2.jar nogui

[Install]
WantedBy=multi-user.target
