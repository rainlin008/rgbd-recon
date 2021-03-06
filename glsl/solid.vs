#version 130

// input
in vec3 in_Position; 

uniform mat4 gl_ModelViewMatrix;
uniform mat4 gl_ProjectionMatrix;
uniform mat4 transform;

void main() {
  gl_Position = gl_ProjectionMatrix * gl_ModelViewMatrix * transform * vec4(in_Position, 1.0);
}