const express = require("express");
const router = express.Router({ mergeparams: true });

const controllers = require("../controllers/inventory.controllers");

router.get("/", controllers.getAllInventory);
router.post("/", controllers.postInventory);
router.get("/:id", controllers.getInventory);
router.put("/:id/edit", controllers.editInventory);
router.post("/:id/delete", controllers.deleteInventory);
module.exports = router;
