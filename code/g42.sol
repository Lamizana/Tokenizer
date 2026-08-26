// SPDX-License-Identifier: MIT
// GOLD42 — jeton BEP-20 (standard ERC-20 d'OpenZeppelin)
// Norme : BEP-20 sur la BNB Smart Chain
pragma solidity ^0.8.0;

// Import du contrat ERC-20 d'OpenZeppelin : fournit name, symbol,
// decimals, totalSupply, balanceOf, transfer, approve, transferFrom...
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GOLD42 is ERC20 {
    // Propriétés du token :
    string public constant NAME = "GOLD42"; // Nom du token (doit contenir 42)
    string public constant SYMBOL = "G42"; // Ticker (symbole court)
    uint8 public constant DECIMALS = 18; // 18 décimales, comme l'ETH

    // Approvisionnement total (1 000 000 G42) : plafond absolu :
    uint256 public constant TOTAL_SUPPLY = 1_000_000 * 10 ** uint256(DECIMALS);

    // Supply initiale (800 000 G42) : créée au déploiement,
    // les 200 000 G42 restants sont réservés au futur mint du propriétaire :
    uint256 public constant INITIAL_SUPPLY = 800_000 * 10 ** uint256(DECIMALS);

    // Propriétaire du contrat :
    address public owner;

    // Événements (traces lisibles sur la blockchain) :
    event Mint(address indexed to, uint256 amount);
    event Burn(address indexed from, uint256 amount);
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    // Constructeur : exécuté une seule fois au déploiement :
    constructor() ERC20(NAME, SYMBOL) {
        owner = msg.sender; // Le déployeur devient propriétaire
        _mint(msg.sender, INITIAL_SUPPLY); // On crée 80 % de la supply pour lui
    }

    // Créer (mint) des tokens, réservé au propriétaire :
    function mint(address recipient, uint256 amount) public onlyOwner {
        require(
            totalSupply() + amount <= TOTAL_SUPPLY,
            "GOLD42: minting exceeds total supply"
        );
        _mint(recipient, amount);
        emit Mint(recipient, amount);
    }

    // Détruire (burn) ses propres tokens :
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }

    // Transférer la propriété du contrat :
    function transferOwnership(address newOwner) public onlyOwner {
        require(
            newOwner != address(0),
            "GOLD42: new owner is the zero address"
        );
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    // Restriction : seule la fonction ne peut être appelée que par le propriétaire :
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "GOLD42: only owner can perform this action"
        );
        _;
    }
}
