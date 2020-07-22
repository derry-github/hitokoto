if ! (( $+commands[curl] )); then
    echo "hitokoto plugin needs curl to work" >&2
    return
fi

if ! (( $+commands[jq] )); then
    echo "hitokoto plugin needs jq to work" >&2
    return
fi

curl -sL https://v1.hitokoto.cn/\?encode\=json | jq '.hitokoto'
