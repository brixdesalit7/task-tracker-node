const express = require("express");
const router = express.Router();
const db = require("../config/db.js");

router.get("/", (req, res, next) => {
  db.query("SELECT * FROM tbltask", (err, result, fields) => {
    if (err) {
      return res.json({ res : err });
    }

    res.json({ res : result });
  });
});

router.post("/add", (req, res, next) => {
  const taskname = req.body.taskname;

  db.query("INSERT INTO tbltask (`taskname`) VALUES (?)", [taskname], function (err, result, fields) {
      if (err) {
        return res.json({ res : err.sqlMessage });
      }
      res.json({ res : "New Record Added!" });
    }
  );
});

module.exports = router;
