/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `users` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `user_id` to the `bookmarks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "bookmarks" ADD COLUMN     "user_id" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "bookmarks" ADD CONSTRAINT "bookmarks_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
