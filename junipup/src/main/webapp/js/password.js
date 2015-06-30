Password = function(password, password2) {
	this.password = password;
	this.password2 = password2;
}
Password.prototype.setValue = function(beforePassword, afterPassword) {
	this.password = beforePassword;
	this.password2 = afterPassword;
}
Password.prototype.getEqual = function() {
	if(password == password2){
		return "1";
	}
	else{
		return "2";
	}
}
Password.prototype.toString = function() {
	return "첫번째 : " + this.password + ", 두번째 : " + this.password2 ;
}