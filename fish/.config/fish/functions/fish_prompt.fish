set fish_color_command green
set fish_color_error red
set fish_color_param cyan
set fish_color_quote yellow

function fish_prompt

  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined
    function git_branch_name
      echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    end

    function is_git_dirty
      echo (git status -s --ignore-submodules=dirty ^/dev/null)
    end

    function is_git_repo
      git status -s >/dev/null ^/dev/null
    end
  end

  if not set -q __fish_prompt_hostname
      set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end

  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l green (set_color -o green)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l cwd $cyan(prompt_pwd)

  if is_git_repo
    if [ (is_git_dirty) ]
      set repo_branch $red(git_branch_name)
    else
      set repo_branch $green(git_branch_name)  
    end

    set repo_info "$blue [git: $repo_branch$blue]"
  end

  if set -q VIRTUAL_ENV
    set -l env_name $yellow(basename "$VIRTUAL_ENV")
    set env_info "$blue [env: $env_name$blue]"
  end

  echo -n -s ┌─ ' ' (whoami)@$__fish_prompt_hostname ' ' $cwd $repo_info $env_info $normal ' '
  echo
  echo -n └─ ''
end
