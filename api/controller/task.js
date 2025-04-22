import { db } from "../config/db.js";

export const getAllTask = (_, res) => {
  const q = "SELECT * FROM task WHERE status = 1";
  db.query(q, (err, data) => {
    if (err) return res.send(err);

    return res.status(200).json(data);
  });
};

export const getDoneTask = (_, res) => {
  const q = "SELECT * FROM task WHERE status = 0";
  db.query(q, (err, data) => {
    if (err) return res.send(err);

    return res.status(200).json(data);
  });
};

export const getTask = (req, res) => {
  const id = req.params.id;
  const q = `SELECT * FROM task WHERE _id = ?`;
  db.query(q, [id], (err, data) => {
    if (err) return res.send(err);

    return res.status(200).json(data[0]);
  });
};

export const addTask = (req, res) => {
  const { title, description, priority, deadlineDate } = req.body;
  const q = `INSERT INTO task (title, description, priority, deadlineDate) VALUES (?)`;
  const values = [title, description, priority, deadlineDate];
  db.query(q, [values], (err, data) => {
    if (err) return res.send(err);

    res.status(200).json({ message: "Task successfully added!" });
  });
};

export const updateTask = (req, res) => {
  const { _id, title, description, priority, deadlineDate } = req.body;
  const q = `UPDATE task SET title = ?, description = ?, priority = ?, deadlineDate = ? WHERE _id = ?`;
  const values = [title, description, priority, deadlineDate, _id];
  db.query(q, values, (err, data) => {
    if (err) return res.send(err);

    if (data.affectedRows === 0) {
        return res.status(404).json({ message: "Task not found!" });
      }

    res.status(200).json({ message: "Task successfully edited!" });
  });
};

export const deleteTask = (req, res) => {
  const id = req.params.id;
  const q = `DELETE FROM task WHERE _id = ?`;
  db.query(q, [id], (err, data) => {
    if (err) return res.send(err);

    if (data.affectedRows === 0) {
      return res.status(404).json({ message: "Task not found!" });
    }

    res.status(200).json({ message: "Task successfully deleted!" });
  });
};

export const updateStatusTask = (req, res) => {
  const { _id, status } = req.body;
  const q = `UPDATE task SET status = ? WHERE _id = ?`;
  const values = [status, _id];
  db.query(q, values, (err, data) => {
    if (err) return res.send(err);

    if (data.affectedRows === 0) {
      return res.status(404).json({ message: "Task not found!" });
    }

    res.status(200).json({ message: "Task status successfully updated!" });
  });
};
