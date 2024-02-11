import express, { json, urlencoded } from "express";
import { join } from "path";
import cookieParser from "cookie-parser";
import logger from "morgan";

import indexRouter from "./routes/index.js";
import usersRouter from "./routes/users.js";
import tpsRouter from "./routes/tps.js";

var app = express();

app.use(logger("dev"));
app.use(json());
app.use(urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(join("public")));

app.use("/", indexRouter);
app.use("/users", usersRouter);
app.use("/tps", tpsRouter);

export default app;
