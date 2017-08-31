var profile = this.Parameter;

var resource = profile.map(function(x){return x.resource});

function goBack(){
  router.goBack();
}
module.exports ={
  resource: resource,
  profile: profile,
  goBack : goBack
}
