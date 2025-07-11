#version 150

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:distortion.glsl>

in vec3 Position;

out vec4 texProj0;
out float sphericalVertexDistance;
out float cylindricalVertexDistance;

void main() {
    vec3 pos = Position;
    pos = distort(pos);
    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    texProj0 = projection_from_position(gl_Position);
    sphericalVertexDistance = fog_spherical_distance(pos);
    cylindricalVertexDistance = fog_cylindrical_distance(pos);
}
