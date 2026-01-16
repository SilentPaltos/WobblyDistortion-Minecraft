#version 330

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:distortion.glsl>

in vec3 Position;

void main() {
    vec3 pos = distort(Position);
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
}
