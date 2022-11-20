import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
	// SELECT * FROM COURSES LIMIT 1
	let course = await prisma.courses.findFirst();
	console.log(course);

	// SELECT * FROM COURSES ORDER BY DESC LIMIT 1
	course = await prisma.courses.findFirst({
		take: -1
	});
	console.log(course);


}

main();