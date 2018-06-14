GPG_TTY=$(tty)
export GPG_TTY
gpgconf --launch gpg-agent >/dev/null 2>&1
export SSH_AUTH_SOCK=/run/user/$(id -ru)/gnupg/S.gpg-agent.ssh
