const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/report.controllers");

router.get("/", controllers.getAllReport);
router.post("/", controllers.postReport);
router.get("/:id", controllers.getReport);
router.put("/:id/edit", controllers.editReport);
router.post("/:id/delete", controllers.deleteReport);
router.get("/:prescription_id", controllers.getReportByPrescriptionId);
module.exports = router;
