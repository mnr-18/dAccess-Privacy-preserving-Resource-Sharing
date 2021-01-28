# Privacy-preserving-Resource-Sharing
Proof-of-concept implementation of a privacy preserving resource sharing system using permissioned blockchian.
# How it works
- [Advertise an object](#advertise)
- [Request access](#request)

## Advertise
- A_o: resource owner
- B_r: resource requester
![SequenceDiagAdvertise](https://user-images.githubusercontent.com/75406127/106031414-7cc67180-608c-11eb-82b3-185d7ab2819f.jpg)

## Request 
![SequenceDiag](https://user-images.githubusercontent.com/75406127/106031457-88b23380-608c-11eb-8563-417d3dd1af2f.jpg)

# Required tools for blockhain
- [Truffle](https://www.trufflesuite.com/truffle): a development framework for Ethereum.
- [Ganache](https://www.trufflesuite.com/ganache): personal blockchain for Ethereum application development.
- [Remix](https://remix.ethereum.org/): a browser-based IDE.

# Required Crypto tools
- [Symmetric key encryption](www.openssl.org): OpenSSL library supported AES-256-CBC encryption scheme.
- [CP-ABE Library](http://acsc.cs.utexas.edu/cpabe): CP-ABE toolkit supported by advanced crypto software collection service.
- [Ring Signature](https://en.wikipedia.org/wiki/Ring_signature): How to leak a secret by Rivest et al.
