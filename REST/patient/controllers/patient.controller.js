const Patient = require('../models/patient');
const getAllPatient = async (req, res) => {
	try {
		const patients = await Patient.findAll();
		return res.json(patients);
	} catch (error) {
		console.log(error.message);
		return res.send(error);
	}
};
const postNewPatient = async (req, res) => {
	try {
		const {
			nhid,
			name,
			gender,
			weight,
			height,
			dob,
			mobile_number,
			aadhaar,
			blood_group,
			address,
			pincode,
			emergency_contact_name,
			emergency_contact_number,
			dependant,
			dependee,
		} = req.body;

		const errors = [];

		const patient = await Patient.findAll({
			where: {
				nhid,
			},
		});
		const pat = await Patient.findAll({
			where: {
				aadhaar,
			},
		});
		if (patient.length > 0 || pat.length > 0) {
			errors.push({
				msg: 'ID already exists',
			});
		}
		if (errors.length >= 1) {
			return res.json({
				Success: false,
				errors,
			});
		}
		const newPatient = await Patient.create({
			nhid,
			name,
			gender,
			weight,
			height,
			dob,
			mobile_number,
			aadhaar,
			blood_group,
			address,
			pincode,
			emergency_contact_name,
			emergency_contact_number,
			dependant,
			dependee,
		});
		return res.json({
			success: true,
			newPatient,
		});
	} catch (error) {
		console.log(error.message);
		return res.send(error);
	}
};
const getPatient = async (req, res) => {
	try {
		const { nhid } = req.params;
		const patient = await Patient.findOne({
			where: {
				nhid,
			},
		});
		return res.json(patient);
	} catch (error) {
		console.log(error.message);
		return res.send(error);
	}
};
const editPatient = async (req, res) => {
	try {
		const {
			nhid,
			name,
			gender,
			weight,
			height,
			dob,
			modile_number,
			aadhaar,
			blood_group,
			address,
			pincode,
			emergency_contact_name,
			emergency_contact_number,
			dependant,
			dependee,
		} = req.body;
		const editedPatient = await Patient.update(
			{
				nhid,
				name,
				gender,
				weight,
				height,
				dob,
				modile_number,
				aadhaar,
				blood_group,
				address,
				pincode,
				emergency_contact_name,
				emergency_contact_number,
				dependant,
				dependee,
			},
			{
				where: {
					nhid: req.params.nhid,
				},
			}
		);
		return res.json({
			Success: true,
			editedPatient,
		});
	} catch (error) {
		console.log(error.message);
		return res.send(error);
	}
};
const deletePatient = async (req, res) => {
	try {
		await Patient.destroy({
			where: {
				nhid: req.params.id,
			},
		});
		return res.json({
			success: true,
		});
	} catch (error) {
		console.log(error.message);
		return res.send(error);
	}
};
module.exports = {
	getAllPatient,
	postNewPatient,
	getPatient,
	editPatient,
	deletePatient,
};
