# Fish git prompt
set __fish_git_prompt_show_informative_status true
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_prefix normal
set __fish_git_prompt_color_suffix normal

function fish_prompt --description 'Write out the prompt'
    set -l color_cwd
    set -l suffix
		set -l r (set_color brblue)
		set -l o (set_color normal yellow)
		set -l y (set_color bryellow)
		set -l eye 'º'

    switch $USER
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix "$r>$o<$y($o($r($y$eye$r>"
    end

    echo -n -s "$USER" @ (prompt_hostname) ':' (set_color $color_cwd) (prompt_pwd) (set_color normal) (__fish_git_prompt '(%s)') (set_color normal) " $suffix "
end

