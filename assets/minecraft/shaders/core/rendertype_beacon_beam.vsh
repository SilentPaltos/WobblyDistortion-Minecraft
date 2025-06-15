#version 150

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:distortion.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;

out vec4 vertexColor;
out vec2 texCoord0;

void main() {
    vec3 pos = Position;
    pos = distort(pos);
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    vertexColor = Color;
    texCoord0 = UV0;
}
