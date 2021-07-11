# THIS FILE IS MANAGED BY ANSIBLE, DO NOT EDIT MANUALLY*

umask 027

LANG=en_US.UTF-8

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PAGER
if command -v less >/dev/null 2>&1; then
    PAGER="less -FR"
else
    PAGER="more"
fi

# set EDITOR

if command -v vim >/dev/null 2>&1; then
    EDITOR="vim"
elif command -v nano >/dev/null 2>&1; then
    EDITOR="nano"
else
    PAGER=""
fi