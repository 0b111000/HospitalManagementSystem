const express = require("express");
const router = express.Router({
  mergeParams: true,
});
const Controller = require("../controllers/patient.controller");
router.get("/", Controller.getAllPatient);
router.post("/", Controller.postNewPatient);
router.get("/:nhid", Controller.getPatient);
router.post("/:nhid/edit", Controller.editPatient);
router.post("/:nhid/delete", Controller.deletePatient);
module.exports = router;
