/*
  Warnings:

  - Added the required column `teacher_id` to the `courses` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "courses" ADD COLUMN     "teacher_id" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "teachers" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "teachers_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "teachers_name_key" ON "teachers"("name");

-- AddForeignKey
ALTER TABLE "courses" ADD CONSTRAINT "courses_teacher_id_fkey" FOREIGN KEY ("teacher_id") REFERENCES "teachers"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
