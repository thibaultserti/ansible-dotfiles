# THIS FILE IS MANAGED BY ANSIBLE, DO NOT EDIT MANUALLY

if [ -f /opt/kube-ps1/kube-ps1.sh ]; then
    source /opt/kube-ps1/kube-ps1.sh
    PROMPT='$(kube_ps1)'$PROMPT
fi