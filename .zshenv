export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

## for tmux
for DIR in `\ls -1 $HOME/.anyenv/envs`
do
    export PATH="$HOME/.anyenv/envs/${DIR}/shims:$PATH"
done
