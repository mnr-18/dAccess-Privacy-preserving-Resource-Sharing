pragma solidity ^0.5.15;

contract uDir{
    address public AuthServ;
    address public Adj;
    
    struct UserData{
        string pid; //pseudonym of user
        string pk; //user public key (256 bytes)
        string cert_pk; //user certificate on PK given by BA
    }
    UserData[] public users; //array of users
    //uint index;
    
    constructor(address address_Adj) public {
       // Set the creator of contract as the Authentication service (AuthServ)
       AuthServ = msg.sender;
       Adj = address_Adj; //setting the adjuducator contract address
       //index = 0;
    }
    
    modifier onlyAuthServ() {
        require (msg.sender == AuthServ);
        _; //execute remaining parts from the functions where this modifier is used after doing the above check 
    }
	
	modifier onlyAdjAuth() {
        require (msg.sender == Adj);
        _; //execute remaining parts from the functions where this modifier is used after doing the above check 
    }
    
    function registerUser(string memory _pid, string memory _pk, string memory _cert) onlyAuthServ public{
        users.push(UserData(_pid, _pk, _cert));
    }
    
    function deleteUser (string memory _pk) onlyAdjAuth public{
		for (uint i=0; i<users.length; i++){
			if (users[i].pk == _pk){
				delete users[i].pid;
				delete users[i].pk;
				delete users[i].cert_pk;
			}
		}
    }
    
}
