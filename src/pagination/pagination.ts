import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {

	let skip = 0;
	let existsResult = true;

	while(existsResult){
		const result  = await prisma.courses.findMany({
			skip: skip,
			take: 2,
		});
	
		if(result.length > 0){
			console.log(result);
			console.log("---------------");

			skip += 2;
		} else {
			existsResult = false;
		}

	}
}

main();