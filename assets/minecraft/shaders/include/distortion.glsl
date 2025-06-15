#version 150

// Config
vec2 SMOOTH_RANGE = vec2(2.0, 10.0);
float MINIMAL_DISTORTION_MULT = 0.25;
float SMOOTH_DISTORTION_MULT = 0.5;
// DO NOT TOUCH
vec3 pos_corrector = vec3(-1,-1,-1);

vec3 distorter(vec3 vector) {
    vec3 sin_wave = sin(vector);
    vec3 cos_wave = cos(vector);
    return max(sin_wave, cos_wave) - min(sin_wave, cos_wave) + pos_corrector;
}

vec3 distort(vec3 vector) {
    // Distorter
    vec3 vector_distorter = distorter(vector);
    float difference = distance(vector, vector_distorter);
    // Distorter "smoothed"
    if ( difference < SMOOTH_RANGE[0] ) {
        vector_distorter *= MINIMAL_DISTORTION_MULT;
    }
    if ( (difference >= SMOOTH_RANGE[0]) && (difference <= SMOOTH_RANGE[1]) ) {
        if ( SMOOTH_DISTORTION_MULT <= 1 ) {
            vector_distorter *= ( SMOOTH_DISTORTION_MULT );
        } else { 
            vector_distorter /= ( SMOOTH_DISTORTION_MULT );
            }
    }
    // Distrotion Result
    return vector + vector_distorter;
}