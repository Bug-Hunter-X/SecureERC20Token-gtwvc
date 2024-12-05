# Reentrancy Vulnerability in ERC-20 Token

This repository demonstrates a common reentrancy vulnerability in a simple ERC-20 token contract.  The `transfer` function is susceptible to reentrancy attacks, allowing attackers to potentially steal funds. The solution provides a fix using the Checks-Effects-Interactions pattern.