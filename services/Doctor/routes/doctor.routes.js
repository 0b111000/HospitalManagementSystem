const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/doctor.controllers");

router.get("/addDoctorDetails", controllers.addDoctor);
router.get("/:NHID", controllers.getDoctor);

router.post("/login", controllers.DoctorLogin);
router.get("/:docid", controllers.getDoctor);
router.post("/", controllers.addDoctor);
router.post("/prescribe/:nhid", controllers.prescribe);
router.post("/labtests/:nhid", controllers.labtest);

module.exports = router;
