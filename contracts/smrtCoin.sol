//decalrar el pragma para la compilacion
pragma solidity ^0.6.12;

//imports

//Contrato
/* 
* Contrato para almacenar los balances de trdCoin
* 
*/

contract smrtCoin{
    //Variables
    mapping (address => uint) balances;

    //constructor
    constructor() public{
        balances[msg.sender] = 1000;
    }
    //metodos
    function send(addres _receiver, uint _amount) public{

        /*if(balances[msg.sender] > _amount){

            balances[msg.sender] -= _amount;
            balances[receiver] += _amount;

        }else{
            //no tendria fondos el balance del que manda
            revert();
        }*/
        // haciendo una transcripcion del ciclo IF usamos el require y hace una evaluacion booleana y de ser false la evaluacion, automaticamente hace un REVERT 
        require(balances[msg.sender] > _amount);
            balances[msg.sender] -= _amount;
            balances[receiver] += _amount;
    }

    function getBalance() public view returns(uint){
        return balances[msg.sender];
    }
}