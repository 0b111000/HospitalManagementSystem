const request = require('supertest');
const app = require('../index');
const mongoose = require('mongoose');

const Bill = require('../models/bill');
// const sequelize = require('./config/sequelize');

beforeAll(() => {
	// return sequelize.sync({ force: true });
	// const url = `mongodb://127.0.0.1/${databaseName}`
  	return mongoose.connect(process.env.MONGO_URL, { useNewUrlParser: true })
});

beforeEach(() => {
	return Bill.deleteMany();
});

describe('Test bill related api endpoints', () => {
	it('create a bill successfully', (done) => {
		request(app)
			.post('/bill')
			.send({
				prescription_id: '12345678901234',
				bill_id: '12343456789103',
				patient_name: 'test name',
				patient_contact: '1231231231',
			})
			.then((response) => {
				expect(response.status).toBe(200);
				expect(response.body.status).toBe('Success');
				done();
			});
	});

	it('get all bill lists', async () => {
		const billList = await Bill.create({
			prescription_id: '12345678901234',
				bill_id: '12343456789103',
				patient_name: 'test name',
				patient_contact: '1231231231',
		});

		request(app)
			.get('/bill')
			.then((response) => {
				expect(response.statusCode).toBe(200);
				expect(response.body.data).toEqual(expect.any(Array));
				done();
			});
	});

	it('get bill details by id', async () => {
	
		const bill = await Bill.create({
			prescription_id: '12345678901234',
			bill_id: '12343456789103',
			patient_name: 'test name',
			patient_contact: '1231231231',
		});

		// console.log('bill id', bill.nhid);
		request(app)
			.get(`/bill/12345678901234`)
			.then((response) => {
			//	console.log('res nhid', response.body);
				expect(response.statusCode).toBe(200);
				expect(response.body[0].bill_id).toBe(bill.bill_id);
				///done();
		});
	});
});
