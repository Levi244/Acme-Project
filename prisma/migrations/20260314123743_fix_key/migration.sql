/*
  Warnings:

  - You are about to drop the column `mounth` on the `revenues` table. All the data in the column will be lost.
  - You are about to drop the column `revunue` on the `revenues` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[month]` on the table `revenues` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `month` to the `revenues` table without a default value. This is not possible if the table is not empty.
  - Added the required column `revenue` to the `revenues` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "revenues_mounth_key";

-- AlterTable
ALTER TABLE "revenues" DROP COLUMN "mounth",
DROP COLUMN "revunue",
ADD COLUMN     "month" TEXT NOT NULL,
ADD COLUMN     "revenue" INTEGER NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "revenues_month_key" ON "revenues"("month");
