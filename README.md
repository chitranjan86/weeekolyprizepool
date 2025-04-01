# Weekly Prize Pool Smart Contract

## Overview

This smart contract implements a weekly prize pool where participants send Ether to enter. Every 7 days, a random winner is selected to receive the entire prize pool. The contract operates with no external dependencies and maintains a simple structure for transparency.

## Features

- Users can enter by sending Ether to the contract.
- A winner is selected automatically every 7 days.
- The entire balance is transferred to the randomly chosen winner.
- Uses block timestamp and difficulty for randomness.

## Functions

### `enter()`

- Allows users to participate in the prize pool by sending Ether.
- Requires a nonzero Ether amount.

### `pickWinner()`

- Selects a random winner from the list of participants.
- Transfers the entire contract balance to the winner.
- Resets the participant list for the next round.
- Can only be called once every 7 days.

## Deployment Instructions

1. Deploy the contract on an Ethereum-compatible blockchain.
2. Users can send Ether to participate.
3. Call `pickWinner` after 7 days to select and reward a winner.

## Contract Address

- **Deployed Address:** 0xe84a6A5Ed10f86eCCDbA9C1C144c6C16eC16B2D8

## Security Considerations

- The randomness mechanism relies on block timestamps and difficulty, which may be manipulated.
- Ensure the contract has enough gas for winner selection.

## License

This project is released under the MIT License.
