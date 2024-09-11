// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// tN3McNVOyKQVBe3aUTimJduNVrOjIj6D6O5KpEr_BD7TF19djKnHkv1Nu7NkkQf1QJnR0E4dYBs7qZfTs5Su3A
contract Counter {
  uint256 public count = 0;

	function increment() public {
		count += 1;
	}

	function decrement() public {
		require(count > 0, " Count cannot be less than 0");
		count -= 1;
	}

	function getCount() public view returns(uint256) {
		return count;
	}
}
