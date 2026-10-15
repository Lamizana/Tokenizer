<div align="center">

<p align="center">
  <a href="https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80"><img src="https://img.shields.io/badge/BNB_Smart_Chain-Testnet_(97)-F3BA2F?style=for-the-badge&logo=bnbchain&logoColor=black" alt="BSC Testnet"></a>
  <a href="https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80"><img src="https://img.shields.io/badge/Contrat-BEP--20-F0B90B?style=for-the-badge&logo=binance&logoColor=black" alt="BEP-20"></a>
  <a href="https://soliditylang.org/"><img src="https://img.shields.io/badge/Solidity-^0.8.0-363636?style=for-the-badge&logo=solidity&logoColor=white" alt="Solidity"></a>
  <a href="https://www.openzeppelin.com/"><img src="https://img.shields.io/badge/OpenZeppelin-Contracts-4E5EE4?style=for-the-badge&logo=openzeppelin&logoColor=white" alt="OpenZeppelin"></a>
  <a href="https://remix.ethereum.org/"><img src="https://img.shields.io/badge/IDE-Remix-007ACC?style=for-the-badge&logo=ethereum&logoColor=white" alt="Remix IDE"></a>
  <a href="https://fr.wikipedia.org/wiki/École_42"><img src="https://img.shields.io/badge/Projet-42_%C3%97_BNB_Chain-000000?style=for-the-badge&logo=42&logoColor=white" alt="42 × BNB Chain"></a>
</p>

# GOLD42 (G42)

**Jeton BEP-20 déployé sur la BNB Smart Chain Testnet**

Projet **Tokenizer** (42 × BNB Chain)

</div>

---

## Sommaire

<details>
<summary>Afficher le sommaire</summary>

- [GOLD42 (G42)](#gold42-g42)
  - [Sommaire](#sommaire)
  - [À propos](#à-propos)
  - [Spécifications du token](#spécifications-du-token)
  - [Adresse du contrat](#adresse-du-contrat)
  - [Fonctions principales](#fonctions-principales)
  - [Utilisation](#utilisation)
    - [Configurer MetaMask sur BSC Testnet](#configurer-metamask-sur-bsc-testnet)
    - [Vérifier un solde](#vérifier-un-solde)
  - [Compilation et déploiement](#compilation-et-déploiement)
  - [Sécurité](#sécurité)
  - [Structure du dépôt](#structure-du-dépôt)
  - [Documentation](#documentation)
  - [Choix techniques](#choix-techniques)
    - [Pourquoi la BNB Smart Chain ?](#pourquoi-la-bnb-smart-chain-)
    - [Pourquoi OpenZeppelin ?](#pourquoi-openzeppelin-)
    - [Pourquoi Remix ?](#pourquoi-remix-)
    - [Pourquoi une supply partielle au déploiement ?](#pourquoi-une-supply-partielle-au-déploiement-)
  - [Contribuer](#contribuer)
  - [Auteur](#auteur)
  - [Remerciements](#remerciements)
  - [Licence](#licence)

</details>

---

## À propos

**GOLD42** (`G42`) est un jeton **BEP-20**. C'est le standard des tokens fongibles de la BNB Smart Chain, équivalent du célèbre ERC-20 d'Ethereum déployé sur le **testnet** dans le cadre du projet **Tokenizer** (partenariat 42 × BNB Chain).

Le contrat s'appuie sur l'implémentation `ERC20` d'**OpenZeppelin**, est compilé en Solidity `^0.8.0`, déployé depuis **Remix** via **MetaMask**, puis **vérifié sur BscScan**.

L'objectif est pédagogique : écrire, compiler, déployer et vérifier un smart-contract de bout en bout, sans jamais engager d'argent réel.

| Ressource | Lien |
| --- | --- |
| Fiche du projet (portfolio) | [lamizana.github.io/ZehdBox/projets/tokenizer](https://lamizana.github.io/ZehdBox/projets/tokenizer/) |
| Contrat vérifié | [BscScan — `0xB03B…dDb80`](https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80) |


---

## Spécifications du token

| Propriété | Valeur |
| --- | --- |
| **Nom** | GOLD42 |
| **Symbole** | G42 |
| **Norme** | BEP-20 (ERC-20 d'OpenZeppelin) |
| **Réseau** | BNB Smart Chain - Testnet (Chain ID : 97) |
| **Décimales** | 18 |
| **Supply maximale** | 1 000 000 G42 (plafond absolu) |
| **Supply initiale** | 800 000 G42 (80 %) |
| **Langage** | Solidity `^0.8.0` · OpenZeppelin Contracts |

---

## Adresse du contrat

- **Réseau** : BSC Testnet (Chain ID : 97)
- **Contrat** : [`0xB03B454DDa79A522603f2a21471A6bC6B24dDb80`](https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80)
- **Transaction de déploiement** : [`0xfb066f3…53645d`](https://testnet.bscscan.com/tx/0xfb066f35f5541f90bdc8d3d1bd5bc68be43318bdb83e9504b34e2ca7ee53645d)
- **Code source** : vérifié et public sur BscScan (onglet *Contract*)

---

## Fonctions principales

| Fonction | Rôle | Accès |
| --- | --- | --- |
| `transfer(to, amount)` | Envoyer des G42 | Tous |
| `balanceOf(account)` | Consulter un solde | Lecture |
| `approve(spender, amount)` | Autoriser un tiers à dépenser pour vous | Tous |
| `allowance(owner, spender)` | Consulter une autorisation | Lecture |
| `transferFrom(from, to, amount)` | Dépenser via une autorisation | Spender autorisé |
| `mint(recipient, amount)` | Créer des G42 (dans la limite du plafond) | Propriétaire |
| `burn(amount)` | Détruire définitivement ses propres G42 | Tous |
| `transferOwnership(newOwner)` | Transférer la propriété du contrat | Propriétaire |

> Les montants s'expriment en unités de base : `1 G42 = 10^18`.
> Exemple : 100 G42 = `100000000000000000000`.

---

## Utilisation

### Configurer MetaMask sur BSC Testnet

1. MetaMask → Réseaux → **Ajouter un réseau manuellement** :
   - Nom du réseau : `BSC Testnet`
   - URL RPC : `https://data-seed-prebsc-1-s1.binance.org:8545/`
   - ID de chaîne : `97`
   - Symbole : `tBNB`
   - Explorateur : `https://testnet.bscscan.com`
2. Obtenir des tBNB gratuits via le [faucet BNB Chain](https://www.bnbchain.org/en/testnet-faucet)
3. Importer le token G42 : coller l'adresse du contrat `0xB03B454DDa79A522603f2a21471A6bC6B24dDb80` (symbole et décimales détectés automatiquement)

### Vérifier un solde

Depuis l'onglet **Read Contract** de [BscScan](https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80#readContract) :

- `balanceOf(<adresse>)` → solde en unités de base (`800000000000000000000000` = 800 000 G42)
- `totalSupply()` → `800000000000000000000000` tant que `mint()` n'a pas été appelée
- `name()` / `symbol()` / `decimals()` → `GOLD42` / `G42` / `18`

---

## Compilation et déploiement

1. Ouvrir [Remix IDE](https://remix.ethereum.org) et créer un espace de travail.
2. Ajouter le contrat dans `code/` (`token.sol` ou `g42.sol` : Remix résout seul l'import `@openzeppelin/contracts/token/ERC20/ERC20.sol`).
3. Compiler en Solidity `^0.8.0` (optimiseur activé par défaut, 200 *runs*).
4. Onglet **Deploy & Run** → environnement **Injected Provider - MetaMask**, connecté à
   **BSC Testnet**.
5. Cliquer sur **Deploy**, confirmer la transaction dans MetaMask, puis noter l'adresse du contrat et le hash de la transaction.
6. **Vérifier le contrat** sur BscScan : coller le code source **exact** compilé (Solidity, fichier unique, version et licence identiques à Remix) et valider.

Le détail complet (paramètres de compilation, coût en gas, ABI et tests interactifs) est dans [`deployement/informations.md`](deployement/informations.md).

---

## Sécurité

- **Propriété explicite** : seules les fonctions `mint` et `transferOwnership` sont restreintes au propriétaire (`onlyOwner`) ; personne d'autre ne peut créer de tokens.
- **Offre plafonnée** : le total émis ne peut jamais dépasser 1 000 000 G42.
- **Transfert de propriété protégé** : adresse zéro refusée + événement
  `OwnershipTransferred` émis pour tracer chaque changement.
- **Aucun privilège caché** : pas de pause, pas de blacklist, pas de frais prélevés. Les détenteurs restent libres de leurs fonds.
- **Zéro argent réel** : déploiement sur testnet uniquement.

---

## Structure du dépôt

```text
.
├── code/
│   ├── token.sol        contrat GOLD42 (nom attendu par le sujet 42)
│   └── g42.sol          même contrat, version compilée et déployée
├── deployement/
│   ├── informations.md  déploiement : outil, paramètres, coûts, tests
│   └── token_abi.json   ABI du contrat déployé
├── documentation/
│   ├── gold42.md        fonctionnement détaillé du token
│   ├── blockchain.md    rappels sur la blockchain et la BNB Smart Chain
│   ├── bscscan.md       lire et vérifier un contrat sur BscScan
│   ├── sujet.md         sujet officiel du projet
│   └── tokeniser.pdf    rapport complet (PDF)
├── sujet.md             sujet officiel (même contenu que documentation/sujet.md)
├── roadmap.html         feuille de route du projet
├── Tokeniser — Tutoriel pas à pas.html
├── LICENSE
└── README.md
```

---

## Documentation

- [`documentation/gold42.md`](documentation/gold42.md) — fonctionnement détaillé du token
- [`documentation/blockchain.md`](documentation/blockchain.md) — rappels sur la blockchain et la BNB Smart Chain
- [`documentation/bscscan.md`](documentation/bscscan.md) — lire et vérifier un contrat sur BscScan
- [`deployement/informations.md`](deployement/informations.md) — déploiement : outil, paramètres, coûts et tests
- [`documentation/sujet.md`](documentation/sujet.md) — sujet officiel du projet (42 × BNB Chain)
- [`Tokeniser — Tutoriel pas à pas.html`](Tokeniser%20%E2%80%94%20Tutoriel%20pas%20%C3%A0%20pas.html) — tutoriel complet, en HTML
- [`documentation/tokeniser.pdf`](documentation/tokeniser.pdf) — rapport complet (PDF)
- [`roadmap.html`](roadmap.html) — feuille de route du projet

---

## Choix techniques

### Pourquoi la BNB Smart Chain ?

[Remix](https://remix.ethereum.org) mis à part, la BNB Smart Chain est un réseau EVM : le contrat Solidity y fonctionne sans modification et l'écosystème d'outils est le même qu'Ethereum, pour des frais beaucoup plus faibles et un faucet de tBNB gratuits en testnet.

### Pourquoi OpenZeppelin ?

L'implémentation `ERC20` d'OpenZeppelin est auditée et fait référence : elle fournit `transfer`, `approve`, `transferFrom` et les événements du standard, sans réécrire à la main des mécanismes sensibles.

### Pourquoi Remix ?

Remix est un IDE en ligne, sans installation, qui compile, teste sur machine virtuelle et déploie via MetaMask. C'est l'outil le plus direct pour un projet de cette taille, et celui recommandé par la documentation officielle de BNB Chain.

### Pourquoi une supply partielle au déploiement ?

80 % de la supply (800 000 G42) est créée au déploiement au profit du propriétaire ; les 20 % restants (200 000 G42) peuvent être mintés ultérieurement par le propriétaire. Le plafond absolu de 1 000 000 G42 est gravé dans le contrat et impossible à dépasser. Ce choix rend la fonction `mint()` réellement fonctionnelle tout en garantissant une offre plafonnée et prévisible.

---

## Contribuer

Le dépôt est avant tout un projet pédagogique 42 : propositions, corrections et remarques sont bienvenues via une **issue** ou une **pull request**.

Les messages de commit suivent [Conventional Commits](https://www.conventionalcommits.org/fr/v1.0.0/) :

| Préfixe | Usage |
| --- | --- |
| `feat` | nouvelle fonctionnalité (ex. : `feat(code): ajoute la fonction burn`) |
| `fix` | correction de bug |
| `docs` | documentation seule |
| `chore` | maintenance (configuration, fichiers annexes) |

---

## Auteur

**Alex Lamizana**: étudiant 42 Angoulême, spécialisation Data & IA

- [Site](https://lamizana.github.io/ZehdBox/)
- [GitHub](https://github.com/Lamizana)

---

## Remerciements

- [OpenZeppelin](https://www.openzeppelin.com/) : contrats Solidity audités (`ERC20`)
- [Remix IDE](https://remix.ethereum.org/) : compilation et déploiement
- [BscScan](https://testnet.bscscan.com/) : exploration et vérification du contrat
- [BNB Chain](https://www.bnbchain.org/) : documentation et faucet testnet

---

## Licence

Distribué sous licence **MIT** (SPDX : `MIT`) - voir [`LICENSE`](LICENSE).

© 2026 Alex Lamizana

---

<div align="center">

*Ce projet a été réalisé conformément à la norme et au sujet officiel de 42.*

</div>