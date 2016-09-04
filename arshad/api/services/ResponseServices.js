module.exports = {
	
	battlesResponse: function(res, responseCode, battles) {
		res.status(responseCode);
		return res.json({battles: battles});
	},

	statusAndMessageResponse: function(res, responseCode, message){
		res.status(responseCode);
		return res.json({message: message});
	},

	countMessage: function(res, responseCode, count){
		res.status(responseCode);
		return res.json({records: count});
	},

}