const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/prescription.controllers");

router.get("/", controllers.getAllPrescriptions);
router.post("/", controllers.postPrescription);
router.get("/:id", controllers.getPrescription);
router.put("/:id/edit", controllers.editPrescription);
router.post("/:id/delete", controllers.deletePrescription);
router.get("/:prescription_id", controllers.getPrescriptionById);
module.exports = router;
