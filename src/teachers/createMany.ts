import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.teachers.create({
    data: {
      name: "Nadona",
			Courses: {
				createMany: {
					data: [
						{
							name: "Analises",
							duration: 50,
						},
						{
							name: "Testes",
							duration: 100
						},
					]
				}
			}
    },
  });

  console.log(result);
}

main();