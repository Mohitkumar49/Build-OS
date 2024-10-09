
void main() {
    char *video_memory = (char*) 0xb8000;  // Video memory starts at this address
    const char *message = "Welcome to My Simple OS!";
    
    // Loop through the message and display it
    for (int i = 0; message[i] != '\0'; i++) {
        video_memory[i * 2] = message[i];    // ASCII character
        video_memory[i * 2 + 1] = 0x07;      // Attribute byte (color)
    }

    while(1);  // Infinite loop to keep the OS running
}
