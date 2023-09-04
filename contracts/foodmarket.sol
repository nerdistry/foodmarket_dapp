/* Specifying the license that the constract uses. */
//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0; // 'pragma' - to specify the solidity version we want the compiler yo use.

  

contract foodmarket {

    // These are the requirements.

    struct product{
        address payable owner;
        string name;
        string image;
        string description;
        string location;
        uint price;
        uint sold;
    }




mapping (uint => product) internal products; 

function write_product(
    uint _index, 
    string memory _name,
    string memory _image,
    string memory _description,
    string memory _location,
    uint _price
    ) 
    public{
    uint _sold = 0;
    products[_index] = product(
        payable(msg.sender),
        _name,
        _image,
        _description,
        _location,
        _price,
        _sold
    );
}

function read_product(uint _index) public view returns (
    address payable,
    string memory,
    string memory,
    string memory,
    string memory,
    uint,
    uint

){
    return (
        products[_index].owner,
        products[_index].name,
        products[_index].image,
        products[_index].description,
        products[_index].location,
        products[_index].price,
        products[_index].sold
    );
}
}
