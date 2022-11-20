import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.coursesModules.create({
    data: {
      course_id: "e3af987f-7aa4-41b4-bb8a-b0fb032cf92f",
			module_id: "8027c6f9-fd6b-4013-9e12-2964b9814708"
    }
  });
  console.log(result);
}

main();