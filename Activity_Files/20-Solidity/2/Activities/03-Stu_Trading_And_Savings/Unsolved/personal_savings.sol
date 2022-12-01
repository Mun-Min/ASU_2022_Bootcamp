pragma solidity ^0.5.0;

/*
4. Modify the `personal_savings.sol` starter file as follows:

    * Define a public function `withdraw` with two input parameters. An unsigned integer `amount`,
      and a payable address `recipient`.

    * In the body of the `withdraw` function, set a return value the result of the `transfer` function on the
      `recipient` address using the parametrized `amount`.

    * Add a public payable function `deposit`.

    * Add a payable fallback function.
*/

contract PersonalSavings {
  address payable public public_savings = 0x4aeCCa16Ba29d15104a25627aD383Ac700E86d5a;
  address payable private_savings = 0xb5aa4c3762F8AeE5c73548960fe0594a174fa587;
  string account_holder = "Jane Doe";
  uint public accountBalance;
  
  // withdraw function
  function withdraw(uint amount, address payable recipient) public {
      recipient.transfer(amount); 
  }

  // deposit function 
  function deposit() public payable { 
      accountBalance = address(this).balance; 
  }

  function() external payable {}
}
