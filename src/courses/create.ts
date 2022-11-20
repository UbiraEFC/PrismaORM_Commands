import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.courses.create({
    data: {
      duration: 300,
      name: "Curso ReactJS App",
      description: "Curso bom",
      teacher: {
        connect: {
          id: "e3ea3098-b128-4d6c-aad7-f7346474b510",
        }
      },
    },
  });

  console.log(result);
}

main();