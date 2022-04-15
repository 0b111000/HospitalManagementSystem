# Hospital Management Service
![hms](https://socialify.git.ci/Imperial-lord/hms/image?description=1&descriptionEditable=HMS%20is%20a%20software%20application%20that%20helps%20manage%20the%20information%20related%20to%20health%20care%20and%20track%20patients%27%20treatment%20journey.&font=Inter&forks=1&issues=1&pattern=Circuit%20Board&pulls=1&stargazers=1&theme=Light)
 A Hospital Management System (HMS) is a software application that helps manage the information related to health care and track patients through their treatment journey. On the scale of a country as large and diverse as India, the problem requires innovative, scalable solutions. Creating a network of approved hospitals, HMS will provide the ability to manage all the records in one place, visualize a patient’s medical history, allow doctors to manage patients better by automating manual workflows (example, automating the generation of medical bills and preparing the medicines in the hospital’s dispensary based on doctor’s appointment conclusion).

## Key Features 

- [x]  Highly Scalable hospital management system based on microservices
- [x]  Efficient use of databases and schemas for storing sensitive health related information
- [x]  Highly suitable for multi chained hospital
- [x]  Used GitHub Actions for CI/CD
- [x]  Done Integration and Unit Testing  
- [x]  API Documentation

We have built a resilient, highly scalable hospital management system (HMS) that would work for individual and multi-chain hospitals.
We completed the implementation by working on three broad and significant modules for the patients, doctors, and hospitals. We have also catered to the
needs of pharmacies and other hospital sections such as accounts and inventory management. Using a microservice-based architecture and with appropriate
technology decisions for designing databases, linking and storing sensitive data, and reliable deployment, we have ensured that our application is suitable for large-scale usage.

### Prerequisites

1.  [Git](https://git-scm.com/downloads).
2.  [Node & npm](https://nodejs.org/en/download/) _(version 12 or greater)_.
3.  MongoDB
4.  MySQL
5.  Jest

### Directory Structure

```
backend:
├── REST
│   ├── bill
│   │   ├── controllers
│   │   │   └── bill.controllers.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── bill.js
│   │   ├── package.json
│   │   └── routes
│   │       └── bill.routes.js
│   ├── doctor
│   │   ├── config
│   │   │   └── sequelize.js
│   │   ├── controllers
│   │   │   └── doctor.controller.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── doctor.js
│   │   ├── package.json
│   │   └── routes
│   │       └── doctor.routes.js
│   ├── doctorId
│   │   ├── config
│   │   │   └── sequelize.js
│   │   ├── controllers
│   │   │   └── doctorId.controller.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── doctorId.js
│   │   ├── package.json
│   │   └── routes
│   │       └── doctorId.routes.js
│   ├── hospital
│   │   ├── config
│   │   │   └── sequelize.js
│   │   ├── controllers
│   │   │   └── Hospital.controller.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── Hospital.js
│   │   ├── package.json
│   │   └── routes
│   │       └── Hospital.routes.js
│   ├── hospitalId
│   │   ├── config
│   │   │   └── sequelize.js
│   │   ├── controllers
│   │   │   └── hospitalId.controller.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── hospitalId.js
│   │   ├── package.json
│   │   └── routes
│   │       └── hospitalId.routes.js
│   ├── inventory
│   │   ├── controllers
│   │   │   └── inventory.controllers.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── inventory.js
│   │   ├── package.json
│   │   └── routes
│   │       └── inventory.routes.js
│   ├── opd
│   │   ├── controllers
│   │   │   └── opd.contollers.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── opd.js
│   │   ├── package.json
│   │   └── routes
│   │       └── opd.routes.js
│   ├── patient
│   │   ├── config
│   │   │   └── sequelize.js
│   │   ├── controllers
│   │   │   └── patient.controller.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── patient.js
│   │   ├── package.json
│   │   └── routes
│   │       └── patient.routes.js
│   ├── prescription
│   │   ├── controllers
│   │   │   └── prescription.controllers.js
│   │   ├── index.js
│   │   ├── models
│   │   │   └── prescription.js
│   │   ├── package.json
│   │   └── routes
│   │       └── prescription.routes.js
│   └── report
│       ├── controllers
│       │   └── report.controllers.js
│       ├── index.js
│       ├── models
│       │   └── report.js
│       ├── package.json
│       └── routes
│           └── report.routes.js
└── services
    ├── Doctor
    │   ├── controllers
    │   │   └── doctor.controllers.js
    │   ├── index.js
    │   ├── package.json
    │   └── routes
    │       └── doctor.routes.js
    ├── Hospital
    │   ├── controllers
    │   │   └── hospital.controllers.js
    │   ├── index.js
    │   ├── package.json
    │   └── routes
    │       └── hospital.routes.js
    └── Patient
        ├── controllers
        │   └── patient.controllers.js
        ├── index.js
        ├── package.json
        └── routes
            └── patient.routes.js

```
