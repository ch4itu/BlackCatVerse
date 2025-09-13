# BlackCatVerse – The Fully On-Chain RPG

BlackCatVerse is a fully on-chain RPG that demonstrates decentralized gameplay where the blockchain itself acts as the backend and syncing server. It runs entirely in a static HTML/JS/CSS frontend with no central server. The project is designed for lightweight hosting (e.g., IPFS, Arweave, ENS, GitHub Pages) and uses Somnia Testnet smart contracts for state synchronization.

---

## Features

- **On-Chain Gameplay**  
  - Player creation, stats, gold, and movement are stored directly on the blockchain.  
  - Real-time syncing of world state, other players, and chat.

- **Exploration and Combat**  
  - Grid-based world with terrain types: grass, water, mountain, forest, sand, and roads.  
  - Buildings: houses, shops, inns, temples, and castles.  
  - Enemies: goblins, wolves, monsters, and dragons.  
  - Turn-based combat system with attack, magic, heal, and flee actions.

- **Avatars and Progression**  
  - Players begin as white cats and evolve as they level up.  
  - Distinct styles for NPCs, enemies, and other players.  
  - Level-based stat progression (HP, MP, ATK, DEF, MAGIC).

- **Multiplayer**  
  - On-chain world chat via contract events.  
  - Display of online players with avatars and level badges.

- **Wallet Integration**  
  - Connect with seed phrase or private key.  
  - Built on [ethers.js v6](https://docs.ethers.org/v6/).  
  - Uses Somnia Testnet RPC (`https://dream-rpc.somnia.network/`).  

---

## Tech Stack

- **Frontend:** HTML5, CSS3, JavaScript (no frameworks)  
- **Blockchain:** Somnia Testnet smart contract (`0xf769e39476e7a1296649c752ee98dade870ed043`)  
- **Library:** [Ethers.js v6.7.1 UMD build](https://cdnjs.cloudflare.com/ajax/libs/ethers/6.7.1/ethers.umd.min.js)  

---

## Getting Started

1. Clone or download this repository.  
2. Open `index.html` in a modern browser.  
   - Works best in Chromium-based browsers (Chrome, Brave, Edge).  
3. Connect your wallet using a seed phrase or private key.  
   - Important: Use only test accounts on Somnia Testnet.  
4. Sync player data with the blockchain using the "Sync from Blockchain" button.  
5. Explore the world, battle enemies, collect gold and keys, and chat with other players.  

---

## Controls

- **Desktop:**  
  - Move: WASD or Arrow Keys  
  - Interact: Space key or Interact button  

- **Mobile:**  
  - On-screen D-pad for movement  
  - Tap Interact to engage  

---

## Smart Contract Interface

The frontend interacts with the following functions:

- `createPlayer(string name)` – Register a new player  
- `move(uint x, uint y)` – Update on-chain position  
- `updateGold(uint newGold)` – Save gold balance  
- `updateLevel(uint newLevel)` – Save player level  
- `getPlayerInfo(address)` – Retrieve player stats  
- `getPlayers()` – List all registered players  
- `sendMsg(string message)` – Broadcast chat message  
- `getMessages()` – Retrieve world chat history  

---

## Notes

- The game does not rely on MetaMask pop-ups for every action; it signs directly with a locally loaded seed/private key.  
- Always use testnet credentials. Never input real wallets.  
- Blockchain interactions may take 2–5 seconds depending on Somnia block times.  
- Game state such as HP/MP is simulated locally. Only final stats (position, gold, level) are persisted on-chain.  

---

## License

This project is released under the MIT License.  
***HEAVILY BORROWED FROM CHATGPT/CLAUDE/GEMINI***
