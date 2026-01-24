mkdir -p $HOME/.vim/after/syntax
cp *.vim $HOME/.vim/after/syntax/
if [ $(tput colors) -lt 256 ]
then
  if [ -f $HOME/.*shrc ]
  then
    if [ $(ls -d $HOME/.*shrc |wc -w) -eq 1 ]
    then
      eval "export TERM=xterm-256color"
      echo "export TERM=xterm-256color" >> $(ls -d $HOME/.*shrc)
    fi
  else
    case "$(basename $SHELL)" in
      bash|zsh|Zsh|ksh|korn)
        eval "export TERM=xterm-256color"
        echo "export TERM=xterm-256color" >> $HOME/.$(basename $SHELL)rc
        ;;
      fish)
        mkdir -p $HOME/.config/fish
        eval "set --export TERM xterm-256color"
        echo "set --export TERM xterm-256color" >> $HOME/.config/fish/config.fish
        ;;
      *)
        eval "export TERM=xterm-256color"
        echo "export TERM=xterm-256color" >> $HOME/.profile
        ;;
    esac
  fi
fi
