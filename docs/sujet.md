# Tokeniser

> Créer votre propre Token

---

## Préambule

Ce projet est le fruit d'un partenariat entre 42 et [BNB Chain](https://www.bnbchain.org/en).

> **Build N Build** (BNB) Chain est un réseau blockchain distribué sur lequel les développeurs et les innovateurs peuvent créer des applications décentralisées (DApps) dans le cadre de la transition vers le Web3.

En octobre 2022, la BNB Chain est la ***plus grande blockchain de contrats intelligents au monde*** en termes de volume de transactions et d’utilisateurs actifs quotidiens. Au moment de la rédaction de cet article, *elle a traité 3 milliards de transactions provenant de 232 millions d’adresses uniques*, et dispose d’un écosystème comptant plus de **1 500 DApps** actives. La nature décentralisée du réseau signifie que n’importe qui peut développer un produit sur la BNB Chain sans avoir à demander d’autorisation, et potentiellement toucher un public très large.

Vous pouvez obtenir gratuitement des Tbnb, sans montant minimum requis dans votre portefeuille, via cefaucet : [BNB Chain Faucet](https://www.bnbchain.org/)

---

## Introduction

Bienvenue dans l'univers passionnant de la technologie blockchain !

Avez-vous déjà rêvé de créer votre propre jeton numérique ?

C'est maintenant l'occasion de concrétiser ce rêve.

La technologie blockchain permet la création et la distribution d'actifs numériques uniques, appelés « ***tokens*** ». Ces tokens peuvent représenter un large éventail d'éléments, allant d'une simple représentation monétaire à des actifs plus complexes tels que des œuvres d'art, voire des actifs du monde réel.
Le processus de création de son propre token n'est pas sans difficultés, mais avec les bonnes connaissances et les bonnes ressources, cela peut s'avérer une expérience enrichissante et épanouissante.

---

## Objectif principal

Pour créer un jeton, plusieurs exigences techniques doivent être respectées.

> Vous êtes libre de choisir le nom de votre jeton. La seule contrainte est qu’il doit contenir le chiffre 42. Il est bien sûr interdit d’utiliser des termes insultants, sous peine de sanctions.

Vous devez donc créer un fichier `README.md` à la racine de votre dépôt afin d'expliquer les choix que vous avez dû faire et les raisons qui vous ont poussé à faire ces choix.

> Le langage utilisé est bien sûr libre, mais vous devez respecter les normes de la blockchain que vous comptez utiliser (par exemple ERC20 pour **ETH** ou **BEP-20** pour BSC).

Avant toute chose, vous devrez choisir une plateforme blockchain prenant en charge la création de jetons. Il existe de nombreuses options parmi lesquelles choisir, chacune dotée de ses propres caractéristiques et fonctionnalités.

Une fois que vous aurez choisi une plateforme, vous devrez maîtriser le langage de programmation utilisé par celle-ci afin de développer votre token. Chaque plateforme utilise un **langage** de programmation différent ; vous devrez donc vous assurer de disposer des compétences nécessaires pour travailler avec le langage de la plateforme que vous aurez choisie, qu’il s’agisse d’[IDE](https://chainide.com/), de [Truffle](https://archive.trufflesuite.com/boxes/BSC-Truffle-Starter-Box/), de [Remix](https://docs.bnbchain.org/docs/remix-new/) ou de [Hardhat](https://docs.bnbchain.org/docs/hardhat-new/).

> Assurez-vous de bien comprendre ce que vous faites. On ne vous demandera jamais d’utiliser de l’argent réel pour réaliser ce projet. Il existe des chaînes de test permettant d’éviter ce problème.

Vous devez placer le code utilisé pour créer votre jeton dans un dossier « `code` » situé à la racine de votre dépôt. Veillez à commenter votre code et à utiliser des noms de variables et de fonctions lisibles et explicites.

> Au cours de votre évaluation, une révision du code sera effectuée.

Vous devez faire très attention à la manière dont vous présentez le fonctionnement de votre jeton. Vous devez être capable d'effectuer des actions minimales pour en démontrer le fonctionnement. Vous devez réfléchir à tous les aspects liés à la sécurité, tels que la propriété ou les privilèges.

Vous devez également placer tous les éléments nécessaires au déploiement de votre token dans un deuxième dossier dont vous choisirez le nom.
Une fois votre token déployé sur une blockchain publique, vous devrez définir son ticker et le publier sur un explorateur de blockchain (par exemple : Blockscan ou BSCScan). Veuillez indiquer l'adresse du smart contract et le réseau utilisé dans votre dépôt Git.

Enfin, vous devriez disposer d'un dossier contenant la documentation relative à ce projet. Ce dossier s'appelle « `documentation` » et doit se trouver **à la racine de votre dépôt**. Il devrait être possible de comprendre son fonctionnement et ce dont on a besoin pour utiliser votre jeton.

Vous devrez bien comprendre comment votre jeton sera utilisé et ce qu’
il représentera. Cela peut nécessiter la rédaction d’un livre blanc ou d’un autre document présentant les caractéristiques et les fonctionnalités de votre jeton.

> Vous devez prendre le temps de rédiger une documentation claire et précise. Celle-ci sera examinée lors de votre évaluation.

Pensez également à créer une vidéo de démonstration pour présenter votre token et ses fonctionnalités aux utilisateurs et investisseurs potentiels.

> Si vous souhaitez créer une vidéo de démonstration, vous n'avez pas besoin de la mettre en ligne sur votre dépôt : un simple lien suffit !

> Il n'est pas obligatoire de réaliser une vidéo de démonstration. Vous n'obtiendrez pas une meilleure note en réalisant cette vidéo.

Vous trouverez ci-dessous un exemple de la structure de répertoires attendue :

```bash
$> ls -al
total XX
drwxrwxr-x 3 wil wil 4096 avril 42 20:42 .
drwxrwxrwt 17 wil wil 4096 avril 42 20:42 ..
-rw-rw-r-- 1 wil wil XXXX avril 42 20:42 README.md
drwxrwxr-x 3 wil wil 4096 avril 42 20:42 code
drwxrwxr-x 3 wil wil 4096 avril 42 20:42 deployment
drwxrwxr-x 3 wil wil 4096 avril 42 20:42 documentation
```

---

## Objectif secondaire

Afin de garantir la sécurité de votre jeton et de prévenir toute activité frauduleuse, vous pourriez envisager de mettre en place un système de signatures multiples, également appelé « ***multisig*** ».
Cette fonctionnalité exige que plusieurs parties valident une transaction avant qu’elle ne puisse être exécutée, offrant ainsi une couche de protection supplémentaire pour les actifs de grande valeur ou les transactions financières sensibles.

La mise en place d'un système multisignature est simple : il suffit d'utiliser le langage de programmation de votre choix pour créer
un contrat intelligent exigeant plusieurs signatures pour chaque transaction. Déterminez le nombre de signatures requises et identifiez les personnes autorisées à signer afin de renforcer la sécurité et
de gagner la confiance des utilisateurs de votre token.

Vous devez adapter ce bonus à la partie obligatoire de ce projet.

> La partie bonus ne sera évaluée que si la partie obligatoire est PARFAITE. « Parfaite » signifie que la partie obligatoire a été réalisée dans son intégralité et qu’elle fonctionne sans aucun dysfonctionnement. Si vous n’avez pas satisfait à TOUTES les exigences obligatoires, votre partie bonus ne sera pas évaluée du tout.

> À titre exceptionnel pour ce projet, nous vous recommandons de partager votre projet via votre compte Git personnel une fois que celui-ci sera valide. N'hésitez pas à utiliser différents hashtags en fonction du langage de programmation utilisé, mais aussi « web3 », etc.
