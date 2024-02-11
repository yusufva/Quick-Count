import { Router } from "express";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const router = Router();

router.get("/", async (req, res) => {
  const tps = await prisma.tps.findMany();
  res.json({
    statusCode: 200,
    message: "success fetch data",
    data: tps,
  });
});

router.get("/:id", async (req, res) => {
  const tps = await prisma.tps.findUnique({
    where: {
      id: parseInt(req.params.id),
    },
  });
  res.json({
    statusCode: 200,
    message: "success fetch data",
    data: tps,
  });
});

router.put("/:id", async (req, res) => {
  const tps = await prisma.tps.update({
    where: {
      id: parseInt(req.params.id),
    },
    data: {
      invalid_suara: req.body.invalid_suara,
      updated_at: new Date(Date.now()),
    },
  });
  res.json({
    statusCode: 200,
    message: "success update data",
    data: tps,
  });
});

export default router;
