## WobblyDistortion
Uses ```sin```, ```cos``` and other functions to change vertices positions to make it look wobbly and distorted when you move.\
May look like a fuzzy AI-generated video in some cases.

Minecraft version: 1.21.11+

### Config
You can configure shader in the ```assets/minecraft/shaders/include/distortion_config.glsl``` file\
Config lines:
```
// config
#define               GAME_TIME_SCALE 5000.0 // How fast distortion of the world goes on its own
#define         DISTORTION_MULTIPLIER 0.05 // Just basic multiplier for sin() and cos()
#define     MAX_DISTORTION_MULTIPLIER 4.0 // How far can be offset vertex from original point (per axis)
#define                      COS_FREQ 1.0 // cos() frequency
#define                      SIN_FREQ 1.0 // sin() frequency
#define     DISTORTION_START_DISTANCE 0.0 // how far from camera distortion starts
#define DISTORTION_SMOOTHING_DISTANCE 5.0 // how far from camera distortion can reach its max value
```

Below you'll see some presets, I wanted to add compatibility with respackopts... But couldn't handle it
