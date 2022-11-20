-- CreateTable
CREATE TABLE "CoursesModules" (
    "id" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "course_id" TEXT NOT NULL,
    "module_id" TEXT NOT NULL,

    CONSTRAINT "CoursesModules_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "CoursesModules" ADD CONSTRAINT "CoursesModules_course_id_fkey" FOREIGN KEY ("course_id") REFERENCES "courses"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "CoursesModules" ADD CONSTRAINT "CoursesModules_module_id_fkey" FOREIGN KEY ("module_id") REFERENCES "modeules"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
