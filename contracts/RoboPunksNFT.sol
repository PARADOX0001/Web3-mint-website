// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/access.Ownable.sol';

contract RoboPunkNFT is ERC721, Ownable{
    uint256 public mintPrice;
    uint256 public totalSupply;
    uint256 public maxSupply;
    uint256 public maxPerWallet;
    bool public isPublicMintEnabled;
    string internal baseTokenUri;
    address payable public withdrawWallet;
    mapping(address => unint256 public walletMints);

    constructor() payable ERC721('RoboPunks', 'RP'){
        mintPrice = 0.02 eteher;
        totalSupply = 0;
        maxSupply = 1000;
        maxPerWallet = 3;
        
    
        //Set withdraw adddress
    }    

        function setIsPublicMintEnabled(bool isPublicMintEnabled_) external onlyOwner{
            isPublicMintEnabled= isPublicMintEnabled_;
        }
        
        function setBaseUri (string calldata baseTokenUri_) external onlyOwner{
            baseTokenUri =  baseTokenUri_ ;
        }

        function tokenURI(uint256 tokenId_) public view override returns(string memory){
            require(_exists(tokenId_), 'Token does not exist!');
            return string(abi.encodePacked(baseTokenUri, String.toString(tokenId_), ".json"));

            funtion withraw() external onlyOwner{
                (bool success, ) = withrawWallet.call{value: address(this).balance}('')}
                require(success, withraw)
            }
        }
        
}