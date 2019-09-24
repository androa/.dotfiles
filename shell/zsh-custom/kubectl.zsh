export KUBECONFIG=~/.kubeconfigs/config

alias q=kubectl

source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

export PS1='$(kube_ps1)'$PS1
export DEFAULT_USER=$(whoami)
