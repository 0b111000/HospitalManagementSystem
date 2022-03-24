const express = require("express");
const router = express.Router({
  mergeParams: true,
});
const Controller = require("../controllers/doctorId.controller");
router.get("/", Controller.getAllDoctorId);
router.post("/", Controller.postNewDoctorId);
router.get("/:id", Controller.getDoctorId);
router.post("/:id/edit", Controller.editDoctorId);
router.post("/:id/delete", Controller.deleteDoctorId);
module.exports = router;
