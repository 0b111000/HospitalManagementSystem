const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/patient.controllers");

router.post("/", controllers.addPatient);
router.get("/:NHID", controllers.getPatientDetails);
router.get("/:NHID/medicalHistory", controllers.getPatientMedicalHistory);
router.get(
  "/:NHID/medicinePrescription/:prescriptionID",
  controllers.getPatientMedicinePrescription
);
router.get(
  "/:NHID/labReports/:prescription_id",
  controllers.getPatientLabReports
);

module.exports = router;
