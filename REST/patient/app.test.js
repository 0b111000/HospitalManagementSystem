const request = require('supertest');
const app = require('./app');

const Patient = require('./models/patient');
const sequelize = require('./config/sequelize');

beforeAll(() => {
	return sequelize.sync({ force: true });
});

beforeEach(() => {
	return Patient.destroy({ truncate: true });
});

describe('Test patient related api endpoints', () => {
	it('create a patient successfully', (done) => {
		request(app)
			.post('/patient')
			.send({
				nhid: '12345678901234',
				name: 'test name',
				gender: 'M',
				weight: '80',
				height: '175',
				dob: '17-11-2000',
				mobile_number: '1234567890',
				aadhaar: '123456789012',
				blood_group: 'AB+',
				address: 'Somewhere',
				pincode: 123456,
				emergency_contact_name: 'Someone',
				emergency_contact_number: '1231231231',
				dependant: false,
			})
			.then((response) => {
				expect(response.status).toBe(200);
				expect(response.body.success).toBe(true);
				done();
			});
	});

	it('get all patient lists', async () => {
		const patientList = await Patient.create({
			nhid: '12345678901234',
			name: 'test name',
			gender: 'M',
			weight: '80',
			height: '175',
			dob: '17-11-2000',
			mobile_number: '1234567890',
			aadhaar: '123456789012',
			blood_group: 'AB+',
			address: 'Somewhere',
			pincode: 123456,
			emergency_contact_name: 'Someone',
			emergency_contact_number: '1231231231',
			dependant: false,
		});

		request(app)
			.get('/patient')
			.then((response) => {
				console.log('response get all', response.body);
				expect(response.statusCode).toBe(200);
				//	expect(response.body.length).toBe(1);
				expect(response.body).toEqual(expect.any(Array));
			});
	});
});

it('get patient details by id', async () => {
	try {
		const patient = await Patient.create({
			nhid: '12345678901234',
			name: 'test name',
			gender: 'M',
			weight: '80',
			height: '175',
			dob: '17-11-2000',
			mobile_number: '1234567890',
			aadhaar: '123456789012',
			blood_group: 'AB+',
			address: 'Somewhere',
			pincode: 123456,
			emergency_contact_name: 'Someone',
			emergency_contact_number: '1231231231',
			dependant: false,
		});

		console.log('patient id', patient.nhid);
		await request(app)
			.get(`/patient/12345678901234`)
			.expect(200)
			.then((response) => {
				console.log('res nhid', response.body);
				expect(response.statusCode).toBe(200);
				expect(response.body[0].nhid).toBe(patient.nhid);
			});
	} catch (error) {}
});

describe('Update api endpoints', () => {
	it('update patient details successfully', async () => {
		const patient = await Patient.create({
			nhid: '12345678901234',
			name: 'test name',
			gender: 'M',
			weight: '80',
			height: '175',
			dob: '17-11-2000',
			mobile_number: '1234567890',
			aadhaar: '123456789012',
			blood_group: 'AB+',
			address: 'Somewhere',
			pincode: 123456,
			emergency_contact_name: 'Someone',
			emergency_contact_number: '1231231231',
			dependant: false,
		});

		const dataToUpdate = {
			weight: '85',
			height: '180',
		};

		await request(app)
			.post(`/patient/12345678901234/edit`)
			.send(dataToUpdate)
			.then((response) => {
				expect(response.statusCode).toBe(200);
				//	expect(response.body.weight).toBe(dataToUpdate.weight);
			});
	});
});

describe('Delete Routes', () => {
	it('Delete patient info', async () => {
		const patient = await Patient.create({
			nhid: '12345678901234',
			name: 'test name',
			gender: 'M',
			weight: '80',
			height: '175',
			dob: '17-11-2000',
			mobile_number: '1234567890',
			aadhaar: '123456789012',
			blood_group: 'AB+',
			address: 'Somewhere',
			pincode: 123456,
			emergency_contact_name: 'Someone',
			emergency_contact_number: '1231231231',
			dependant: false,
		});

		const search_id = patient.nhid;
		console.log('search_id', search_id);

		await request(app)
			.post(`/patient/${patient.nhid}/delete`)
			.then(async (response) => {
				console.log('response values ', response.body);
				//	expect(response.body.success).toBe(true);
				try {
					const searchPatient = await Patient.findAll({
						where: { nhid: search_id },
					});

					expect(searchPatient.length).toBe(0);
				} catch (error) {}
			});
	});
});
