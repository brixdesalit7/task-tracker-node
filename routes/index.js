const express = require("express");
const router = express.Router();
const db = require("../config/db.js");

router.get("/", (req, res, next) => {
  db.query("SELECT * FROM tbltask ORDER BY id DESC", (err, result, fields) => {
    if (err) {
      return res.json({ res : err });
    }

    res.json({ res : result });
  });
});

router.post("/add", (req, res, next) => {
  const taskname = req.body.taskname;

  db.query("INSERT INTO tbltask (`taskname`) VALUES (?)", [taskname],  (err, result, fields) => {
      if (err) {
        return res.json({ res : err.sqlMessage });
      }

      res.json({ res : "New Record Added!" });
    }
  );
});

router.put("/update/:id", (req, res, next) => {
  const postID = req.params.id;
  
  const updatedRecord = {
    taskname : req.body.taskname,
    status : req.body.status
  }

  db.query("UPDATE tbltask SET ? WHERE id = ?", [updatedRecord, postID], (err, results, fields) => {
    if(err) {
      return res.json({ res : err.sqlMessage })
    }

    res.json({ res : "Record Updated!"});
  });

});

router.delete("/delete/:id", (req, res, next) => {
  const postID = req.params.id;

  db.query("DELETE FROM tbltask WHERE id = ?", [postID], (err, result, fields) => {
    if(err) {
      return res.json({ res : err.sqlMessage });
    }

    res.json({ res : "Task Deleted!" })
  })
});

module.exports = router;
