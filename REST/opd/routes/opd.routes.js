const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/opd.contollers");

router.post("/", controllers.postOPD);
router.get("/:id", controllers.getOPD);
router.put("/:id/edit", controllers.editOPD);
router.post("/:id/delete", controllers.deleteOPD);
module.exports = router;
