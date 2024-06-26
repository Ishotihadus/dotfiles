### .zshrc compilation ###
if [ ! -f $HOME/.zshrc.zwc -o $HOME/.zshrc -nt $HOME/.zshrc.zwc ]; then zcompile $HOME/.zshrc; fi

### environments ###
if [ -f /usr/libexec/path_helper ]; then eval $(/usr/libexec/path_helper); fi
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export CPATH="$HOME/.local/include:$CPATH"
export LD_LIBRARY_PATH="$HOME/.local/lib:$LD_LIBRARY_PATH"
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1048576
export SAVEHIST=1048576
export WORDCHARS=${${WORDCHARS/\//}/_/}

export KUBECONFIG=$HOME/Documents/matsurihi_me/tomoka-kubeconfig.yaml
export TOR_PROXY=socks5://localhost:9050

if [ -f $HOME/.iterm2_shell_integration.zsh ]; then source $HOME/.iterm2_shell_integration.zsh; fi

### color schemes ###
export LS_COLORS="*~=0;38;2;91;96;120:bd=0;38;2;125;196;228;48;2;54;58;79:ca=0:cd=0;38;2;245;189;230;48;2;54;58;79:di=0;38;2;138;173;244:do=0;38;2;24;25;38;48;2;245;189;230:ex=1;38;2;237;135;150:fi=0:ln=0;38;2;245;189;230:mh=0:mi=0;38;2;24;25;38;48;2;237;135;150:no=0:or=0;38;2;24;25;38;48;2;237;135;150:ow=0:pi=0;38;2;24;25;38;48;2;138;173;244:rs=0:sg=0:so=0;38;2;24;25;38;48;2;245;189;230:st=0:su=0:tw=0:*.a=1;38;2;237;135;150:*.c=0;38;2;166;218;149:*.d=0;38;2;166;218;149:*.h=0;38;2;166;218;149:*.m=0;38;2;166;218;149:*.o=0;38;2;91;96;120:*.p=0;38;2;166;218;149:*.r=0;38;2;166;218;149:*.t=0;38;2;166;218;149:*.z=4;38;2;125;196;228:*.7z=4;38;2;125;196;228:*.as=0;38;2;166;218;149:*.bc=0;38;2;91;96;120:*.bz=4;38;2;125;196;228:*.cc=0;38;2;166;218;149:*.cp=0;38;2;166;218;149:*.cr=0;38;2;166;218;149:*.cs=0;38;2;166;218;149:*.di=0;38;2;166;218;149:*.el=0;38;2;166;218;149:*.ex=0;38;2;166;218;149:*.fs=0;38;2;166;218;149:*.go=0;38;2;166;218;149:*.gv=0;38;2;166;218;149:*.gz=4;38;2;125;196;228:*.hh=0;38;2;166;218;149:*.hi=0;38;2;91;96;120:*.hs=0;38;2;166;218;149:*.jl=0;38;2;166;218;149:*.js=0;38;2;166;218;149:*.ko=1;38;2;237;135;150:*.kt=0;38;2;166;218;149:*.la=0;38;2;91;96;120:*.ll=0;38;2;166;218;149:*.lo=0;38;2;91;96;120:*.md=0;38;2;238;212;159:*.ml=0;38;2;166;218;149:*.mn=0;38;2;166;218;149:*.nb=0;38;2;166;218;149:*.pl=0;38;2;166;218;149:*.pm=0;38;2;166;218;149:*.pp=0;38;2;166;218;149:*.ps=0;38;2;237;135;150:*.py=0;38;2;166;218;149:*.rb=0;38;2;166;218;149:*.rm=0;38;2;240;198;198:*.rs=0;38;2;166;218;149:*.sh=0;38;2;166;218;149:*.so=1;38;2;237;135;150:*.td=0;38;2;166;218;149:*.ts=0;38;2;166;218;149:*.ui=0;38;2;238;212;159:*.vb=0;38;2;166;218;149:*.wv=0;38;2;240;198;198:*.xz=4;38;2;125;196;228:*.aif=0;38;2;240;198;198:*.ape=0;38;2;240;198;198:*.apk=4;38;2;125;196;228:*.arj=4;38;2;125;196;228:*.asa=0;38;2;166;218;149:*.aux=0;38;2;91;96;120:*.avi=0;38;2;240;198;198:*.awk=0;38;2;166;218;149:*.bag=4;38;2;125;196;228:*.bak=0;38;2;91;96;120:*.bat=1;38;2;237;135;150:*.bbl=0;38;2;91;96;120:*.bcf=0;38;2;91;96;120:*.bib=0;38;2;238;212;159:*.bin=4;38;2;125;196;228:*.blg=0;38;2;91;96;120:*.bmp=0;38;2;240;198;198:*.bsh=0;38;2;166;218;149:*.bst=0;38;2;238;212;159:*.bz2=4;38;2;125;196;228:*.c++=0;38;2;166;218;149:*.cfg=0;38;2;238;212;159:*.cgi=0;38;2;166;218;149:*.clj=0;38;2;166;218;149:*.com=1;38;2;237;135;150:*.cpp=0;38;2;166;218;149:*.css=0;38;2;166;218;149:*.csv=0;38;2;238;212;159:*.csx=0;38;2;166;218;149:*.cxx=0;38;2;166;218;149:*.deb=4;38;2;125;196;228:*.def=0;38;2;166;218;149:*.dll=1;38;2;237;135;150:*.dmg=4;38;2;125;196;228:*.doc=0;38;2;237;135;150:*.dot=0;38;2;166;218;149:*.dox=0;38;2;139;213;202:*.dpr=0;38;2;166;218;149:*.elc=0;38;2;166;218;149:*.elm=0;38;2;166;218;149:*.epp=0;38;2;166;218;149:*.eps=0;38;2;240;198;198:*.erl=0;38;2;166;218;149:*.exe=1;38;2;237;135;150:*.exs=0;38;2;166;218;149:*.fls=0;38;2;91;96;120:*.flv=0;38;2;240;198;198:*.fnt=0;38;2;240;198;198:*.fon=0;38;2;240;198;198:*.fsi=0;38;2;166;218;149:*.fsx=0;38;2;166;218;149:*.gif=0;38;2;240;198;198:*.git=0;38;2;91;96;120:*.gvy=0;38;2;166;218;149:*.h++=0;38;2;166;218;149:*.hpp=0;38;2;166;218;149:*.htc=0;38;2;166;218;149:*.htm=0;38;2;238;212;159:*.hxx=0;38;2;166;218;149:*.ico=0;38;2;240;198;198:*.ics=0;38;2;237;135;150:*.idx=0;38;2;91;96;120:*.ilg=0;38;2;91;96;120:*.img=4;38;2;125;196;228:*.inc=0;38;2;166;218;149:*.ind=0;38;2;91;96;120:*.ini=0;38;2;238;212;159:*.inl=0;38;2;166;218;149:*.ipp=0;38;2;166;218;149:*.iso=4;38;2;125;196;228:*.jar=4;38;2;125;196;228:*.jpg=0;38;2;240;198;198:*.kex=0;38;2;237;135;150:*.kts=0;38;2;166;218;149:*.log=0;38;2;91;96;120:*.ltx=0;38;2;166;218;149:*.lua=0;38;2;166;218;149:*.m3u=0;38;2;240;198;198:*.m4a=0;38;2;240;198;198:*.m4v=0;38;2;240;198;198:*.mid=0;38;2;240;198;198:*.mir=0;38;2;166;218;149:*.mkv=0;38;2;240;198;198:*.mli=0;38;2;166;218;149:*.mov=0;38;2;240;198;198:*.mp3=0;38;2;240;198;198:*.mp4=0;38;2;240;198;198:*.mpg=0;38;2;240;198;198:*.nix=0;38;2;238;212;159:*.odp=0;38;2;237;135;150:*.ods=0;38;2;237;135;150:*.odt=0;38;2;237;135;150:*.ogg=0;38;2;240;198;198:*.org=0;38;2;238;212;159:*.otf=0;38;2;240;198;198:*.out=0;38;2;91;96;120:*.pas=0;38;2;166;218;149:*.pbm=0;38;2;240;198;198:*.pdf=0;38;2;237;135;150:*.pgm=0;38;2;240;198;198:*.php=0;38;2;166;218;149:*.pid=0;38;2;91;96;120:*.pkg=4;38;2;125;196;228:*.png=0;38;2;240;198;198:*.pod=0;38;2;166;218;149:*.ppm=0;38;2;240;198;198:*.pps=0;38;2;237;135;150:*.ppt=0;38;2;237;135;150:*.pro=0;38;2;139;213;202:*.ps1=0;38;2;166;218;149:*.psd=0;38;2;240;198;198:*.pyc=0;38;2;91;96;120:*.pyd=0;38;2;91;96;120:*.pyo=0;38;2;91;96;120:*.rar=4;38;2;125;196;228:*.rpm=4;38;2;125;196;228:*.rst=0;38;2;238;212;159:*.rtf=0;38;2;237;135;150:*.sbt=0;38;2;166;218;149:*.sql=0;38;2;166;218;149:*.sty=0;38;2;91;96;120:*.svg=0;38;2;240;198;198:*.swf=0;38;2;240;198;198:*.swp=0;38;2;91;96;120:*.sxi=0;38;2;237;135;150:*.sxw=0;38;2;237;135;150:*.tar=4;38;2;125;196;228:*.tbz=4;38;2;125;196;228:*.tcl=0;38;2;166;218;149:*.tex=0;38;2;166;218;149:*.tgz=4;38;2;125;196;228:*.tif=0;38;2;240;198;198:*.tml=0;38;2;238;212;159:*.tmp=0;38;2;91;96;120:*.toc=0;38;2;91;96;120:*.tsx=0;38;2;166;218;149:*.ttf=0;38;2;240;198;198:*.txt=0;38;2;238;212;159:*.vcd=4;38;2;125;196;228:*.vim=0;38;2;166;218;149:*.vob=0;38;2;240;198;198:*.wav=0;38;2;240;198;198:*.wma=0;38;2;240;198;198:*.wmv=0;38;2;240;198;198:*.xcf=0;38;2;240;198;198:*.xlr=0;38;2;237;135;150:*.xls=0;38;2;237;135;150:*.xml=0;38;2;238;212;159:*.xmp=0;38;2;238;212;159:*.yml=0;38;2;238;212;159:*.zip=4;38;2;125;196;228:*.zsh=0;38;2;166;218;149:*.zst=4;38;2;125;196;228:*TODO=1:*hgrc=0;38;2;139;213;202:*.bash=0;38;2;166;218;149:*.conf=0;38;2;238;212;159:*.dart=0;38;2;166;218;149:*.diff=0;38;2;166;218;149:*.docx=0;38;2;237;135;150:*.epub=0;38;2;237;135;150:*.fish=0;38;2;166;218;149:*.flac=0;38;2;240;198;198:*.h264=0;38;2;240;198;198:*.hgrc=0;38;2;139;213;202:*.html=0;38;2;238;212;159:*.java=0;38;2;166;218;149:*.jpeg=0;38;2;240;198;198:*.json=0;38;2;238;212;159:*.less=0;38;2;166;218;149:*.lisp=0;38;2;166;218;149:*.lock=0;38;2;91;96;120:*.make=0;38;2;139;213;202:*.mpeg=0;38;2;240;198;198:*.opus=0;38;2;240;198;198:*.orig=0;38;2;91;96;120:*.pptx=0;38;2;237;135;150:*.psd1=0;38;2;166;218;149:*.psm1=0;38;2;166;218;149:*.purs=0;38;2;166;218;149:*.rlib=0;38;2;91;96;120:*.sass=0;38;2;166;218;149:*.scss=0;38;2;166;218;149:*.tbz2=4;38;2;125;196;228:*.tiff=0;38;2;240;198;198:*.toml=0;38;2;238;212;159:*.webm=0;38;2;240;198;198:*.webp=0;38;2;240;198;198:*.woff=0;38;2;240;198;198:*.xbps=4;38;2;125;196;228:*.xlsx=0;38;2;237;135;150:*.yaml=0;38;2;238;212;159:*.cabal=0;38;2;166;218;149:*.cache=0;38;2;91;96;120:*.class=0;38;2;91;96;120:*.cmake=0;38;2;139;213;202:*.dyn_o=0;38;2;91;96;120:*.ipynb=0;38;2;166;218;149:*.mdown=0;38;2;238;212;159:*.patch=0;38;2;166;218;149:*.scala=0;38;2;166;218;149:*.shtml=0;38;2;238;212;159:*.swift=0;38;2;166;218;149:*.toast=4;38;2;125;196;228:*.xhtml=0;38;2;238;212;159:*README=0;38;2;36;39;58;48;2;238;212;159:*passwd=0;38;2;238;212;159:*shadow=0;38;2;238;212;159:*.config=0;38;2;238;212;159:*.dyn_hi=0;38;2;91;96;120:*.flake8=0;38;2;139;213;202:*.gradle=0;38;2;166;218;149:*.groovy=0;38;2;166;218;149:*.ignore=0;38;2;139;213;202:*.matlab=0;38;2;166;218;149:*COPYING=0;38;2;147;154;183:*INSTALL=0;38;2;36;39;58;48;2;238;212;159:*LICENSE=0;38;2;147;154;183:*TODO.md=1:*.desktop=0;38;2;238;212;159:*.gemspec=0;38;2;139;213;202:*Doxyfile=0;38;2;139;213;202:*Makefile=0;38;2;139;213;202:*TODO.txt=1:*setup.py=0;38;2;139;213;202:*.DS_Store=0;38;2;91;96;120:*.cmake.in=0;38;2;139;213;202:*.fdignore=0;38;2;139;213;202:*.kdevelop=0;38;2;139;213;202:*.markdown=0;38;2;238;212;159:*.rgignore=0;38;2;139;213;202:*COPYRIGHT=0;38;2;147;154;183:*README.md=0;38;2;36;39;58;48;2;238;212;159:*configure=0;38;2;139;213;202:*.gitconfig=0;38;2;139;213;202:*.gitignore=0;38;2;139;213;202:*.localized=0;38;2;91;96;120:*.scons_opt=0;38;2;91;96;120:*CODEOWNERS=0;38;2;139;213;202:*Dockerfile=0;38;2;238;212;159:*INSTALL.md=0;38;2;36;39;58;48;2;238;212;159:*README.txt=0;38;2;36;39;58;48;2;238;212;159:*SConscript=0;38;2;139;213;202:*SConstruct=0;38;2;139;213;202:*.gitmodules=0;38;2;139;213;202:*.synctex.gz=0;38;2;91;96;120:*.travis.yml=0;38;2;166;218;149:*INSTALL.txt=0;38;2;36;39;58;48;2;238;212;159:*LICENSE-MIT=0;38;2;147;154;183:*MANIFEST.in=0;38;2;139;213;202:*Makefile.am=0;38;2;139;213;202:*Makefile.in=0;38;2;91;96;120:*.applescript=0;38;2;166;218;149:*.fdb_latexmk=0;38;2;91;96;120:*CONTRIBUTORS=0;38;2;36;39;58;48;2;238;212;159:*appveyor.yml=0;38;2;166;218;149:*configure.ac=0;38;2;139;213;202:*.clang-format=0;38;2;139;213;202:*.gitattributes=0;38;2;139;213;202:*.gitlab-ci.yml=0;38;2;166;218;149:*CMakeCache.txt=0;38;2;91;96;120:*CMakeLists.txt=0;38;2;139;213;202:*LICENSE-APACHE=0;38;2;147;154;183:*CONTRIBUTORS.md=0;38;2;36;39;58;48;2;238;212;159:*.sconsign.dblite=0;38;2;91;96;120:*CONTRIBUTORS.txt=0;38;2;36;39;58;48;2;238;212;159:*requirements.txt=0;38;2;139;213;202:*package-lock.json=0;38;2;91;96;120:*.CFUserTextEncoding=0;38;2;91;96;120"
export BAT_THEME="Dracula"
source $HOME/.p10k.zsh

### macOS-specific ###
if [[ "$(uname -s)" == Darwin ]]; then
  export PATH="/Library/Frameworks/Mono.framework/Home/bin:/usr/local/texlive/current/bin/universal-darwin:$PATH"

  export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"
  export PATH="$(find $HOME/Library/Android/sdk/build-tools -mindepth 1 -maxdepth 1 | sort -h | tail -n 1):$PATH"

  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PATH="/opt/homebrew/opt/curl/bin:/opt/homebrew/opt/mysql-client/bin:$PATH"
  export HOMEBREW_NO_AUTO_UPDATE=1
fi

### java -> temurin ###
if [ -d /Library/Java/JavaVirtualMachines ]; then
  _TEMURIN_TMP="$(find /Library/Java/JavaVirtualMachines -d 1 -name 'temurin-*.jdk' 2>/dev/null | tail -n 1)"
  if [ -n "$_TEMURIN_TMP" ]; then export JAVA_HOME=${_TEMURIN_TMP}/Contents/Home; fi
  unset _TEMURIN_TMP
fi

### key binds ###
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward
bindkey '^R' history-incremental-search-backward
bindkey '^T' history-incremental-search-forward

### setopt ###
setopt append_history auto_cd auto_list auto_menu auto_param_keys auto_param_slash auto_pushd auto_remove_slash extended_glob
setopt hist_ignore_all_dups hist_ignore_space hist_reduce_blanks ignore_eof inc_append_history interactive_comments
setopt list_types magic_equal_subst no_beep print_eight_bit prompt_subst pushd_ignore_dups pushd_silent
setopt share_history short_loops
unsetopt list_beep

### env ###
PATH="$HOME/.rbenv/bin:$HOME/.pyenv/bin:$HOME/.nodenv/bin:$PATH"
if command -v rbenv &> /dev/null; then
  eval "$(rbenv init - --no-rehash zsh)"
  nohup rbenv rehash >/dev/null 2>&1 &!
fi
if command -v pyenv &> /dev/null; then
  eval "$(pyenv init - --no-rehash zsh)"
  eval "$(pyenv virtualenv-init - zsh)"
  nohup pyenv rehash >/dev/null 2>&1 &!
fi
if command -v nodenv &> /dev/null; then
  eval "$(nodenv init - --no-rehash zsh)"
  nohup nodenv rehash >/dev/null 2>&1 &!
fi
if [ -e $HOME/.cargo/env ]; then source $HOME/.cargo/env; fi

### anaconda ###
export CONDA_AUTO_ACTIVATE_BASE=false
if [ -d $HOME/.opt/anaconda3 ]; then eval "$($HOME/.opt/anaconda3/bin/conda shell.zsh hook)"
elif [ -d /scratch/${USER}/anaconda3 ]; then eval "$(/scratch/${USER}/anaconda3/bin/conda shell.zsh hook)"; fi

### google-cloud-sdk ###
if [ -d /opt/homebrew/share/google-cloud-sdk ]; then
  source /opt/homebrew/share/google-cloud-sdk/path.zsh.inc
  source /opt/homebrew/share/google-cloud-sdk/completion.zsh.inc
elif [ -d $HOME/.local/share/google-cloud-sdk ]; then
  source $HOME/.local/share/google-cloud-sdk/path.zsh.inc
  source $HOME/.local/share/google-cloud-sdk/completion.zsh.inc
fi

### zinit ###
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
zicompdef -d rec play
zinit light-mode for \
  zdharma-continuum/zinit-annex-as-monitor \
  zdharma-continuum/zinit-annex-bin-gem-node \
  zdharma-continuum/zinit-annex-patch-dl \
  zdharma-continuum/zinit-annex-rust \
  depth"1" romkatv/powerlevel10k \
  wait lucid zdharma-continuum/fast-syntax-highlighting \
  zsh-users/zsh-autosuggestions \
  atload"zicompinit; zicdreplay" blockf zsh-users/zsh-completions conda-incubator/conda-zsh-completion

### completion ###
zstyle ':completion:*' completer _complete _approximate _match
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*' use-cache true
zstyle ':completion:*' verbose yes
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:matches' group yes
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:options' description yes

### alias ###
if command -v batcat &> /dev/null; then
  alias cat='batcat --paging=never --decorations=never'
  alias less='batcat --paging=always'
elif command -v bat &> /dev/null; then
  alias cat='bat --paging=never --decorations=never'
  alias less='bat --paging=always'
fi
alias cp='cp -i'
alias curl-tor='curl --proxy "$TOR_PROXY"'
alias diff='colordiff -W $COLUMNS'
alias iina='/Applications/IINA.app/Contents/MacOS/iina-cli'
alias iina-streamlink='streamlink --player /Applications/IINA.app/Contents/MacOS/iina-cli --player-args "--keep-running {filename}" --verbose-player --player-continuous-http'
alias iina-streamlink-tor='streamlink --player /Applications/IINA.app/Contents/MacOS/iina-cli --player-args "--keep-running {filename}" --verbose-player --player-continuous-http --https-proxy "$TOR_PROXY" --http-proxy "$TOR_PROXY"'
if command -v eza &> /dev/null; then
  alias l='eza'
  alias ls='eza -lah --group-directories-first --time-style long-iso'
fi
alias mv='mv -i'
alias streamlink-tor='streamlink --https-proxy "$TOR_PROXY" --http-proxy "$TOR_PROXY"'
alias tarc='tar --exclude .DS_Store --disable-copyfile --no-mac-metadata --no-xattrs -c'
alias vim='nvim'

if [[ "$(uname -s)" == Darwin ]]; then
  alias code='/Applications/Visual\ Studio\ Code\ -\ Insiders.app/Contents/Resources/app/bin/code'
  alias il2cppdumper="/opt/homebrew/opt/dotnet@6/libexec/dotnet /${HOME}/.opt/il2cppdumper/Il2CppDumper.dll"
  alias rm='mvtrash'
  alias texturetool='/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/texturetool'
fi
if [ -d /opt/homebrew/opt/binutils ]; then
  for f in /opt/homebrew/opt/binutils/bin/*(@); do
    alias ${f##*/}=$f
  done
fi

### normalize PATH ###
typeset -U path
