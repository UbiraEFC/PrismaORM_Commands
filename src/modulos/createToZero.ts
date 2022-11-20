import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const result = await prisma.coursesModules.create({
    data: {
			course: {
				create: {
					duration: 100,
					name: "Curso Linux",
					description: "Curso completo de Linux",
					teacher_id: "6fd1655a-9da0-476c-a1f8-61caa5b02df6" 
				}
			},
			module: {
				create: {
					description: "Aprendendo Comandos Terminal Linux",
					name: "Comandos Linux",
					teacher_id: "6fd1655a-9da0-476c-a1f8-61caa5b02df6"
				}
			}
    }
  });
  console.log(result);
}

main();