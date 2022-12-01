import * as fs from "fs";

export const one = () => {
	const inputValues = fs.readFileSync("input.txt", "utf8").split("\n");

	const elves = [0] as number[];

	let currentElf = 0;

	for (let i = 0; i < inputValues.length; i++) {
		if (inputValues[i] === "") {
			currentElf++;
			elves[currentElf] = 0;
			continue; // Create next elf and skip over;
		}
		elves[currentElf] += parseInt(inputValues[i] ?? "0", 10);
	}

	return elves;
};

console.log("Answer to Part One: ", Math.max(...one()));
