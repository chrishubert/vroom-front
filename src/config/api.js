'use strict';
const dotenv = require('dotenv');
dotenv.config();

console.log(process.env.VROOM_PORT)

module.exports = {
  tileLayer: 'http://{s}.tile.osm.org/{z}/{x}/{y}.png',
  host: process.env.VROOM_PORT,
  port: process.env.VROOM_HOST,
  maxTaskNumber: 100,
  overpassEndpoint: 'https://overpass-api.de/api/interpreter'
};