let sequelize = require('sequelize');
let Doctor = require('../models/doctor');

//Require the dev-dependencies
let chai = require('chai');
let chaiHttp = require('chai-http');
let server = require('../index.js');
let should = chai.should();

chai.use(chaiHttp);
//Our parent block
describe(' get doctors', () => {
	// beforeEach((done) => {
	// 	//Before each test we empty the database
	// 	Doctor.destroy({ where: {}, truncate: true }, (err) => {
	// 		done();
	// 	});
	// });
	/*
	 * Test the /GET route
	 */
	describe('/GET doctors', () => {
		it('it should GET all the doctors', (done) => {
			chai.request(server)
				.get('/doctor')
				.end((err, res) => {
					res.should.have.status(200);
					res.body.should.be.a('array');
					res.body.length.should.be.eql(0);
					done();
				});
		});
	});
});
