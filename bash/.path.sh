# PYTHON

if [[ -d "$PYENV_ROOT/bin" ]]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# NODE

[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# SDK

[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && \. "$SDKMAN_DIR/bin/sdkman-init.sh"

case ":$PATH:" in
  *":$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:"*) ;;
  *) export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH" ;;
esac

case ":$PATH:" in
  *":$ANDROID_SDK_ROOT/build-tools/34.0.0:"*) ;;
  *) export PATH="$ANDROID_SDK_ROOT/build-tools/34.0.0:$PATH" ;;
esac

# TOOLS

case ":$PATH:" in
  *":$RSWL/tools/scripts:"*) ;;
  *) export PATH="$RSWL/tools/scripts:$PATH" ;;
esac

# JAVA

if command -v java >/dev/null 2>&1; then
  export JAVA_HOME=$(readlink -f $(which java) | sed 's|/bin.*||')
fi

# TEXLIVE

case ":$PATH:" in
  *":$TEXLIVE:"*) ;;
  *) export PATH="$TEXLIVE:$PATH" ;;
esac

# Z
# <https://github.com/rupa/z>

[[ -d "$Z" ]] && \. "$Z/z.sh"
