var _ = require('lodash');
module.exports = {

	findBattles: function(whereCondition, cb){
		Battles.find(whereCondition).exec(function(err, battles){
			if(err){
				sails.log.debug(err);
				cb({status: false, message: 'Server error'});
			} else if(!battles || battles.length == 0) {
				cb({status: false, message: 'No battles found'});
			} else {
				cb({status: true, battles: battles});
			}
		});		
	},

	countBattles: function(cb){
		Battles.count().exec(function(err, count){
			if(err){
				sails.log.debug(err);
				cb({status: false, message: 'Server error'});
			} else if(!count) {
				cb({status: false, message: 'Nothing found'});
			} else {
				cb({status: true, count: count});
			}
		});
	},

	getStats: function(cb){
		Battles.find().exec(function(err, count){
			var attackerKing = _.sortBy(_.groupBy(count, 'attacker_king'), 'desc');
			var defenderKing = _.sortBy(_.groupBy(count, 'defender_king'), 'desc');
			var region = _.sortBy(_.groupBy(count, 'region'), 'desc');

			var mostActive = {
				attacker_king: attackerKing[0][0].attacker_king, 
				defender_king: defenderKing[0][0].defender_king, 
				region: region[0][0].region
			};

			var attackerOutcomeCount = _.countBy(count, 'attacker_outcome');			
			var attackerOutcome = {win: attackerOutcomeCount.win, loss: attackerOutcomeCount.loss};

			var battleTypeUnique = _.uniqBy(count, 'battle_type');
			var battleType = battleTypeUnique.map(function(object){				
				return object.battle_type;				
			});
			battleType = _.pull(battleType, "");

			var defenderSize = count.map(function(object){
				if(object.defender_size != '') {
					return parseInt(object.defender_size);
				} else {
					return null;
				}
			});
			defenderSize = _.pull(defenderSize, null);
			defenderSize = _.sortBy(defenderSize, 'asc');
			var min = defenderSize[0];
			var max = defenderSize[(defenderSize.length-1)];
			//Rounding off mean to two decimal places
			var avg = Math.floor((_.meanBy(defenderSize)) * 100) / 100;

			defenderSize = {
				average: avg,
				min: min,
				max: max
			};

			cb({				
				most_active: mostActive,
				attacker_outcome: attackerOutcome,
				battle_type: battleType,
				defender_size: defenderSize
			});
		});
	}

}