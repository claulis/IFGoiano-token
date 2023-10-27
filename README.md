# IFGoiano Token
Material didático sobre blockchain para projeto de pesquisa de blockchain na educação para o IF Goiano

## O que é uma blockchain?
É uma cadeia de blocos de dados interligados, organizados em ordem cronológica e protegidos por provas criptográficas. É uma base de dados distribuída peer-to-peer que tem regras rigorosas para a adição de dados. A blockchain é a base do funcionamento das criptomoedas, sendo o fio condutor para a segurança nas transações digitais das moedas.

## O que é uma criptomoeda?
É um ativo digital independente com sua própria blockchain. As criptomoedas são versões digitais do dinheiro e têm suas próprias blockchains, que são registros compartilhados e imutáveis onde as transações são registradas. Exemplos de criptomoedas incluem Bitcoin, Litecoin e Ether.

## O que é um token?
Um token é construído dentro de uma blockchain pré-existente. Os tokens são uma “subclasse” de criptomoedas construídas “dentro” de blockchains já existentes. Eles representam títulos ou ativos reais3 e não possuem uma rede própria, mas se valem das redes de outras criptomoedas já existentes.

## Como posso usar um token?
- Tokens de Certificado Digital: Um token pode ser um hardware que armazena as chaves criptográficas de um Certificado Digital, garantindo a segurança dos dados.
- Tokens de Criptomoeda: No universo das criptomoedas, um token é a representação digital de um ativo – como dinheiro, propriedade ou obra de arte – registrada em uma blockchain.
- Tokens de Utilidade (Utility Tokens): Os Utility tokens oferecem alguma utilidade, como desconto em um produto específico ou acesso a um serviço exclusivo.
- Tokens Não-Fungíveis (NFTs): Os NFTs representam algo único e podem “espelhar” obras de arte, músicas, capas históricas de revistas e até tweets.

## o que é um token padrão ERC-20?
Um token ERC-20 é um tipo de contrato inteligente que opera na blockchain Ethereum e segue um conjunto padrão de regras de programação. Essas regras permitem que o token interaja com outros tokens e aplicativos descentralizados (DApps) na rede Ethereum.
Os tokens ERC-20 podem ter valor próprio e podem ser transferidos e recebidos como qualquer outra criptomoeda. Eles são usados para uma variedade de propósitos, incluindo representar moedas digitais, stablecoins, tokens de governança e tokens de segurança.
Para ser compatível com o padrão ERC-20, um contrato deve incluir seis funções obrigatórias: `totalSupply`, `balanceOf`, `transfer`, `transferFrom`, `approve` e `allowance`. Essas funções permitem que você consulte o fornecimento total de tokens, realize transações e conceda permissões a outros DApps.
Um token ERC-20 age como o ETH, significando que 1 token é e será sempre igual a todos os outros tokens.

## O que é Ethereum?
Ethereum é uma rede de computadores em todo o mundo que segue um conjunto de regras chamado protocolo Ethereum. A rede Ethereum atua como base para comunidades, aplicativos, organizações e ativos digitais que qualquer pessoa pode construir e usar. 
A principal inovação é que você pode fazer tudo isso sem confiar em uma autoridade central que poderia alterar as regras ou restringir seu acesso. 
Como outras blockchains, Ethereum tem uma criptomoeda nativa chamada ether (ETH). ETH é dinheiro digital. Se você ouviu falar de Bitcoin, o ETH tem muitas das mesmas características. É puramente digital e pode ser enviado instantaneamente a qualquer pessoa do mundo.
A blockchain da Ethereum é muito mais poderosa por causa de sua capacidade de programação interna, o que significa que os desenvolvedores podem utilizar a plataforma para desenvolver aplicativos descentralizados (dApps).

## Como funciona o Ether?
Ether é a criptomoeda nativa da rede Ethereum. Ele pode ser usado para pagar taxas de transação e serviços computacionais na rede Ethereum.
A Ethereum é uma tecnologia que engloba dinheiro digital, pagamentos globais e investimentos. A comunidade criou uma economia digital em expansão, novas maneiras de ganhar dinheiro online e muito mais. Está aberta a todos, em qualquer lugar no mundo.

## Qual a diferença entre Ether e Bitcoin?
A diferença entre Bitcoin e Ethereum é que Bitcoin é uma moeda, enquanto Ethereum é uma tecnologia de contabilidade que as empresas estão usando para construir novos programas. Ambos operam no que é chamado de tecnologia “blockchain”, mas a de Ethereum é mais robusta e completa.
Bitcoin possui uma política monetária fixa, garantindo previsibilidade ao investidor, enquanto Ethereum pretende ser uma estrutura computacional para aplicações descentralizadas de terceira geração, incluindo Web 3.0.
As transações de Ethereum são tipicamente mais baratas que as transações de Bitcoin, pois as taxas do Ethereum se baseiam na quantidade de dados utilizados na transação, enquanto as taxas de Bitcoin se baseiam na quantidade de bitcoin que está sendo enviada.
Além disso, os contratos inteligentes do Ethereum são mais seguros e eficientes do que os do Bitcoin, pois são alimentados por tecnologia avançada, como o sharding. 

## O que são Smart Contracts(contratos inteligentes)?
Um contrato inteligente é um acordo digital entre duas ou mais partes que é programado e executado por código computacional. O contrato inteligente tem as mesmas finalidades dos contratos tradicionais, mas dispensa intermediários centralizados. O contrato inteligente é autoexecutável e automático, ou seja, ele se cumpre ou se faz cumprir por si só.
Os contratos inteligentes são executados na blockchain, o que implica que os termos são armazenados em uma base de dados distribuída e não podem ser modificados. As transações também são processadas pela blockchain, o que automatiza pagamentos e contrapartidas.

## Quais tecnologias devo usar para desenvolver um meu token?
Para criar um token ERC-20, você precisará das seguintes tecnologias:

1. **Solidity**: [Solidity](https://soliditylang.org/). é a linguagem de programação usada para escrever contratos inteligentes na blockchain Ethereum.

2. **Remix**: [Remix](https://remix.ethereum.org/) é uma ferramenta online que permite escrever, testar e implantar contratos inteligentes escritos em Solidity.

3. **Metamask**: [Metamask](https://metamask.io/) é uma carteira de criptomoedas que permite interagir com a blockchain Ethereum.
  
4. **Truffle ou HardHat**: [Truffle](https://trufflesuite.com/truffle/) e [HardHat](https://hardhat.org/) São frameworks de desenvolvimento que facilitam a criação, compilação, implantação e teste de contratos inteligentes.

Vamos ver o passo a passo para criar e testar um token...

## Quais são os passos para criar e testar um toke?

1. Neste caso baixe o arquivo [IFGoiano-Crypto.sol](https://github.com/claulis/IFGoiano-token/blob/main/IFGoiano-Crypto.sol). Este arquivo é um Smart Contract desenvolvido com Solidity
2. Acesse o Remix
3. Importe o arquivo no Remix
4. Compile
5. Faça deploi em um ambiente de teste
6. Teste as Funções

## IFGoiano-Crypto.sol

```Solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract IFGoianoCoin
{
   //ERC-20:todos os membros privados e usando underscore, somente de leitura.
   //ERC-20: numero total de toknes disponível no mercado
   //Para criar 10.000 tokens “inteiros”, 
   //mas que cada um possa ser dividido com 18 casas decimais, 
   //preciso elevar 10k à potência de 18, 
   //o que estou fazendo ali na primeira linha usando o operador ** (potência) do Solidity.
   uint private _totalSupply = 10000 * 10 ** 18;
   string private _name = "IFGoiano-Coin";
   string private _symbol = "IFGoianoCoin";
   //ERC-20:menor fração possivel, casa decimais da moeda
   uint private _decimals = 18;

   mapping(address => uint) private _balances;
   //ERC-20: o construtor será invocado apenas uma svez no deploy
   //a invocação fará circular a moeda ou token
   constructor(){
    //msg é o estado global que representa a transação do disparou o deploy retornando as informações
    //.sender é o endereço da carteira que está fazendo a transação msg
    _balances[msg.sender] = _totalSupply;
   /* Usamos este endereço sender para acessar no mapping o saldo daquela carteira e 
   alteramos o valor dela para que seja igual ao _totalSupply, ou seja, 
   ter em sua posse todo o fornecimento IFGoianoCoin. */
   }

   //ERC-20: funções de leitura de informações do token OBRIGATÓRIAS

   function name() public view returns (string memory){
    return _name;
   }

   function symbol() public view returns (string memory){
    return _symbol;
   }

   function decimals() public view returns (uint){
    return _decimals;
   }
   //ERC-20: retorna o saldo de tokens de um determinado endereço
   function balanceOf(address owner) public view returns(uint){
    return _balances[owner];
   }

   event Transfer(address indexed from, address indexed to, uint256 value);

   //ERC-20: função que serve para enviar uma quantia para um endereço
   //to é o endereço para enviar tokens
   //value é o numero de tokens
   //retorna verdadeiro se tudo a transferência for ok
   function transfer(address to, uint value) public returns(bool){
    //Esta linha garante que o remetente (msg.sender) tem tokens suficientes para a transferência. Se não tiver, a transação falha e retorna a mensagem “Saldo insuficiente”.
    require(balanceOf(msg.sender) >= value, "Saldo insuficiente.");
    //aumenta o saldo do destinatario
    _balances[to] += value;
    //diminui o saldo do remetente
    _balances[msg.sender] -= value;
    // evento da blockchain: uma transferência foi registrada com so valores enviados e destinatário
    emit Transfer(msg.sender, to, value);
    return true;
   }

   mapping(address => mapping(address => uint)) private _allowances;
   event Approval(address indexed owner, address indexed spender, uint value);
   
   /*A função approve é uma parte do contrato inteligente que permite a um usuário 
   (neste caso, msg.sender) aprovar outro usuário (o spender) para retirar uma certa quantidade 
   (value) de tokens em seu nome.*/
   function approve(address spender, uint value) public returns(bool){
    //define quando o spender pode usar
    _allowances[msg.sender][spender] = value;
    //registra na blockchain
    emit Approval(msg.sender, spender, value);
    return true;
   }
   
  /*permite a um usuário 
  (neste caso, msg.sender) transferir uma certa quantidade (value) de tokens de um
   endereço (from) para outro endereço (to)*/
  function transferFrom(address from, address to, uint value) public returns(bool){
    require(balanceOf(from) >= value, "Saldo Insuficiente.");
    //Esta linha verifica se o endereço de origem autorizou a 
    //retirada da quantidade de tokens necessária para a transferência.
    require(_allowances[from][msg.sender] >= value, "Saldo autorizado insuficiente.");
    _balances[to] += value;
    _balances[from] -= value;
    // subtrai a quantidade de tokens transferidos da quantidade autorizada para retirada pelo endereço de origem.
    _allowances[from][msg.sender] -= value;
    emit Transfer(from, to, value);
    return true;
  }

}
```

## Remix
Abra o Remix e faça upload clicando no icone evidenciado na imagem

![remix1](https://github.com/claulis/IFGoiano-token/assets/5414440/83252bc5-65c5-42f1-a15c-a4f28f9f4c2a)

Agora o contrato vai aparecer no final na pasta contracts

![remix2](https://github.com/claulis/IFGoiano-token/assets/5414440/2ebf456a-501f-4941-984d-95a13960a1b9)

### Compilar IFGoiano-Crypto.sol
Um Smart Contract em Solidity precisa ser compilado, assim como muitas outras linguagens de programação.

Na imagem estão evidenciados onde compilar o arquivo
![remix3](https://github.com/claulis/IFGoiano-token/assets/5414440/90b6ef8c-26ce-4ec6-969a-48aab525f9d1)

No código à direita podemos ver `pragma solidity 0.8.18;` que é uma diretiva que especifica a versão do compilador a ser usada para a compilação do código do contrato inteligente escrito em Solidity. Pragma é geralmente a primeira linha de código em qualquer arquivo Solidity

Se o contrato compilou sem erros vai comparece um selo verde que indica que tudo deu certo

![remix4](https://github.com/claulis/IFGoiano-token/assets/5414440/98022320-b753-4ed0-9809-f19c3be3539c)














