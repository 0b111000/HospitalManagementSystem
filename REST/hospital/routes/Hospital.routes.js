const express = require("express");
const router = express.Router({
  mergeParams: true,
});
const Controller = require("../controllers/hospital.controller");
router.get("/", Controller.getAllHospital);
router.post("/", Controller.postNewHospital);
router.get("/:id", Controller.getHospital);
router.put("/:id/edit", Controller.editHospital);
router.post("/:id/delete", Controller.deleteHospital);
module.exports = router;
