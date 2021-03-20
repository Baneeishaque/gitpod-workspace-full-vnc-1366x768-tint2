FROM baneeishaque/gitpod-workspace-full-vnc-1366x768

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     tint2 | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*

RUN echo "tint2 & > /tmp/tint2.log" | sudo tee -a /usr/bin/start-vnc-session.sh > /dev/null

