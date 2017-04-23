function fzf_select_repository -d "fzf source to cd to repository using ghq"
    ghq list -p | fzf | read repository

    if test -n "$repository"
        commandline "cd $repository"
        commandline -f execute
    end
end
