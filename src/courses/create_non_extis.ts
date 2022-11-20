import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.courses.create({
    data: {
      duration: 100,
      name: "Curso Elixir",
      description: "Curso excelente de Elixir com Guanabara",
      teacher: {
        create: {
          name: "Rafa"
        }
      }
    },
  });

  console.log(result);
}

main();