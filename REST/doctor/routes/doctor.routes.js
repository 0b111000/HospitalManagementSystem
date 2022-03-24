const express = require("express");
const router = express.Router({
  mergeParams: true,
});
const Controller = require("../controllers/doctor.controller");
router.get("/", Controller.getAllDoctor);
router.post("/", Controller.postNewDoctor);
router.get("/:id", Controller.getDoctor);
router.put("/:id/edit", Controller.editDoctor);
router.post("/:id/delete", Controller.deleteDoctor);
module.exports = router;
