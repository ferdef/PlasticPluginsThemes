# Plastic plugin

This plugin adds some handy aliases for using Plastic as well as a few
utility and prompt functions that can be used in a theme.

To use it, add `plasticscm` to the plugins array in your zshrc file:

```zsh
plugins=(... plasticscm)
```

## Aliases

| Alias  | Command                                                                                                     |
|--------|-------------------------------------------------------------------------------------------------------------|
| `cms`  | `cm status`                                                                                                    |
## Prompt usage

- Switch to a theme which uses `plasticscm_prompt_info`

- Or customize the `$PROMPT` variable of your current theme to contain current folder plasticscm repo info.
  This can be done by putting a custom version of the theme in `$ZSH_CUSTOM` or by changing `$PROMPT` in
  `.zshrc` after loading the theme.

  For example, for the `robbyrussell` theme you need to modify `$PROMPT` var by adding `$(plasticscm_prompt_info)`
  after `$(git_prompt_info)`, so it looks like this:

  ```zsh
  PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)$(plasticscm_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
  ```

You can also redefine additional vars used in the plugin (after Oh My Zsh is sourced):

```zsh
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg_bold[magenta]%}scm:(%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[magenta]%})"
```

### Display repo branch and directory status in prompt

This is the same as git plugin does. **Note**: additional changes to `.zshrc`, or using a theme designed
to use `plasticscm_prompt_info`, are required in order for this to work.

If the prompt takes more time 

## Mantainers

- [ferdef](https://github.com/ferdef): original creator
