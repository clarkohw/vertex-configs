if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/opt/homebrew/opt/tcl-tk/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH" 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

function cm() {
  git commit -m "$1"
}

function pda() {
  pm2 delete all
}

function pr() {
  if [[ $# -eq 0 ]]; then
    python3 /Users/clarkoh-willeke/Documents/brown/4-2/vertex/vertex/vertex-core/run.py
  else
    python3 /Users/clarkoh-willeke/Documents/brown/4-2/vertex/vertex/vertex-core/run.py "$1"
  fi
}


function cc() {
  cargo check
}

function pl() {
  pm2 log "$1"
}

function ycr() {
  yarn contracts:refresh
}

function bounce-t() {
  python3 /Users/clarkoh-willeke/Documents/brown/4-2/vertex/vertex/vertex-core/infra/deploy.py --tag=test --bounce="$1"
}

function stack-t() {
  python3 infra/deploy.py --tag=test --stack="$1"
}
