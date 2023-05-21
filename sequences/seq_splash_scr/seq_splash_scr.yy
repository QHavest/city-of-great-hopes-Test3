{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "seq_splash_scr",
  "autoRecord": false,
  "backdropHeight": 1080,
  "backdropImageOpacity": 0.5,
  "backdropImagePath": "",
  "backdropWidth": 1920,
  "backdropXOffset": 0.0,
  "backdropYOffset": 0.0,
  "events": {
    "resourceType": "KeyframeStore<MessageEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [
      {"resourceType":"Keyframe<MessageEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MessageEventKeyframe","resourceVersion":"1.0","Events":[
              "music_stop",
            ],},},"Disabled":false,"id":"b9024bbf-9b2c-4e3d-a7dc-465d613dcb42","IsCreationKey":false,"Key":24.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MessageEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MessageEventKeyframe","resourceVersion":"1.0","Events":[
              "pause_splash",
            ],},},"Disabled":false,"id":"ccd4ce07-c9e1-49e0-a43c-dc1e6d8fdcd9","IsCreationKey":false,"Key":32.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MessageEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MessageEventKeyframe","resourceVersion":"1.0","Events":[
              "splash_destroy",
            ],},},"Disabled":false,"id":"6fbec363-25a7-40c5-a641-f7b57835b154","IsCreationKey":false,"Key":37.0,"Length":1.0,"Stretch":false,},
    ],
  },
  "eventStubScript": null,
  "eventToFunction": {},
  "length": 120.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "parent": {
    "name": "SplashScreen",
    "path": "folders/SplashScreen.yy",
  },
  "playback": 0,
  "playbackSpeed": 10.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": false,
  "spriteId": null,
  "timeUnits": 1,
  "tracks": [
    {"resourceType":"GMAudioTrack","resourceVersion":"1.1","name":"snd_theme_splash","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AudioKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AudioKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AudioKeyframe","resourceVersion":"1.0","Id":{"name":"snd_theme_splash","path":"sounds/snd_theme_splash/snd_theme_splash.yy",},"Mode":0,},},"Disabled":false,"id":"7e016e2c-fd03-4042-806a-369e920a025f","IsCreationKey":false,"Key":0.0,"Length":34.615417,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294069832,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"7edda39e-49c4-4608-9778-3b69e9189c26","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294069832,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"4c60fb27-9fbb-4cbe-b05d-57b1dfc04974","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294069832,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_splash","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_splash","path":"objects/obj_splash/obj_splash.yy",},},},"Disabled":false,"id":"71a72c41-694c-48db-8149-a53c57f9f78b","IsCreationKey":false,"Key":0.0,"Length":26.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4291424840,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"d28a6c0c-8e60-492e-a46a-2608444eba33","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4291424840,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-960.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-540.1426,},},"Disabled":false,"id":"90eb76a7-927f-42ce-887b-712a895f01eb","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4291424840,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"8baf2c95-d68d-4458-8914-42e9ab02dff5","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4291424840,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":9.99963,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":9.99963,},},"Disabled":false,"id":"dc34b9ff-ef48-4710-94ba-1e796536d3a2","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4291424840,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_splash_load","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_splash_load","path":"objects/obj_splash_load/obj_splash_load.yy",},},},"Disabled":false,"id":"17ac04d1-7ae8-4aa5-a860-bae012e520b6","IsCreationKey":false,"Key":26.0,"Length":60.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4293478642,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"89c5b111-a4db-4e24-83b4-a8a262151d8f","IsCreationKey":true,"Key":26.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293478642,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-958.7892,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-539.3189,},},"Disabled":false,"id":"d0c62a5e-4434-450d-a5c7-fcdd2f7e15c6","IsCreationKey":true,"Key":26.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293478642,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"f5af09e7-2cc2-4c97-8c8a-c87e34fb6bb6","IsCreationKey":true,"Key":26.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293478642,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"7f870707-3c13-4730-b259-ad4bfed0e67e","IsCreationKey":true,"Key":26.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4293478642,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 80.0,
  },
  "volume": 1.0,
  "xorigin": -960,
  "yorigin": -540,
}