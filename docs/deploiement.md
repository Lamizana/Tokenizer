# Déploiement — GOLD42 (G42)

> Mise à jour : 21/08/2026

---

## Outil utilisé : Remix IDE

[Remix](https://remix.ethereum.org) est une application open source permettant de développer,
compiler, déployer et tester des smart-contracts compatibles EVM (dont la BNB Smart Chain).

Le contrat [`contracts/GOLD42.sol`](../contracts/GOLD42.sol) a été compilé avec Solidity `^0.8.0`, puis déployé via l'environnement **« Injected Provider - MetaMask »** connecté à la **BSC Testnet**.

---

## Informations de déploiement

| Élément | Valeur |
| --- | --- |
| **Contrat GOLD42** | [`0xB03B454DDa79A522603f2a21471A6bC6B24dDb80`](https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80) |
| **Réseau** | BNB Smart Chain **Testnet** (Chain ID : 97) |
| **Transaction de création** | [`0xfb066f35f5541f90bdc8d3d1bd5bc68be43318bdb83e9504b34e2ca7ee53645d`](https://testnet.bscscan.com/tx/0xfb066f35f5541f90bdc8d3d1bd5bc68be43318bdb83e9504b34e2ca7ee53645d) |
| **Date** | 21/08/2026 |
| **Adresse du déployeur (owner)** | `0x...` |
| **Coût du déploiement** | 0,001544511 BNB ([transaction](https://testnet.bscscan.com/tx/0xfb066f35f5541f90bdc8d3d1bd5bc68be43318bdb83e9504b34e2ca7ee53645d)) |
| **Vérifié sur BscScan** | Oui — le code source est public et vérifié |

---

## Paramètres de compilation

| Paramètre | Valeur |
| --- | --- |
| **Compilateur** | Solidity `^0.8.0` |
| **Environnement** | Injected Provider — MetaMask (BSC Testnet) |

### L'optimiseur Remix

L'**optimiseur** du compilateur Solidity modifie le bytecode produit afin de réduire la
taille du contrat déployé et le coût en gas lors des appels. Remix l'active par défaut
avec 200 *runs* (un compromis entre taille de déploiement et coût d'exécution).

Pour vérifier les paramètres exacts utilisés lors du déploiement :
1. Ouvrir [Remix](https://remix.ethereum.org)
2. Charger [`contracts/GOLD42.sol`](../contracts/GOLD42.sol)
3. Aller dans l'onglet **Solidity Compiler**
4. Cliquer sur **Advanced Configurations**
5. Consulter la case **Enable optimization** et le champ **Runs**

---

## Configuration réseau — BSC Testnet

| Paramètre | Valeur |
| --- | --- |
| Nom du réseau | BSC Testnet |
| Chain ID | 97 |
| URL RPC | `https://data-seed-prebsc-1-s1.binance.org:8545/` |
| Symbole du gas | tBNB |
| Explorateur | `https://testnet.bscscan.com` |

---

## Procédure de test post-déploiement

Après le déploiement, les vérifications suivantes ont été (ou peuvent être) effectuées
directement via l'onglet **Read Contract** de [BscScan](https://testnet.bscscan.com) :

| Étape | Fonction à appeler | Résultat attendu |
| --- | --- | --- |
| 1 | `balanceOf(0x...)` | `800000000000000000000000` (800 000 G42) |
| 2 | `totalSupply()` | `800000000000000000000000` (800 000 G42) |
| 3 | `owner()` | `0x...` |
| 4 | `name()` | `GOLD42` |
| 5 | `symbol()` | `G42` |
| 6 | `decimals()` | `18` |

### Tests interactifs (via MetaMask ou l'onglet Write Contract)

1. **Transfer** : envoyer des G42 depuis le wallet owner vers une 2e adresse, vérifier
   la balance du destinateur et du destinataire.
2. **Mint** : appeler `mint(adresse, montant)` depuis le wallet owner → vérifier que
   `totalSupply` a augmenté.
3. **Mint (refus)** : appeler `mint(...)` depuis un wallet **non-owner** → la transaction
   doit échouer avec le message `GOLD42: only owner can perform this action`.
4. **Burn** : appeler `burn(montant)` depuis un wallet détenteur de G42 → vérifier que
   la balance a diminué.
5. **TransferOwnership** : appeler `transferOwnership(nouvelleAdresse)` depuis le wallet
   owner → vérifier que `owner()` retourne la nouvelle adresse.
6. **TransferOwnership (refus adresse zéro)** : appeler `transferOwnership(0x0000...)`
   → la transaction doit échouer avec `GOLD42: new owner is the zero address`.

---

## Fichiers du déploiement

| Fichier | Description |
| --- | --- |
| [`abi/GOLD42.json`](../abi/GOLD42.json) | ABI du contrat déployé, à utiliser pour interagir avec le token (MetaMask « Importer un jeton », Ethers.js, Web3.js…) |
| `deploiement.md` | Ce fichier — récapitulatif complet du déploiement |

---

## Qu'est-ce que l'ABI ?

L'ABI (`Application Binary Interface`) est une interface binaire d'application. Dans le
contexte des contrats intelligents, elle fournit une méthode standardisée d'interaction.
L'ABI documente les fonctions, les événements et les erreurs d'un contrat intelligent et
sert à encoder les données envoyées au contrat et à décoder celles reçues.

Un fichier ABI est un tableau JSON dont chaque élément est un objet décrivant les
composants du contrat intelligent. Ces composants peuvent être un constructeur, une
fonction, un événement, une erreur ou un comportement de repli. Il spécifie les entrées
et les sorties, y compris leurs noms et types.

## Pourquoi avons-nous besoin d'ABI pour interagir avec les contrats intelligents ?

Le code source de votre contrat intelligent (qu'il soit écrit en Solidity, Vyper ou tout
autre langage) n'est pas le code exécuté sur la blockchain. Le bytecode généré lors de la
compilation constitue le véritable contrat intelligent déployé sur la machine virtuelle
Ethereum (EVM) ou l'écosystème Binance. L'ABI permet de faire le pont entre les deux :
elle décrit comment encoder les appels de fonctions en bytecode compréhensible par l'EVM,
et comment décoder les résultats renvoyés.
