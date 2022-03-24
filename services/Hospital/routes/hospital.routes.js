const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/hospital.controllers");

router.post("/login", controllers.HospitalLogin);
router.get("/:id", controllers.getHospital);
router.post("/", controllers.addHospital);
router.get("/:hospital_id/billDetails/:prescription_id", controllers.getBillDetails);
router.post("/:hospital_id/billDetails/", controllers.addBillDetails);

module.exports = router;
