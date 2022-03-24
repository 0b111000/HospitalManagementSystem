const express = require("express");
const router = express.Router({
  mergeParams: true,
});
const Controller = require("../controllers/hospitalId.controller");
router.get("/", Controller.getAllHospitalId);
router.post("/", Controller.postNewHospitalId);
router.get("/:id", Controller.getHospitalId);
router.put("/:id/edit", Controller.editHospitalId);
router.post("/:id/delete", Controller.deleteHospitalId);
module.exports = router;
