export PATH=/users/sig/Applications/sbt/bin:$PATH
export PATH=/users/sig/Applications/scala-2.9.3/bin:$PATH

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

export PATH=$PATH:/Users/sig/Applications/adt-bundle-mac-x86_64-20140321/sdk/platform-tools
export PATH=$PATH:/Users/sig/tizen-wearable-sdk/tools
export PATH=$PATH:/usr/local/Cellar/ruby/2.1.1/bin

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# after update your python version, you need export environment.
export PATH=$PATH:/System/Library/Frameworks/Python.framework/Versions/3.4/bin

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/System/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH


# Setting for python-for-android, not works, fuckkkkkk
export ANDROIDSDK="/Users/sig/Applications/adt-bundle-mac-x86_64-20140321/sdk"
export ANDROIDNDK="/Users/sig/Applications/adt-bundle-mac-x86_64-20140321/android-ndk-r10"
export ANDROIDNDKVER=r10
export ANDROIDAPI=14
export LC_ALL=""en_US.UTF-8""




PS1='\[\e[1;31m\]\u\[\e[m\] \[\e[0;32m\]\w\[\e[m\]\[\e[1;32m\]] \$\[\e[m\] \[\e[1;37m\]'

# Customizing PROMPT_COMMAND
#PROMPT_COMMAND='echo "hi~~~~~~"'
tab-color() {
echo -ne "\033]6;1;bg;red;brightness;$1\a"
echo -ne "\033]6;1;bg;green;brightness;$2\a"
echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}

tab-reset() {
echo -ne "\033]6;1;bg;*;default\a"
}

color-ssh() {
if [[ -n "$ITERM_SESSION_ID" ]]; then
	trap "tab-reset" INT EXIT
	if [[ "$*" =~ "production|ec2-.*compute-1" ]]; then
		tab-color 255 0 0
	else
		tab-color 0 185 0
	fi
fi
ssh $*
}

alias ssh=color-ssh




[[ "$-" == *i* ]] && TTY="`tty`" && \
	bind '"\e[A":history-search-backward' && \
	bind '"\e[B":history-search-forward' && \
	if [[ "$TTY" =~ "/dev/tty"[0-9]+ ]]; then
		tty_short="#v${TTY:8}"
	elif [[ "$TTY" == "/dev/tty"* ]]; then
		tty_short="#${TTY:8}"
	elif [[ "$TTY" == "/dev/pty"* ]]; then
		tty_short="#p${TTY:8}"
	elif [[ "$TTY" == "/dev/hvc"* ]]; then
		tty_short="#h${TTY:8}"
	elif [[ "$TTY" == "/dev/pts"* ]]; then
		tty_short="#p${TTY:9}"
	elif [[ "$TTY" == "/dev/console" ]]; then
		tty_short="#c${TTY:12}"
	else
		unset tty_short
	fi

	if [[ "$PROMPT_COMMAND" != "S="* ]]; then
		if [ "$PROMPT_COMMAND" ]
		then
			PROMPT_COMMAND="; $PROMPT_COMMAND"
		fi
		PROMPT_COMMAND='S="$?"; [ "$S" != "0" ] && lasterror="($S)" || unset lasterror'"$PROMPT_COMMAND"
	fi

alias l='ls'
alias ll='ls -lG'
alias grep='GREP_COLOR="1;37;41" LANG=C grep --color=auto'

##
# Your previous /Users/sig/.bash_profile file was backed up as /Users/sig/.bash_profile.macports-saved_2015-10-13_at_11:10:11
##

# MacPorts Installer addition on 2015-10-13_at_11:10:11: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

