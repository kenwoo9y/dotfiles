eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH=$HOME/.nodebrew/current/bin:$PATH


# set PIPENV behaviour to always place .venv inside the project
export PIPENV_VENV_IN_PROJECT=true

if [ `uname` = "Darwin" ]; then
  # set op homebrew
  if [ -e /opt/homebrew ]; then
    HOMEBREW_ROOT=/opt/homebrew
  else
    HOMEBREW_ROOT=/usr/local
  fi
  export HOMEBREW_ROOT

  eval $(${HOMEBREW_ROOT}/bin/brew shellenv)

  # set up pyenv
  export PYENV_ROOT=${HOMEBREW_ROOT}/var/pyenv
  if command -v pyenv 1>/dev/null 2>&1; then
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
  fi

fi
