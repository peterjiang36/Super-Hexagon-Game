shader_type canvas_item;

void fragment() {
    // Use the built-in TIME variable to animate the color
    // Adjust the oscillation to avoid white (max RGB)
    float red = abs(sin(TIME * 0.5));       // Red component oscillates with time
    float green = abs(sin(TIME * 0.7 + 1.0)) * 0.8; // Green component, with a lower maximum value
    float blue = abs(sin(TIME * 0.9 + 2.0)) * 0.6;  // Blue component, with an even lower maximum

    // Set the alpha to 1 (fully opaque)
    vec4 color = vec4(red, green, blue, 1.0);

    // Output the color to the fragment
    COLOR = color;
}
