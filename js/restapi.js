var ROOT_URL = "https://localhost:8080/v2/";
function apiFetch(path, options) {
	var url = encodeURI(ROOT_URL + path);

	if(options === undefined) {
		options = {};
	}

	// If a body is provided, serialize it as JSON and set the Content-Type header
	if(options.body !== undefined) {
		options = Object.assign({}, options, {
			body: JSON.stringify(options.body),
			headers: Object.assign({}, options.headers, {
				"Content-Type": "application/json"
			})
		});
	}

	// Fetch the resource and parse the response as JSON
	return fetch(url, options)
		.then(function(response) { return response.json(); });
}

function getProfiles(){
  return apiFetch("/find-all");
}

function getProfile(id){
  return apiFetch("/find?id=" + id);
}

module.exports = {
  getProfile : getProfile,
  getProfiles : getProfiles
}
