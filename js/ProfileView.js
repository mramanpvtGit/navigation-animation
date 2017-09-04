var profile = this.Parameter;

var resource = profile.map(function(x){return x.name});


function goBack(){
  router.goBack();
}
module.exports ={
  resource: resource,
  profile: profile,
  goBack : goBack
}
