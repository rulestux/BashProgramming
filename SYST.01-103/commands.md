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

#### man *command*
> acessa arquivos de ajuda da documentação dos comandos localizados em
> */usr/share/man*; note que o diretório de manuais está divido em sessões;
> *man* funciona apenas com o nome exato do comando.
>

#### info *command*
> exibe uma versão resumida de man.
>

#### whatis *command*
> obtem informações sumárias em poucas linhas de um comando, indicando a sessão
> __man__ de onde o termo foi localizado.
>

#### apropos *word*
> explora os nomes e descrições das páginas de manuais (man pages), permitindo
> encontrar o objeto de busca d eum modo mais gnérico. equivale a *man -k*.
>

#### whreis *command*
> retorna o caminho do absoluto binário e de seu arquivo manual.

#### type *one or more commands*
> exibe a localização de um comando no sistema;
> exibe se é built-in do shell ou o seu caminho.
>

#### which *one or more commands*
> exibe sempre a localização absoluta de um comando no sistema, buscando pelos
> caminhos parents especificados na variável $PATH.
>

#### cat /etc/shells
> exibe todos os shells instalados no sistema.
>

#### echo
> exibe as strings e variáveis informadas;
> com a opção *-e* e strings em aspas, permite formatação de conteúdo, que pode
> ser rediricionado atravésde pipes para outros arquivos.
>

#### history
> exibe ou reutiliza, com __*!número do comando*__, os comandos executados
> anteriormente, acessando-os através do buffer e do conteúdo do arquivo
> .bash_history (ou .zsh_history); os comandos em buffer só são gravados
> no histórico depois de se encerrar a sessão corrente.
>

#### echo $HISTFILE
> variáveis para histórico:
1. $HISTFILE guarda o caminho para o arquivo de histórico;
2. $HISTSIZE define a quantidade máxima de comandos no buffer;
3. $HISTFILESIZE define a quantidade máxima de comandos armazenados no
 .bash_history.*

#### bash
#### zsh
> iniciam um subshell (shell filho), uma nova sessão dentro da sessão anterior.
>

#### echo $SHLVL
> a variável $SHLVL guarda a camada de sessão do shell.
>

#### alias
> cria aliases temporários na sessão, com a sintaxe
> _alias var=comando._
>

#### export *var*
> passa uma variável de ambiente para os subshells (shells filhos).
>

#### set
> exibe todas as variáveis locais e globais.
>

#### unset <var>
> desconfigura valores e atributos de varáveis e funções do shell.
>

#### env
> entende e modifica as variáveis de ambiente (apenas variáveis globais).
>

#### cat <file>
> combina ou lê arquivos de texto simples.
> *cat* retorna o conteúdo de um arquivo, com um output que pode ser direcionado
> para outro arquivo, usando > ou >>; com < seguido do caminho do arquivo, o
> conteúdo é exibido na tela;
> __bzcat__,__ xzcat __e__ zcat__ processam ou lêem arquivos comprimidos usando
> os métodos bzip2, xz e gzip, respectivamente.
    > __opções:__
    > *-n* numera todas as linhas, incluso linhas em branco;
    > *-b* numera apenas linhas escritas;


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
> word count;
    > __opções:__
    > *-l* número de linhas;
    > *-w* número de palavras;
    > *-m* número de caracteres.

#### sort
> retorna o conteúdo dos arquivos em ordem alfabética;
    > __opções:__
    > *-r* reverte (inverte) a ordem.


#### uniq
>
>

#### od
>
>

#### nl
> numera as linhas de um arquivo, usando a sintaxe:
    > *cat /caminho/do/arquivo | nl* ou
    > *nl /caminho/do/arquivo*

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

