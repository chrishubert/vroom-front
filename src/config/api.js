'use strict';

module.exports = {
  tileLayer: 'http://{s}.tile.osm.org/{z}/{x}/{y}.png',
  host: process.env.VROOM_PORT,
  port: process.env.VROOM_HOST,
  maxTaskNumber: 1000,
  overpassEndpoint: 'https://overpass-api.de/api/interpreter'
};