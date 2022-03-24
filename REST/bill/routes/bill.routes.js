const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/bill.controllers");

router.get("/", controllers.getAllBill);
router.post("/", controllers.postBill);
router.get("/:prescription_id", controllers.getBill);
router.put("/:id/edit", controllers.editBill);
router.post("/:id/delete", controllers.deleteBill);
module.exports = router;
