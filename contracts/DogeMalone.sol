/*
 *    ██████╗  ██████╗  ██████╗ ███████╗                    
 *    ██╔══██╗██╔═══██╗██╔════╝ ██╔════╝                    
 *    ██║  ██║██║   ██║██║  ███╗█████╗                      
 *    ██║  ██║██║   ██║██║   ██║██╔══╝                      
 *    ██████╔╝╚██████╔╝╚██████╔╝███████╗                    
 *    ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝                    
 *                                                          
 *    ███╗   ███╗ █████╗ ██╗      ██████╗ ███╗   ██╗███████╗
 *    ████╗ ████║██╔══██╗██║     ██╔═══██╗████╗  ██║██╔════╝
 *    ██╔████╔██║███████║██║     ██║   ██║██╔██╗ ██║█████╗  
 *    ██║╚██╔╝██║██╔══██║██║     ██║   ██║██║╚██╗██║██╔══╝  
 *    ██║ ╚═╝ ██║██║  ██║███████╗╚██████╔╝██║ ╚████║███████╗
 *    ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝
 *                                                          
 *
 * Doge Malone, the only ERC20 token in a while with a use case!
 *
 * website: https://dogemalone.club
 * dapp: https://dapp.dogemalone.club
 * docs: https://docs.dogemalone.club
 * Telegram: https://t.me/dogemaloneofficial
 * Github: https://github.com/DogeMalone
 *
 * We officaly partnered with a NFT game/platform!
 */

// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DogeMalone is ERC20, ERC20Burnable, Ownable {
  constructor() ERC20("DogeMalone", "DM") {
    _mint(msg.sender, 1000000000 * 10**18);
  }

  // @Dev if you renounce ownership any of these functions below go away
  // these are sweep functions to remove any excess tokens sent to contract
  // so you don't have to use the line of, "well it's on the contract, so
  // can't do anything about it."

  // @Dev function useful for accidental ETH transfers to contract (to owner)
  // wraps owner() in payable to fix address -> address payable
  function sweepEth() public onlyOwner {
    payable(owner()).transfer(address(this).balance);
  }

  // @Dev function useful for accidental ETH transfers to contract (to user address)
  // wraps _user in payable to fix address -> address payable
  function sweepEthToAddress(address _user) public onlyOwner {
    payable(_user).transfer(address(this).balance);
  }

  // @Dev function useful for accidental ERC20 transfers to contract (to owner)
  // calls ERC20 tokens minted by this contract only, using IERC20.transfer()
  function sweepTokens() public onlyOwner {
    IERC20(address(this)).transfer(owner(), IERC20(address(this)).balanceOf(address(this)));
  }

  // @Dev function useful for accidental ERC20 transfers to contract (to user address)
  // calls ERC20 tokens minted by this contract only, using IERC20.transfer()
  function sweepTokensToAddress(address _user) public onlyOwner {
    IERC20(address(this)).transfer(_user, IERC20(address(this)).balanceOf(address(this)));
  }

  // @Dev function useful for accidental ERC20 tokens of any type,
  // transferred to contract (to owner). Calls any ERC20 tokens by address,
  // and transfers via IERC20.transfer.
  function sweepAnyTokens(address _token) public onlyOwner {
    IERC20(_token).transfer(owner(), IERC20(_token).balanceOf(address(this)));
  }

  // @Dev function useful for accidental ERC20 tokens of any type,
  // transferred to contract (to user address). Calls any ERC20 tokens by address,
  // and transfers via IERC20.transfer.
  function sweepAnyTokensToAddress(address _token, address _user) public onlyOwner {
    IERC20(_token).transfer(_user, IERC20(_token).balanceOf(address(this)));
  }
}
