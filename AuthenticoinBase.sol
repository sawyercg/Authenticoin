pragma solidity ^0.6.1;
import "./ERC721Interface.sol";
contract AuthenticoinBase{


    struct Coin{
        uint256 brand;
        uint256 itemID;
        uint256 coinID;
        // Image extension is a link to an imgur page
        // All links are assumed to be preceded by https://imgur.com/a/
        //subject to change when we actually build a website
        uint256 imageExt;
    }

    ///Storage

    //array of all authenticoins in existence
    // coinID is the index of the coin in the array
    Coin[] authenticoins;

    mapping(uint256 => address) public coinIndexToOwner;

    mapping (address => uint256) ownershipTokenCount;

    mapping (uint256 => address) public coinIndexToApproved;

    function _createCoin(
        uint256 _brand,
        uint256 _itemID,
        uint256 _imageExt,
        address _owner
    ){
        //TODO: add creation requirements
        //coin must be added by authors (us) or brand accounts
        
        //TODO: create constructor

        //uint256 _coinID = coins.push(_coin)-1
        //TODO: Implement Genesis function
        //Genesis()
    }

}