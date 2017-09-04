var ROOT_URL = "http://localhost:8080";
function apiFetch(path, options) {
	var url = encodeURI(ROOT_URL + path);
	console.log("url = " + url);
	if(options === undefined) {
		options = {};
	}
	return fetch(url, options)
		.then(function(response) { return response.json(); });
}

function getProfiles(){
	console.log("Calling get profiles");
	var profiles = apiFetch("/find-all");
	console.log(profiles);
  return profiles;
}

function getProfile(id){
  return apiFetch("/find?id=" + id);
}

module.exports = {
  getProfile : getProfile,
  getProfiles : getProfiles
}
