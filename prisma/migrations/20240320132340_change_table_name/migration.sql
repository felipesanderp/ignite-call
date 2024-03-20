/*
  Warnings:

  - You are about to drop the `user_time_interval` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "user_time_interval" DROP CONSTRAINT "user_time_interval_user_id_fkey";

-- DropTable
DROP TABLE "user_time_interval";

-- CreateTable
CREATE TABLE "user_time_intervals" (
    "id" TEXT NOT NULL,
    "week_day" INTEGER NOT NULL,
    "time_start_in_minutes" INTEGER NOT NULL,
    "time_end_in_minutes" INTEGER NOT NULL,
    "user_id" TEXT NOT NULL,

    CONSTRAINT "user_time_intervals_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "user_time_intervals" ADD CONSTRAINT "user_time_intervals_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
