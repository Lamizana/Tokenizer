# Déploiement — GOLD42 (G42)

> Mise à jour : 21/08/2026

---

## Outil utilisé : Remix IDE

[Remix](https://remix.ethereum.org) est une application open source permettant de développer,
compiler, déployer et tester des smart-contracts compatibles EVM (dont la BNB Smart Chain).

Le contrat `code/token.sol` a été compilé avec Solidity `^0.8.0`, puis déployé via
l'environnement **« Injected Provider - MetaMask »** connecté à la **BSC Testnet**.

---

## Informations de déploiement

| Élément | Valeur |
|---|---|
| **Contrat GOLD42** | [`0xa3B9A3eb3F2aE8ed3a6788F4Ccbdb1e503FE6aaD`](https://testnet.bscscan.com/address/0xa3B9A3eb3F2aE8ed3a6788F4Ccbdb1e503FE6aaD) |
| **Réseau** | BNB Smart Chain **Testnet** (Chain ID : 97) |
| **Transaction de création** | [`0x8646886e694e70d679d8bd5a46eb8429528b1ed63ae7288799f597d643ad830d`](https://testnet.bscscan.com/tx/0x8646886e694e70d679d8bd5a46eb8429528b1ed63ae7288799f597d643ad830d) |
| **Wallet déployeur (propriétaire)** | `0xdb016f6d39985bf6305e20e549f90A0A151E3FFf` |
| **Date** | 21/08/2026 |

> Un premier déploiement (contrat `0x69eF124b2033A69C6061cf88FfFBAE913E169fB2`) avait été
> réalisé avant la correction du contrat ; il est **obsolète** et remplacé par celui ci-dessus.

---

## Contenu du dossier

- `token_abi.json` : ABI du contrat déployé, à utiliser pour interagir avec le token
  (MetaMask « Importer un jeton », Ethers.js, Web3.js…)
