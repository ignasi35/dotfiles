# Add User `~/bin` to the `$PATH`
PATH=$HOME/bin:$PATH
export PATH

## https://unix.stackexchange.com/a/208250  realtime history
#export PROMPT_COMMAND='history -a'

alias serve="python3 -m http.server"

alias ls='exa            --group-directories-first --git'
alias ll='exa -bghHliS   --group-directories-first --git'
alias  l='exa -bghl      --sort created            --git' 
alias cat='bat -n' 
#alias find='fd ' 
alias rmt='fd --no-ignore --case-sensitive --type d target -x rm -rf' 

### from  https://scalameta.org/docs/semanticdb/guide.html
# alias metac="coursier launch org.scalameta:metac_2.12.8:4.1.9 -- -cp $(coursier fetch -p org.scala-lang:scala-library:2.12.8)"
#i alias metap="coursier launch  -M scala.meta.cli.Metap org.scalameta:scalameta_2.11:4.1.9 --"
### from  https://scalameta.org/docs/semanticdb/guide.html

### following is taken from https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History
alias gitlog='git log --pretty=format:"%h - %an, %ar : %s"'
### previous was taken from https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History

alias lgm="cd ~/git/github/lagom/lagom/master"
alias lplay="cd ~/git/github/playframework/playframework"
alias todo-read-only="vim /Users/ignasi/git/github/ignasi35/todo/68adc4c61b91ea33c584e98f92028f30/todo.md"
alias sbt=sbtx

todo () {
	(
	cd /Users/ignasi/git/github/ignasi35/todo/68adc4c61b91ea33c584e98f92028f30/
	vim todo.md
	git commit -am "more updates"
	git push
	)
}

## From `brew install autojump`:
##  Add the following line to your ~/.bash_profile or ~/.zshrc file (and remember
##  to source the file to update your current session):
#[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh


#export LANG=en_US
#export PATH="/usr/local/opt/curl-openssl/bin:$PATH" 
#export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH" 

#export PATH="/usr/local/opt/openssl/bin:$PATH"
#export PATH="/usr/local/opt/curl/bin:$PATH"

export GITHUB_SRC=/Users/ignasi/git/github
export GITHUB_USER=ignasi35

