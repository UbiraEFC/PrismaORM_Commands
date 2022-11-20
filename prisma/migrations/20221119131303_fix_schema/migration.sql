/*
  Warnings:

  - You are about to drop the `CoursesModules` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `modeules` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "CoursesModules" DROP CONSTRAINT "CoursesModules_course_id_fkey";

-- DropForeignKey
ALTER TABLE "CoursesModules" DROP CONSTRAINT "CoursesModules_module_id_fkey";

-- DropForeignKey
ALTER TABLE "modeules" DROP CONSTRAINT "modeules_teacher_id_fkey";

-- DropTable
DROP TABLE "CoursesModules";

-- DropTable
DROP TABLE "modeules";

-- CreateTable
CREATE TABLE "modules" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "teacher_id" TEXT NOT NULL,

    CONSTRAINT "modules_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "courses_modules" (
    "id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "course_id" TEXT NOT NULL,
    "module_id" TEXT NOT NULL,

    CONSTRAINT "courses_modules_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "modules_name_key" ON "modules"("name");

-- AddForeignKey
ALTER TABLE "modules" ADD CONSTRAINT "modules_teacher_id_fkey" FOREIGN KEY ("teacher_id") REFERENCES "teachers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "courses_modules" ADD CONSTRAINT "courses_modules_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "courses"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "courses_modules" ADD CONSTRAINT "courses_modules_module_id_fkey" FOREIGN KEY ("module_id") REFERENCES "modules"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
