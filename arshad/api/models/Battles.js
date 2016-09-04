/**
 * Battles.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {


    tableName: 'battles',
    migrate: 'safe',
    autoPK: false,
    autoCreatedAt: false,
    autoUpdatedAt: false,

  	attributes: {

  		id: {
  			type: 'integer',
  			primaryKey: true,
  			required: true,
  			autoIncrement: true
  		},
  		name: {
  			type: 'string',
  			size: 52
  		},
  		year: {
  			type: 'integer',
  			size: 3
  		},
  		battle_number: {
  			type: 'integer',
  			size: 2
  		},
  		attacker_king: {
  			type: 'string',
  			size: 24
  		},
  		defender_king: {
  			type: 'string',
  			size: 24
  		},
  		attacker_1: {
  			type: 'string',
  			size: 27
  		},
  		attacker_2: {
  			type: 'string',
  			size: 9
  		},
  		attacker_3: {
  			type: 'string',
  			size: 7
  		},
  		attacker_4:{
  			type: 'string',
  			size: 6
  		},
  		defender_1: {
  			type: 'string',
  			size: 16
  		},
  		defender_2: {
  			type: 'string',
  			size: 9
  		},
  		defender_3: {
  			type: 'string',
  			size: 10
  		},
  		defender_4: {
  			type: 'string',
  			size: 10
  		},
  		attacker_outcome: {
  			type: 'string',
  			size: 4
  		},
  		battle_type: {
  			type: 'string',
  			size: 14
  		},
  		major_death: {
  			type: 'string',
  			size: 1
  		},
  		major_capture: {
  			type: 'string',
  			size: 1
  		},
  		attacker_size: {
  			type: 'string',
  			size: 6
  		},
  		defender_size: {
  			type: 'string',
  			size: 5
  		},
  		attacker_commander: {
  			type: 'string',
  			size: 95
  		},
  		defender_commander: {
  			type: 'string',
  			size: 106
  		},
  		summer: {
  			type: 'string',
  			size: 1
  		},
  		location: {
  			type: 'string',
  			size: 36
  		},
  		region: {
  			type: 'string',
  			size: 15
  		},
  		note: {
  			type: 'string',
  			size: 257
  		}
  	}
};

