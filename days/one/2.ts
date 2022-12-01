import { one } from "./1";

export const two = () => {
	const elves = one();

	elves.sort().reverse();

	return elves[0] + elves[1] + elves[2];
};

console.log("Answer to Part Two: ", two());
