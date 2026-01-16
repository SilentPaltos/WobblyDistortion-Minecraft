#version 330

#moj_import <minecraft:globals.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:distortion.glsl>

in vec3 Position;
in vec4 Color;
in float LineWidth;

out vec4 vertexColor;

void main() {
    vec3 pos = distort(Position);
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    vertexColor = Color;
    gl_PointSize = LineWidth;
}
