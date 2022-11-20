import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
	let course = await prisma.courses.update({
		where: {
			id: "2a49b481-bfe2-4ded-83ff-d80230bfaa0c"
		},
		data: {
			description: "ruim"
		}
	});
	console.log(course);

}

main();