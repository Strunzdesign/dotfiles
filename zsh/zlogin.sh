pgrep -l gpg-agent &>/dev/null
if [[ "$?" != "0" ]]; then
    gpg-agent --daemon --enable-ssh-support &>/dev/null
fi

SSH_AUTH_SOCK=/run/user/$(id -u)/gnupg/S.gpg-agent.ssh
export SSH_AUTH_SOCK
