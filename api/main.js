import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import taskRouter from "./routes/task.js";

dotenv.config();

const app = express();

app.use(express.json());
app.use((req, res, next) => {
  req.header("Access-Control-Allowed-Credentials", true);
  next();
});
app.use(
  cors({
    origin: process.env.CLIENT_CORS_URL,
    credentials: true,
  })
);
app.listen(3300, () => {
  console.log("Server is running on http://localhost:3300/api");
});

app.use("/api/tasks", taskRouter);
