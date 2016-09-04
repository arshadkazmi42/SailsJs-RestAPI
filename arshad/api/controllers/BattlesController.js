/**
 * BattlesController
 *
 * @description :: Server-side logic for managing Battles
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var _ = require('lodash');
module.exports = {

	getBattles: function(req, res) {
		var whereCondition = {};

		BattleServices.findBattles(whereCondition, function(isBattles){
			if(isBattles.status){
				ResponseServices.battlesResponse(res, 200, isBattles.battles);
			} else {
				ResponseServices.statusAndMessageResponse(res, 500, isBattles.message);
			}
		});
	},

	countRecords: function(req, res){
		BattleServices.countBattles(function(isBattles){
			if(isBattles.status){
				ResponseServices.countMessage(res, 200, isBattles.count);
			} else {				
				ResponseServices.statusAndMessageResponse(res, 500, isBattles.message);
			}
		});
	},

	getStats: function(req, res){
		BattleServices.getStats(function(result){
			return res.send(result);
		})
	},

	search: function(req, res){
		var name = req.param('name');
		var king = req.param('king');
		var type = req.param('type');
		var location = req.param('location');
		var request = req.params.all();		
		var whereCondition;		
		if(request.hasOwnProperty('name')){
			whereCondition = {name: {'contains': name}};
		} else if(request.hasOwnProperty('king')) {
			whereCondition = { or : [{defender_king: {'contains': king}}, {attacker_king: {'contains': king}}]};
		} else if(request.hasOwnProperty('type')) {
			whereCondition = {battle_type: type};
		} else if(request.hasOwnProperty('location')) {
			whereCondition = {location: location};
		}		
		BattleServices.findBattles(whereCondition, function(isBattles){
			if(isBattles.status){
				ResponseServices.battlesResponse(res, 200, isBattles.battles);
			} else {
				ResponseServices.statusAndMessageResponse(res, 500, isBattles.message);
			}
		});
	}
	
};

