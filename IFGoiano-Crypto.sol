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
