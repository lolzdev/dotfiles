set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}"

alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF
alias vim	nvim
alias ls	exa -al
alias emacs	emacsclient --create-frame --alternate-editor=""

setenv	EDITOR	nvim
setenv	PAGER	less

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%N@%m:%~ %# "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif

set path = ($path $home/.cargo/bin $home/.rustup/toolchains/stable-unknown-freebsd/bin)
set prompt="${yellow}[${green}%n${blue}@%m ${white}%~ ${yellow}]${end} "
