#!/bin/bash

languages=$(echo "bash c css html javascript lua php tmux typescript rust" | tr " " "\n")
core_utils=$(echo "awk cargo cat chmod chown cp docker docker-compose find git git-commit git-rebase git-status git-worktree grep head jq kill less ls lsof make man mv ps rename rg rm sed ssh stow tail tar tldr tr xargs" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "Enter Query: " query

if echo "$languages" | grep -qs $selected; then
    curl cht.sh/$selected/$(echo "$query" | tr " " "+")
    # tmux split-window -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    curl cht.sh/$selected~$query
fi
