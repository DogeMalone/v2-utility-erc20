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

contract DogeMalone is ERC20, ERC20Burnable {
  constructor() ERC20("DogeMalone", "DM") {
    _mint(msg.sender, 1000000000 * 10**18);
  }
}
