{
  "resourceType": "GMSequence",
  "resourceVersion": "1.4",
  "name": "Sequence1_test",
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
              "camera1",
            ],},},"Disabled":false,"id":"3b235161-87e8-4760-b631-6bc432934bdb","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MessageEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MessageEventKeyframe","resourceVersion":"1.0","Events":[
              "camera3",
            ],},},"Disabled":false,"id":"3ed5b3b9-d6db-4d43-bac4-b4c5c2a52b06","IsCreationKey":false,"Key":37.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MessageEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MessageEventKeyframe","resourceVersion":"1.0","Events":[
              "camera0",
            ],},},"Disabled":false,"id":"9a2b3433-a301-4006-959f-13fb08404318","IsCreationKey":false,"Key":57.0,"Length":1.0,"Stretch":false,},
      {"resourceType":"Keyframe<MessageEventKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"MessageEventKeyframe","resourceVersion":"1.0","Events":[
              "stop",
            ],},},"Disabled":false,"id":"a7852007-42a2-44aa-af6a-b875c4554327","IsCreationKey":false,"Key":59.0,"Length":1.0,"Stretch":false,},
    ],
  },
  "eventStubScript": null,
  "eventToFunction": {
    "0": "Sequence1_event_create",
    "1": "Sequence1_event_destroy",
    "2": "Sequence1_event_clean_up",
    "3": "Sequence1_event_step",
    "4": "Sequence1_event_step_begin",
    "5": "Sequence1_event_step_end",
    "6": "Sequence1_event_async_system",
  },
  "length": 100.0,
  "lockOrigin": false,
  "moments": {
    "resourceType": "KeyframeStore<MomentsEventKeyframe>",
    "resourceVersion": "1.0",
    "Keyframes": [],
  },
  "parent": {
    "name": "Day_2",
    "path": "folders/Cutscene/Day_2.yy",
  },
  "playback": 0,
  "playbackSpeed": 5.0,
  "playbackSpeedType": 0,
  "showBackdrop": true,
  "showBackdropImage": false,
  "spriteId": null,
  "timeUnits": 0,
  "tracks": [
    {"resourceType":"GMGroupTrack","resourceVersion":"1.0","name":"Sounds","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"modifiers":[],"trackColour":4282944242,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"90a5ec38-b354-404d-9534-19584006824c","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"0c84d801-b6d1-4156-8b8e-aa9fa6c5e15a","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
        {"resourceType":"GMAudioTrack","resourceVersion":"1.1","name":"snd_text_words","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AudioKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<AudioKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AudioKeyframe","resourceVersion":"1.0","Id":{"name":"snd_text_words","path":"sounds/snd_text_words/snd_text_words.yy",},"Mode":0,},},"Disabled":false,"id":"476dc874-f351-4b98-83eb-60ae8b97c59d","IsCreationKey":false,"Key":0.0,"Length":31.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282944242,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"36d322c1-5235-4694-adab-147ce15a71d1","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"fde771ad-1e45-4ff6-846e-ebe486893b25","IsCreationKey":false,"Key":0.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
          ],"traits":0,},
        {"resourceType":"GMAudioTrack","resourceVersion":"1.1","name":"snd_throwdown","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AudioKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<AudioKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AudioKeyframe","resourceVersion":"1.0","Id":{"name":"snd_throwdown","path":"sounds/snd_throwdown/snd_throwdown.yy",},"Mode":0,},},"Disabled":false,"id":"023cfe4d-6e63-4cbb-b4c0-d062e0ede4fc","IsCreationKey":false,"Key":31.0,"Length":8.653854,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282944242,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"73ef65c8-6a2b-4e43-a8bf-bac3bf095d50","IsCreationKey":false,"Key":31.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"b4a14f77-92f0-4749-a12f-175ce0087a57","IsCreationKey":false,"Key":31.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
          ],"traits":0,},
        {"resourceType":"GMAudioTrack","resourceVersion":"1.1","name":"snd_skrup","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AudioKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<AudioKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AudioKeyframe","resourceVersion":"1.0","Id":{"name":"snd_skrup","path":"sounds/snd_skrup/snd_skrup.yy",},"Mode":0,},},"Disabled":false,"id":"b4c667c5-6810-4c2e-b051-ca654b6356d4","IsCreationKey":false,"Key":44.0,"Length":7.35578,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282944242,"tracks":[
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"1f627072-e13c-4a25-ad9f-1e21b53ff599","IsCreationKey":false,"Key":44.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
            {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
                  {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"91278c69-ffb4-4e50-a58c-847cfa60da57","IsCreationKey":false,"Key":44.0,"Length":1.0,"Stretch":false,},
                ],},"modifiers":[],"trackColour":4282944242,"tracks":[],"traits":0,},
          ],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_title_s","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_title_s","path":"objects/obj_title_s/obj_title_s.yy",},},},"Disabled":false,"id":"fe6d048d-1116-443e-9e71-bd6fb10daa78","IsCreationKey":false,"Key":0.0,"Length":30.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294069320,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"7f10a8c3-9e1e-4612-be61-ace824c14399","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294069320,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"a0d68015-8c9d-428d-8f25-797613616802","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294069320,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"d6d7cc6e-3f14-4a22-8c58-79621ec410ff","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294069320,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"84c98e1d-c112-4503-a460-b37bf78ff69c","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294069320,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_dark","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"spr_dark","path":"sprites/spr_dark/spr_dark.yy",},},},"Disabled":false,"id":"47b9d50c-ea59-4b15-b32d-3beb4b7e8965","IsCreationKey":false,"Key":30.0,"Length":14.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4282939122,"tracks":[
        {"resourceType":"GMColourTrack","resourceVersion":"1.0","name":"blend_multiply","builtinName":10,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<ColourKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"9d4f192c-a197-4454-bec0-ab46bdc0ae1d","IsCreationKey":false,"Key":30.0,"Length":1.0,"Stretch":false,},
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":4294967295,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"21113a4b-acb3-43df-ba72-7560e47bce85","IsCreationKey":false,"Key":37.0,"Length":1.0,"Stretch":false,},
              {"resourceType":"Keyframe<ColourKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"ColourKeyframe","resourceVersion":"1.0","AnimCurveId":null,"Colour":16777215,"EmbeddedAnimCurve":null,},},"Disabled":false,"id":"de68aac8-583a-49f7-b0af-baa820c21328","IsCreationKey":false,"Key":40.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282939122,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"6e9c45a4-d92a-4d38-b240-d5fc903db20a","IsCreationKey":true,"Key":30.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282939122,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-202.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-60.0,},},"Disabled":false,"id":"7834293c-8e76-4dc8-acba-057ac37b06ac","IsCreationKey":true,"Key":30.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282939122,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"0f55deec-a81c-4760-b18b-9c765a1a4356","IsCreationKey":true,"Key":30.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282939122,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":6.328125,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.9375,},},"Disabled":false,"id":"f6d8d8ed-f386-4fff-a56a-de4b41cc84e1","IsCreationKey":true,"Key":30.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282939122,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_krus_sit","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"spr_krus_sit","path":"sprites/spr_krus_sit/spr_krus_sit.yy",},},},"Disabled":false,"id":"c2e5704d-e873-4739-af0b-6aeaf00ebfdd","IsCreationKey":false,"Key":37.0,"Length":8.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4282970749,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"0d42bf77-88dc-4362-a70f-b4e79747215f","IsCreationKey":true,"Key":37.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970749,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-172.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":26.999998,},},"Disabled":false,"id":"e0f34482-a512-48d3-b7fc-6923c24aac91","IsCreationKey":true,"Key":44.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970749,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"32e94b89-e6f8-4d3e-a147-407992154983","IsCreationKey":true,"Key":37.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970749,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"ea688f85-23f1-4d6a-961f-db191ce7b0a3","IsCreationKey":true,"Key":37.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970749,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_krus_give_cushion","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_krus_give_cushion","path":"objects/obj_krus_give_cushion/obj_krus_give_cushion.yy",},},},"Disabled":false,"id":"fcf2716c-d899-419a-b1db-dcc218d3dbd5","IsCreationKey":false,"Key":45.0,"Length":3.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4285002312,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"0a25c954-96b3-4c86-8694-04596451dc90","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4285002312,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-170.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":23.999998,},},"Disabled":false,"id":"ab28167d-c762-46ff-afd0-9a5fcb0f3dd1","IsCreationKey":true,"Key":20.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4285002312,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"74649061-18ff-4103-a2b9-d8e23624814a","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4285002312,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"92d75fee-d1af-470f-9ca7-dc7f0988d007","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4285002312,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_krus_give_cushion","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"spr_krus_give_cushion","path":"sprites/spr_krus_give_cushion/spr_krus_give_cushion.yy",},},},"Disabled":false,"id":"a7b7e70a-2e51-4e60-a360-c4034e1a1af7","IsCreationKey":false,"Key":48.0,"Length":6.5,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4282970729,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"36cb8734-6632-4eaa-b34a-d03a7981d6d4","IsCreationKey":true,"Key":48.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970729,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-164.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":24.0,},},"Disabled":false,"id":"53c73a1a-def9-4888-92a6-af4fc5f8be81","IsCreationKey":false,"Key":48.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970729,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"e3250786-2a5c-47a7-ac0d-882998693b40","IsCreationKey":true,"Key":48.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970729,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"c14aba0c-65b0-41c4-9c7a-f8c32d514d36","IsCreationKey":true,"Key":48.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970729,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_krus_give_cushion2","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"spr_krus_give_cushion2","path":"sprites/spr_krus_give_cushion2/spr_krus_give_cushion2.yy",},},},"Disabled":false,"id":"1d7c8070-00db-49a8-a4c0-e201cf05e31b","IsCreationKey":false,"Key":54.0,"Length":2.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294107208,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"ff7bc23f-fba4-4dca-8dd6-245920197270","IsCreationKey":true,"Key":54.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294107208,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-164.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":24.0,},},"Disabled":false,"id":"fd85ec80-2317-4ba3-bbd0-20ddee1a4d3b","IsCreationKey":false,"Key":54.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294107208,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"4240b3cb-840b-413a-8230-cbbbd5a09825","IsCreationKey":true,"Key":54.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294107208,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"4b84718d-ec82-456d-9ae2-f0a862e00ac2","IsCreationKey":true,"Key":54.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294107208,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_dim_player2_cut","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_dim_player2_cut","path":"objects/obj_dim_player2_cut/obj_dim_player2_cut.yy",},},},"Disabled":false,"id":"d25554f5-588a-40ee-b486-81ec2872b0ce","IsCreationKey":false,"Key":56.0,"Length":27.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4282970852,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"3b27b87d-b8cc-4b9c-9003-bc214da1bd7f","IsCreationKey":false,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970852,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-145.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":41.0,},},"Disabled":false,"id":"c6a03970-d39a-4803-bcbc-da508985fb91","IsCreationKey":false,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970852,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"bf5a3dbf-fe8e-4952-9e37-67a494b85390","IsCreationKey":false,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970852,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"bdf292ef-e8fa-44d6-846c-c4ccb6d53fed","IsCreationKey":false,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4282970852,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_bed_cut","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_bed_cut","path":"objects/obj_bed_cut/obj_bed_cut.yy",},},},"Disabled":false,"id":"5f7635bc-09c3-4eaa-9394-c9bd8a22c3de","IsCreationKey":false,"Key":56.0,"Length":22.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4289677554,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"f032076d-6b49-443d-8063-0d170c3a0ee0","IsCreationKey":true,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4289677554,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-200.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-5.0,},},"Disabled":false,"id":"08563f86-b769-49f3-bb25-e4fa14603175","IsCreationKey":true,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4289677554,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"28e9c853-0bd2-4ace-8d10-c8c735c3d3fa","IsCreationKey":true,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4289677554,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"4166854a-332b-4e0b-becd-ad15acbe424e","IsCreationKey":true,"Key":56.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4289677554,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_table_gg","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_table_gg","path":"objects/obj_table_gg/obj_table_gg.yy",},},},"Disabled":false,"id":"c5f26966-e053-48d2-974a-c0bb1f27833a","IsCreationKey":false,"Key":45.0,"Length":39.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294104648,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"4182ed79-ec5f-4984-a3c4-c5a06d19233a","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294104648,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-90.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":10.0,},},"Disabled":false,"id":"c43cb6cb-515e-4222-ab99-cef7b41222fa","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294104648,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"9cac9cc4-453c-4ca6-ba8c-680f3f297ac9","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294104648,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"8f0d000b-57eb-4eb1-8f7e-8c429fc8f111","IsCreationKey":true,"Key":45.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294104648,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_mebli_gg_b","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_mebli_gg_b","path":"objects/obj_mebli_gg_b/obj_mebli_gg_b.yy",},},},"Disabled":false,"id":"47a57ebf-df10-4d79-b55a-c1d80f671a82","IsCreationKey":false,"Key":0.0,"Length":22.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294102088,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"3355374f-c7fc-4ba6-bf3f-ce3a46eb5e98","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294102088,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":95.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-15.0,},},"Disabled":false,"id":"a0c01b5f-495f-4afc-a78b-140b95328058","IsCreationKey":true,"Key":21.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294102088,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"5d0cce09-4c58-498e-a429-ecec200b531a","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294102088,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"f6961c42-4d7d-4dac-b667-2ca8689cc38c","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294102088,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_dim_player2","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_dim_player2","path":"objects/obj_dim_player2/obj_dim_player2.yy",},},},"Disabled":false,"id":"5971224c-37c4-49c2-964f-e3378ebe0c56","IsCreationKey":false,"Key":76.0,"Length":2.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294068386,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"c43f2639-6382-4763-9d7a-b0c14734f478","IsCreationKey":true,"Key":76.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068386,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":-30.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":50.5,},},"Disabled":false,"id":"8daa7caf-feb4-4f8d-b996-3c8b891e66ab","IsCreationKey":true,"Key":76.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068386,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"5019d0ca-656e-4b51-ac50-ea5e94842fd9","IsCreationKey":true,"Key":76.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068386,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"7d3828f2-4da7-4663-bb81-1ad5bd971b9f","IsCreationKey":true,"Key":76.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294068386,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMGraphicTrack","resourceVersion":"1.0","name":"spr_home_gg_inside_bad","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetSpriteKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetSpriteKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetSpriteKeyframe","resourceVersion":"1.0","Id":{"name":"spr_home_gg_inside_bad","path":"sprites/spr_home_gg_inside_bad/spr_home_gg_inside_bad.yy",},},},"Disabled":false,"id":"963530e3-2029-4072-93da-680228622645","IsCreationKey":false,"Key":0.0,"Length":79.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294085960,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"2136ec93-247a-42c9-9638-899ebde188d5","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"e5cfca16-e6dc-4061-9949-d18dac5633d1","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"ab5a6d9e-d877-4d28-9b81-7ded71afe2a1","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"4f663d67-71e0-4682-8816-2ea6efdd59ce","IsCreationKey":true,"Key":0.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
      ],"traits":0,},
    {"resourceType":"GMInstanceTrack","resourceVersion":"1.0","name":"obj_dim_player1","builtinName":0,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":false,"keyframes":{"resourceType":"KeyframeStore<AssetInstanceKeyframe>","resourceVersion":"1.0","Keyframes":[
          {"resourceType":"Keyframe<AssetInstanceKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"AssetInstanceKeyframe","resourceVersion":"1.0","Id":{"name":"obj_dim_player1","path":"objects/obj_dim_player1/obj_dim_player1.yy",},},},"Disabled":false,"id":"a429abe3-7fb2-4f35-a049-018ec8260c09","IsCreationKey":false,"Key":74.0,"Length":4.0,"Stretch":false,},
        ],},"modifiers":[],"trackColour":4294085960,"tracks":[
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"origin","builtinName":16,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"7163aa28-6cf8-4f6b-904d-28679809fda2","IsCreationKey":true,"Key":74.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"position","builtinName":14,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":24.5,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":45.0,},},"Disabled":false,"id":"3cbf9111-db38-4399-b06a-fe533b22ab8c","IsCreationKey":true,"Key":74.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"rotation","builtinName":8,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":0.0,},},"Disabled":false,"id":"12228101-0308-4e4b-843b-e45a36c8d173","IsCreationKey":false,"Key":74.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
        {"resourceType":"GMRealTrack","resourceVersion":"1.0","name":"scale","builtinName":15,"events":[],"inheritsTrackColour":true,"interpolation":1,"isCreationTrack":true,"keyframes":{"resourceType":"KeyframeStore<RealKeyframe>","resourceVersion":"1.0","Keyframes":[
              {"resourceType":"Keyframe<RealKeyframe>","resourceVersion":"1.0","Channels":{"0":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},"1":{"resourceType":"RealKeyframe","resourceVersion":"1.0","AnimCurveId":null,"EmbeddedAnimCurve":null,"RealValue":1.0,},},"Disabled":false,"id":"00d089a4-eac7-4b5b-9c1e-9d3ffaba86be","IsCreationKey":true,"Key":74.0,"Length":1.0,"Stretch":false,},
            ],},"modifiers":[],"trackColour":4294085960,"tracks":[],"traits":0,},
      ],"traits":0,},
  ],
  "visibleRange": {
    "x": 0.0,
    "y": 78.0,
  },
  "volume": 1.0,
  "xorigin": -200,
  "yorigin": -60,
}