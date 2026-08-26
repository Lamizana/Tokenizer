# GOLD42 (G42)

> Jeton BEP-20 créé sur la BNB Smart Chain — projet « Tokeniser » (42 × BNB Chain)

| | |
|---|---|
| **Nom** | GOLD42 |
| **Ticker** | G42 |
| **Norme** | BEP-20 (compatible ERC-20) |
| **Réseau** | BNB Smart Chain — Testnet |
| **Décimales** | 18 |
| **Supply maximale** | 1 000 000 G42 (plafond absolu) |
| **Supply initiale** | 800 000 G42 (80 %) |
| **Langage** | Solidity `^0.8.0` · OpenZeppelin Contracts |

---

## Adresse du contrat

- **Réseau** : BSC Testnet (Chain ID : 97)
- **Contrat** : [`0xa3B9A3eb3F2aE8ed3a6788F4Ccbdb1e503FE6aaD`](https://testnet.bscscan.com/address/0xa3B9A3eb3F2aE8ed3a6788F4Ccbdb1e503FE6aaD)
- **Transaction de déploiement** : [`0x8646886e694e70d679d8bd5a46eb8429528b1ed63ae7288799f597d643ad830d`](https://testnet.bscscan.com/tx/0x8646886e694e70d679d8bd5a46eb8429528b1ed63ae7288799f597d643ad830d)

---

## Choix techniques

### Pourquoi la BNB Smart Chain (BEP-20) ?

Le projet s'inscrit dans le partenariat 42 × BNB Chain. La BSC offre des frais de transaction
très faibles, une compatibilité totale avec l'écosystème Ethereum (EVM), et un faucet de tBNB
gratuits permettant de travailler sans jamais engager d'argent réel.

### Pourquoi OpenZeppelin ?

Le contrat hérite du contrat `ERC20` d'OpenZeppelin, implémentation de référence auditée et
utilisée par l'industrie. Cela évite de réimplémenter à la main `transfer`, `approve`,
`transferFrom` et leurs pièges connus (réentrance, débordements, etc.).

### Pourquoi Remix ?

Remix est un IDE en ligne, sans installation, qui permet de compiler, tester sur machine
virtuelle puis déployer directement via MetaMask. C'est l'outil le plus direct pour un projet
de cette taille, et il est recommandé par la documentation officielle de BNB Chain.

### Pourquoi une supply partielle au déploiement ?

80 % de la supply (800 000 G42) est créée au déploiement au profit du propriétaire ; les
20 % restants (200 000 G42) peuvent être mintés ultérieurement par le propriétaire. Le
plafond absolu de 1 000 000 G42 est gravé dans le contrat et impossible à dépasser. Ce choix
rend la fonction `mint()` réellement fonctionnelle tout en garantissant une offre plafonnée
et prévisible.

---

## Utilisation

### Configurer MetaMask sur BSC Testnet

1. MetaMask → Réseaux → **Ajouter un réseau manuellement** :
   - Nom du réseau : `BSC Testnet`
   - URL RPC : `https://data-seed-prebsc-1-s1.binance.org:8545/`
   - ID de chaîne : `97`
   - Symbole : `tBNB`
   - Explorateur : `https://testnet.bscscan.com`
2. Obtenir des tBNB gratuits via le [faucet BNB Chain](https://www.bnbchain.org/)
3. Importer le token G42 : coller l'adresse du contrat
   `0xB03B454DDa79A522603f2a21471A6bC6B24dDb80` (symbole et décimales détectés automatiquement)

### Fonctions principales

| Fonction | Rôle | Accès |
|---|---|---|
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

## Sécurité

- **Propriété explicite** : seules les fonctions `mint` et `transferOwnership` sont
  restreintes au propriétaire (`onlyOwner`) ; personne d'autre ne peut créer de tokens.
- **Offre plafonnée** : le total émis ne peut jamais dépasser 1 000 000 G42.
- **Transfert de propriété protégé** : adresse zéro refusée + événement
  `OwnershipTransferred` émis pour tracer chaque changement.
- **Aucun privilège caché** : pas de pause, pas de blacklist, pas de frais prélevés —
  les détenteurs restent libres de leurs fonds.
- **Zéro argent réel** : déploiement sur testnet uniquement.

---

## Structure du dépôt

```
code/           source du smart contract (token.sol)
deployement/    informations de déploiement + ABI du contrat
documentation/  documentation du projet (blockchain, explorateurs, token)
```

## Documentation

- [`documentation/gold42.md`](documentation/gold42.md) — fonctionnement détaillé du token
- [`documentation/blockchain.md`](documentation/blockchain.md) — rappels sur la blockchain
- [`documentation/bscscan.md`](documentation/bscscan.md) — explorateur de blocs BscScan
