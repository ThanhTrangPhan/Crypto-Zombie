<<<<<<< HEAD
// SPDX-License-Identifier: MIT
=======
>>>>>>> fe8a77ee078bc2726c7282d4d38f37298de5086d
pragma solidity >=0.5.0;

import "./zombieattack.sol";
import "./erc721.sol";
import "./safemath.sol";

contract ZombieOwnership is ZombieAttack, ERC721 {

  using SafeMath for uint256;

  mapping (uint => address) zombieApprovals;

<<<<<<< HEAD
  function balanceOf(address _owner) external override view returns (uint256) {
    return ownerZombieCount[_owner];
  }

  function ownerOf(uint256 _tokenId) external override view returns (address) {
=======
  function balanceOf(address _owner) external view returns (uint256) {
    return ownerZombieCount[_owner];
  }

  function ownerOf(uint256 _tokenId) external view returns (address) {
>>>>>>> fe8a77ee078bc2726c7282d4d38f37298de5086d
    return zombieToOwner[_tokenId];
  }

  function _transfer(address _from, address _to, uint256 _tokenId) private {
    ownerZombieCount[_to] = ownerZombieCount[_to].add(1);
    ownerZombieCount[msg.sender] = ownerZombieCount[msg.sender].sub(1);
    zombieToOwner[_tokenId] = _to;
    emit Transfer(_from, _to, _tokenId);
  }

<<<<<<< HEAD
  function transferFrom(address _from, address _to, uint256 _tokenId) external override payable {
=======
  function transferFrom(address _from, address _to, uint256 _tokenId) external payable {
>>>>>>> fe8a77ee078bc2726c7282d4d38f37298de5086d
      require (zombieToOwner[_tokenId] == msg.sender || zombieApprovals[_tokenId] == msg.sender);
      _transfer(_from, _to, _tokenId);
    }

<<<<<<< HEAD
  function approve(address _approved, uint256 _tokenId) external override payable onlyOwnerOf(_tokenId) {
=======
  function approve(address _approved, uint256 _tokenId) external payable onlyOwnerOf(_tokenId) {
>>>>>>> fe8a77ee078bc2726c7282d4d38f37298de5086d
      zombieApprovals[_tokenId] = _approved;
      emit Approval(msg.sender, _approved, _tokenId);
    }

}
