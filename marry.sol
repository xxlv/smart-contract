pragma solidity ^0.4.0


contract MarriedMe {

    struct Couple {
        address man;
        address woman;

    }

    event MarriedEvent(Couple cp , uint256 time);

    function married() constant returns(bool){
        return true;
    }

}
