function parse_git_branch --description "Parse git branch name"
    command git symbolic-ref --short HEAD 2>/dev/null | sed -e 's|^refs/heads/||';
        or command git name-rev --name-only HEAD 2>/dev/null
end
