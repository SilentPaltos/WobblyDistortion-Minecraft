#version 330

#moj_import <minecraft:globals.glsl>
#moj_import <minecraft:distortion_config.glsl>

// DO NOT TOUCH
#define pos_corrector vec3(-1, -1, -1);

vec3 distorter(vec3 v) {
    float time = GameTime * GAME_TIME_SCALE;

    float falloff = smoothstep(
        DISTORTION_START_DISTANCE,
        DISTORTION_START_DISTANCE + DISTORTION_SMOOTHING_DISTANCE,
        length(v)
    );

    vec3 wave =
        cos((v - time * sign(v)) * COS_FREQ) 
        - sin((v - time * sign(v)) * SIN_FREQ);

    vec3 magnitude = v * DISTORTION_MULTIPLIER * falloff;

    magnitude = clamp(
        magnitude,
        vec3(-MAX_DISTORTION_MULTIPLIER),
        vec3( MAX_DISTORTION_MULTIPLIER)
    );

    return magnitude * wave;
}

vec3 distort(vec3 v) {
    return v + distorter(v);
}