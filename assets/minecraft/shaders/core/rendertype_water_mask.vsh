#version 150

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:distortion.glsl>

in vec3 Position;

void main() {
    vec3 pos = Position;
    pos = distort(pos);
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
}
