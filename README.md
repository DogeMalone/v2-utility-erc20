# Doge Malone ERC20 Token:
### Requirements:
1. Node.js - Latest 
2. NPM - Latest
3. Truffle - Latest
4. hdwallet-provider - Latest
5. truffle-plugin-verify - Latest
6. Infura API-Key
7. Etherscan API-Key
8. Bncscan API-Key
9. mnemonic for generation of Private Key
10. .env setup:
  * MNEMONIC=""
  * INFURA_API_KEY=
  * ETHERSCAN_API_KEY=
  * BSCSCAN_API_KEY=
11. dontenv - Latest
12. git - Latest (if you plan on developing with us)
13. create .gitignore
  * add .env

### BNB Test net testing
[x] [Contract](https://testnet.bscscan.com/address/0xc18b9D1F652860090De629650d0DEA35B2856e11#code)<br>
[x] [DxSale](https://dxsale.app/app/v3/defipresale?saleID=80&chain=BSC-Test)

No real need for an audit, called up audited contracts from openzeppelin with only a constructor with ``name, symbol, and a mint``
