alias w='cd ~/code'
alias be='bundle exec'

alias market-data="cd ~/code/likeassets/projects/appserver/; RAILS_ENV=local_production be rake market_data:use_latest"
alias sidekiq="cd ~/code/likeassets/projects/appserver/; bundle exec sidekiq -C config/sidekiq.yml -e local_production"
alias appserver="cd ~/code/likeassets/projects/appserver/; RAILS_ENV=local_production be passenger start"

export EDITOR=vim
export BUNDLER_EDITOR=gvim

export PROMPT_COMMAND='echo -ne "\033]0;${TITLE-${PWD##*/}}\007"'

if [ -f ~/.git-completion.sh ]; then
  . ~/.git-completion.sh
fi
if [ -f ~/.git-branch-prompt.sh ]; then
  . ~/.git-branch-prompt.sh
fi
