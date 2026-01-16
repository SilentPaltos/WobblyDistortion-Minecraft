#version 330

// config
#define               GAME_TIME_SCALE 5000.0 // How fast distortion of the world goes on its own
#define         DISTORTION_MULTIPLIER 0.05 // Just basic multiplier for sin() and cos()
#define     MAX_DISTORTION_MULTIPLIER 4.0 // How far can be offset vertex from original point (per axis)
#define                      COS_FREQ 1.0 // cos() frequency
#define                      SIN_FREQ 1.0 // sin() frequency
#define     DISTORTION_START_DISTANCE 0.0 // how far from camera distortion starts
#define DISTORTION_SMOOTHING_DISTANCE 5.0 // how far from camera distortion can reach its max value

// I couldn't make compatability with respackopts, so... Here is some presets you might wanna try

/*
// default config
#define               GAME_TIME_SCALE 5000.0 // How fast distortion of the world goes on its own
#define         DISTORTION_MULTIPLIER 0.05 // Just basic multiplier for sin() and cos()
#define     MAX_DISTORTION_MULTIPLIER 4.0 // How far can be offset vertex from original point (per axis)
#define                      COS_FREQ 1.0 // cos() frequency
#define                      SIN_FREQ 1.0 // sin() frequency
#define     DISTORTION_START_DISTANCE 0.0 // how far from camera distortion starts
#define DISTORTION_SMOOTHING_DISTANCE 5.0 // how far from camera distortion can reach its max value
*/

/*
// insane mode
#define               GAME_TIME_SCALE 5000.0 // How fast distortion of the world goes on its own
#define         DISTORTION_MULTIPLIER 0.1 // Just basic multiplier for sin() and cos()
#define     MAX_DISTORTION_MULTIPLIER 8.0 // How far can be offset vertex from original point (per axis)
#define                      COS_FREQ 1.0 // cos() frequency
#define                      SIN_FREQ 1.0 // sin() frequency
#define     DISTORTION_START_DISTANCE 0.0 // how far from camera distortion starts
#define DISTORTION_SMOOTHING_DISTANCE 0.0 // how far from camera distortion can reach its max value
*/

/*
// wavy world
#define               GAME_TIME_SCALE 5000.0 // How fast distortion of the world goes on its own
#define         DISTORTION_MULTIPLIER 0.05 // Just basic multiplier for sin() and cos()
#define     MAX_DISTORTION_MULTIPLIER 10.0 // How far can be offset vertex from original point (per axis)
#define                      COS_FREQ 0.1 // cos() frequency
#define                      SIN_FREQ 0.1 // sin() frequency
#define     DISTORTION_START_DISTANCE 0.0 // how far from camera distortion starts
#define DISTORTION_SMOOTHING_DISTANCE 0.0 // how far from camera distortion can reach its max value
*/