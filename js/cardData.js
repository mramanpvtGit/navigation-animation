var Observable = require("FuseJS/Observable");
var API = require("js/restapi");

var profiles = Observable(
  { resource : "Assets/profile_1.png" },
  { resource : "Assets/profile_2.png" },
  { resource : "Assets/profile_3.png" },
  { resource : "Assets/profile_6.png" },
  { resource : "Assets/profile_4.png" },
  { resource : "Assets/profile_5.png" },
  { resource : "Assets/profile_2.png" },
  { resource : "Assets/profile_5.png" },
  { resource : "Assets/profile_4.png" },
  { resource : "Assets/profile_1.png" },
  { resource : "Assets/profile_7.png" },
  { resource : "Assets/profile_3.png" },
  { resource : "Assets/profile_2.png" },
  { resource : "Assets/profile_5.png" },
  { resource : "Assets/profile_4.png" },
  { resource : "Assets/profile_1.png" },
  { resource : "Assets/profile_7.png" },
  { resource : "Assets/profile_3.png" }
);
var newProfiles = Observable();
API.getProfiles().then(function(newProfileList){
  newProfiles.replaceAll(newProfileList);
});
var selectedProfile = Observable();

function getProfile(arg){
  var profile = arg.data;
  var asyncCall = API.getProfile(profile.id).then(function(newProfile){
  selectedProfile.value = newProfile;
  console.log("result value : " + selectedProfile.value);
  router.push("profile", selectedProfile.value);
  });
}

  module.exports = {
    profiles : profiles,
    newProfiles: newProfiles,
    getProfile : getProfile,
    selectedProfile : selectedProfile
  }
