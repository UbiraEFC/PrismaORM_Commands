import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.modules.create({
    data: {
      description: "Aprendendo Lógica Básica",
      name: "Lógica Básica",
      teacher_id: "e3ea3098-b128-4d6c-aad7-f7346474b510",
      courses: {
        create: {
          course: {
            connect: {
              id: "5246f707-eb53-437a-b131-fb9618b169a4",
            }
          }
        }
      }
    }
  });
  console.log(result);
}

main();