function fish_prompt
    # This is a simple prompt. It looks like
    # alfa@nobby /path/to/dir $
    # with the path shortened and colored
    # and a "#" instead of a "$" when run as root.
    set -l symbol ' $ '
    set -l color $fish_color_cwd
    if fish_is_root_user
        set symbol ' # '
        set -q fish_color_cwd_root
        and set color $fish_color_cwd_root
    end

    # Git branch stuff
    set -l git_info
    if [ (command git rev-parse --is-inside-work-tree 2> /dev/null) ]
        # Get the current branch name/commit
        set -l git_branch_name (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
        if [ -z $git_branch_name ]
            set git_branch_name (command git show-ref --head -s --abbrev | head -n1 2> /dev/null)
        end

        # Unconditional git component
        set git_info "$normal""($git_branch_name)"

        # if [ (command git status -s --ignore-submodules=dirty | wc -l) -gt 0 ]
        #     set git_info "$git_info$yellow*"
        # end

        set git_info "$git_info "
    end

    set_color CC70E1
    # echo -n $USER
    printf '%s' $USER
    set_color normal
    # echo -n @$hostname
    printf '@%s' $hostname

    set_color $color
    echo -n ''(prompt_pwd)' '
    set_color normal

    set_color 26BC24
    printf '%s' $git_info
end
