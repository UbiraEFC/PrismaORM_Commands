import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.courses.create({
    data: {
      duration: 300,
      name: "Curso Java",
      description: "Curso excelente de React Native com Guanabara",
      teacher_id: "e3ea3098-b128-4d6c-aad7-f7346474b510",
    },
  });

  console.log(result);
}

main();