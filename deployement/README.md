# Déploiement — GOLD42 (G42)

> Mise à jour : 21/08/2026

---

## Outil utilisé : Remix IDE

[Remix](https://remix.ethereum.org) est une application open source permettant de développer,
compiler, déployer et tester des smart-contracts compatibles EVM (dont la BNB Smart Chain).

Le contrat `code/gold42.sol` a été compilé avec Solidity `^0.8.0`, puis déployé via
l'environnement **« Injected Provider - MetaMask »** connecté à la **BSC Testnet**.

---

## Informations de déploiement

| Élément | Valeur |
| --- | --- |
| **Contrat GOLD42** | [`0xB03B454DDa79A522603f2a21471A6bC6B24dDb80`](https://testnet.bscscan.com/address/0xa3B9A3eb3F2aE8ed3a6788F4Ccbdb1e503FE6aaD) |
| **Réseau** | BNB Smart Chain **Testnet** (Chain ID : 97) |
| **Transaction de création** | [`0xfb066f35f5541f90bdc8d3d1bd5bc68be43318bdb83e9504b34e2ca7ee53645d`](https://testnet.bscscan.com/tx/0xfb066f35f5541f90bdc8d3d1bd5bc68be43318bdb83e9504b34e2ca7ee53645d) |
| **Date** | 21/08/2026 |

---

## Contenu du dossier

- `token_abi.json` : ABI du contrat déployé, à utiliser pour interagir avec le token
  (MetaMask « Importer un jeton », Ethers.js, Web3.js…)
