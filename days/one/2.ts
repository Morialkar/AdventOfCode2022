import { one } from "./1";

export const two = () => {
	const elves = one();

	const firstMax = findHigest(elves);

	elves.splice(firstMax.index, 1);

	const secondMax = findHigest(elves);

	elves.splice(secondMax.index, 1);

	const thirdMax = findHigest(elves);

	return firstMax.val + secondMax.val + thirdMax.val;
};

const findHigest = (inputArray: number[]) => {
	let max = { val: inputArray[0], index: 0 };
	for (let i = 1; i < inputArray.length; ++i) {
		if (inputArray[i] > max.val) {
			max = { val: inputArray[i], index: i };
		}
	}
	return max;
};

console.log("Answer to Part Two: ", two());
