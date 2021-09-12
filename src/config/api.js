'use strict';

module.exports = {
  tileLayer: 'http://{s}.tile.osm.org/{z}/{x}/{y}.png',
  host: 'http://157.245.145.81', // TODO: Use .env File
  port: '3000', // TODO: Use .env File
  maxTaskNumber: 1000,
  overpassEndpoint: 'https://overpass-api.de/api/interpreter'
};