pragma solidity ^0.4.0


contract sample {
    uint storeData;
    function set(uint x){
        storeData=x;
    }
    function get() constant returns (uint) {
        return storeData;
    }

}
