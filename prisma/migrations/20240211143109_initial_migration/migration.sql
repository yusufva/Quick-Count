-- CreateTable
CREATE TABLE `Caleg` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pemilihan` VARCHAR(191) NOT NULL,
    `partai` VARCHAR(191) NOT NULL,
    `caleg_no` INTEGER NOT NULL,
    `suara` INTEGER NOT NULL DEFAULT 0,
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Partai` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `pemilihan` VARCHAR(191) NOT NULL,
    `partai` VARCHAR(191) NOT NULL,
    `suara` INTEGER NOT NULL DEFAULT 0,
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Tps` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `tahun_pemilihan` VARCHAR(191) NOT NULL DEFAULT '2024',
    `provinsi` VARCHAR(191) NOT NULL,
    `kota` VARCHAR(191) NOT NULL,
    `kecamatan` VARCHAR(191) NOT NULL,
    `kelurahan` VARCHAR(191) NOT NULL,
    `tps` INTEGER NOT NULL,
    `pemilihan` VARCHAR(191) NOT NULL,
    `invalid_suara` INTEGER NOT NULL,
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
