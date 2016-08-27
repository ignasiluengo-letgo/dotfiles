# Mines
alias ssh-rafa.im='ssh rafa@omega.aizio.net'

# Akamon
## Ssh
alias ssh-akamon-deployer='ssh -l deployer -i ~/keys/deployer_rsa deploy01.int.akamon.com'
alias ssh-akamon-horus-dev='ssh rafa.gomez@54.171.55.150'
alias ssh-akamon-osiris-dev='ssh rafa.gomez@54.170.175.100'
alias ssh-mundijuegos-test='ssh rafa.gomez@172.16.2.101'

### Ssh tunnels
alias ssh-tunnel-akamon-payments='ssh -i ~/.ssh/id_rsa -l rafael.gomez -p 8822 payments-tunnel.devel.akamon.com -g -R 1025:localhost:8080 -N -v'
