import express from "express";
import {
  getAllTask,
  getDoneTask,
  getTask,
  addTask,
  updateTask,
  deleteTask,
  updateStatusTask,
} from "../controller/task.js";

const router = express.Router();

router.get("/", getAllTask);
router.get("/done", getDoneTask);
router.get("/:id", getTask);
router.post("/", addTask);
router.put("/", updateTask);
router.delete("/:id", deleteTask);
router.put("/updateStatus", updateStatusTask);

export default router
