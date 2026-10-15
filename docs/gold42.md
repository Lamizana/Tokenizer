# GOLD42 (G42) | Livre blanc

> Document de présentation du jeton GOLD42

---

## 1. Vision

GOLD42 est un jeton numérique **fongible** conforme à la norme **BEP-20**, déployé sur la **BNB Smart Chain (testnet)**. Il sert à la fois de démonstration complète du cycle de vie d'un token :

- Création
- Distribution
- Transfert
- Destruction
- Gouvernance

Il sert aussi de support pédagogique pour comprendre les interactions avec un smart contract.

---

## 2. Caractéristiques

| Propriété | Valeur |
| --- | --- |
| Nom | GOLD42 |
| Ticker | G42 |
| Norme | BEP-20 (compatible ERC-20) |
| Réseau | BNB Smart Chain Testnet (Chain ID 97) |
| Décimales | 18 |
| Supply maximale | 1 000 000 G42 |
| Supply initiale | 800 000 G42 (80 %) |
| Mintable restant | 200 000 G42 (20 %) |
| Contrat | [`0xB03B454DDa79A522603f2a21471A6bC6B24dDb80`](https://testnet.bscscan.com/address/0xB03B454DDa79A522603f2a21471A6bC6B24dDb80) |

---

## 3. Tokenomics

- **Plafond absolu** : le contrat garantit qu'il n'existera jamais plus de
  1 000 000 G42 (`TOTAL_SUPPLY`), toute tentative de mint au-delà est rejetée.
- **Distribution initiale** : 800 000 G42 (80 %) sont créés au déploiement au profit du
  déployeur, qui devient le propriétaire du contrat.
- **Réserve de mint** : les 200 000 G42 restants (20 %) peuvent être créés progressivement
  par le propriétaire via `mint()`, par exemple pour récompenser des utilisateurs.
- **Mécanisme déflationniste** : chacun peut détruire définitivement ses propres tokens via
  `burn()`, ce qui réduit l'offre totale en circulation.

---

## 4. Fonctionnement technique

Le contrat hérite d'`ERC20` (OpenZeppelin), ce qui fournit nativement :


| Fonctions | Descriptif |
| --- | --- |
| `name()`, `symbol()`, `decimals()` | métadonnées du token |
| `totalSupply()`, `balanceOf(address)` | offre totale et solde d'une adresse |
| `transfer(to, amount)` | envoi direct de tokens |
| `approve(spender, amount)` + `allowance(owner, spender)` + `transferFrom(from, to, amount)` | mécanisme d'autorisation permettant à un tiers (DApp, exchange…) de dépenser pour vous |



### Fonctions spécifiques à GOLD42

| Fonction | Description |
| --- | --- |
| `mint(recipient, amount)` | Crée des tokens pour `recipient`. Réservé au propriétaire, plafonné à la supply maximale. Émet l'événement `Mint`. |
| `burn(amount)` | Détruit `amount` tokens du solde de l'appelant. Émet l'événement `Burn`. |
| `transferOwnership(newOwner)` | Transfère la propriété du contrat. Refuse l'adresse zéro et émet `OwnershipTransferred`. |

---

## 5. Cas d'usage

- **Moyen d'échange simple** sur le testnet entre wallets MetaMask.
- **Support de démonstration** : évaluations, tutoriels, présentations Web3.

---

## 6. Sécurité et gouvernance

- Seules deux actions sont privilégiées : `mint` et `transferOwnership`, toutes deux
  protégées par le modificateur `onlyOwner`.
- L'offre est **plafonnée de façon immuable** : même le propriétaire ne peut pas la dépasser.
- Le transfert de propriété vérifie que la nouvelle adresse n'est pas l'adresse zéro et
  émet un événement traçable sur l'explorateur de blocs.
- Aucune fonction de pause, de blacklist ou de prélèvement : les détenteurs gardent le
  contrôle total de leurs fonds.
- **Limite à connaître** : la confiance dans le propriétaire reste nécessaire pour l'usage
  qu'il fait des 200 000 G42 mintables ; c'est pourquoi cette réserve est limitée à 20 %.

---

## 7. Comment obtenir des G42 ?

1. Configurer MetaMask sur la BSC Testnet (voir le README racine).
2. Obtenir des tBNB gratuits (gas) via le [faucet BNB Chain](https://www.bnbchain.org/).
3. Demander au propriétaire un envoi (`transfer`) vers votre adresse.
4. Importer le token dans MetaMask avec l'adresse du contrat ci-dessus.

> Pour en savoir plus sur l'ABI et comment l'utiliser, consulter la section dédiée
> dans [`deploiement.md`](deploiement.md#quest-ce-que-labi-).
