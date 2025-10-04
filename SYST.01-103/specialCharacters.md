### 103.1

#### __|__ Pipe
> redireciona a saída (std-output) de um comando para a entrada (std-input)
> do que se seguir.
>

#### __\__ Backslash (barra invertida)
> 'escapa' o próximo caractere, neutralizando sua semântica especial, tornando-o
> 'literal', impedindo sua 'expansão' simbólica no shell.
>

#### __"__ Double Quotes (aspas duplas)
> permite expansão parcial em variáveis e comandos.
>

#### __'__ Single Quotes (aspas simples)
> impede qualquer expansão.
>

#### __`__ Backtick (crase)
> substitui comando, mas seu uso ficou obsoleto, em favor de:
> __*$(comando)*__
>

#### __>__ Greater Than (maior que)
> redireciona a saída para um arquivo, cujo nome deve seguir o símbolo, e
> então o sobrescreve;
> __>>__ um vez duplicado, ele adiciona a saída para o final do arquivo
> (append - apensar).
>

#### __<__ Less Than (menor que)
> fornece a entrada de um aruqivo para um comando que o antecede.
>

#### __&__ Ampersand (e comercial)
> executa um comando em segundo plano;
> __&&__ uma vez duplicado, tem a semântica de um operador e permite a execução
> sequencial independente dos comandos que os precedem e sucedem.
>

#### __*__ Asterisk (asterisco)
> coringa (wildcard) para expansão de nomes de arquivos.
>

#### __?__ Question Mark (interrogação)
> corresponde a um único caractere em expansão de nomes.
>

#### __#__ Hash (cerquilha)
> comentário
>
