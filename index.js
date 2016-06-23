module.exports = {
	alert: function(title, message, buttonLabel, successCallback) {
	cordova.exec(successCallBack, null, "Alert", "alert", [title, message, buttonLabel]);
	}
};