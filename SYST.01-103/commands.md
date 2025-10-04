### 103.1

#### pwd
> exibe o caminho do diretório corrente.
>

#### uname
> exibe a arquitetura do sistema, a versão do kernel a distribuição e a versão
> da distribuição.
> _opções:_
> _-a, --all; -s, --kernel-name; -n, -nodename; -r, --kernel-release,
> -v, --kernel-version; -m, --machine (machine hardware name); -p, --processor
> (processor type); -i, --hardware-platform; -o, --operating-system_.
>

#### man <command>
> acessa arquivos de ajuda da documentação dos comandos; funciona apenas com
> o nome exato do comando.
>

#### apropos <a word>
> explora os nomes e descrições das páginas de manuais (man pages), permitindo
> encontrar o objeto de busca d eum modo mais gnérico.
>

#### type <one or more commands>
> exibe a localização de um comando no sistema;
> exibe se é built-in do shell ou o seu caminho.
>

#### which <one or more commands>
> exibe sempre a localização absoluta de um comando no sistema.
>

#### history
> exibe ou reutiliza comandos executados anteriormente.
>

#### cat /etc/shells
> exibe todos os shells instalados no sistema.
>

#### echo
> exibe as strings e variáveis informadas.
>

#### echo $SHLVL
> a variável $SHLVL guarda a camada de sessão do shell.
>

#### bash
#### zsh
> iniciam um subshell (shell filho), uma nova sessão dentro da sessão anterior.
>

#### alias
> cria aliases temporários na sessão, com a sintaxe
> _alias var=<comando>_.
>

#### env
> entende e modifica as variáveis de ambiente.
>

#### export <var>
> passa uma variável de ambiente para os subshells (shells filhos).
>

#### unset <var>
> desconfigura valores e atributos de varáveis e funções do shell.
>

#### cat <file>
> combina ou lê arquivos de texto simples.
> __bzcat xzcat zcat__ processam ou lêem arquivos comprimidos usando os métodos
> bzip2, xz e gzip, respectivamente.
>

#### less <file>
> pagina o conteúdo de um arquivo, possibilitando navegação e pesquisa.
>

#### head <file>
> exibe as dez primeiras linhas; a opção -n permite personalizá-lo, enumerando
> a quantidade de linhas desejadas.
>

#### tail <file>
> exibe as dez últimas linhas; a opção -n permite personalizá-lo, enumerando
> a quantidade de linhas desejadas; -f segue a saída do arquivo de texto conforme
> novos dados são acrescidos a ele em tempo real.
>

#### wc
> word count
>

#### sort
>
>

#### uniq
>
>

#### od
>
>

#### nl
>
>

#### sed
>
>

#### tr
>
>

#### cut
>
>

#### paste
>
>

#### split
>
>

#### md5sum
>
>

#### sha256sum
>
>

#### sha512sum
>
>

