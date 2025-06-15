## WobblyDistortion
Uses ```sin```, ```cos``` and other functions to change vertecies positions to make it look wobbly and distorted when you move.\
May look like a messy AI-generated video in some cases.

## Technicl information
### Requirments
- Minecraft version: 1.21.6
- Graphics: Any(even Fast)
- I don't know how it affects optimization so I can't give you any recommenadtions about hardware

### Issues
Shader isn't perfect and has some issues with non-full blocks. But I made it for fun. Just started learning shaders and wanted to do something interesting. May be I'll fix issues later.

### Config
You can configure shader in the ```assets/minecraft/include/distortion.glsl``` file\
Config lines:
```
// Config
vec2 SMOOTH_RANGE = vec2(2.0, 10.0);
float MINIMAL_DISTORTION_MULT = 0.25;
float SMOOTH_DISTORTION_MULT = 0.5;
```
