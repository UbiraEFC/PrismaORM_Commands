/*
  Warnings:

  - Added the required column `teacher_id` to the `modeules` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "modeules" ADD COLUMN     "teacher_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "teachers" ADD COLUMN     "courses_id" TEXT;

-- AddForeignKey
ALTER TABLE "modeules" ADD CONSTRAINT "modeules_teacher_id_fkey" FOREIGN KEY ("teacher_id") REFERENCES "teachers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
