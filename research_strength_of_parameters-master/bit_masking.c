float bit_masking(float x, int n) {
    int tmp = *reinterpret_cast<int*>(&x);
    int mask = (1 << n) - 1; // Create a mask with n bits set to 1
    tmp |= mask; // Set the last n bits of the float to 1
    return *reinterpret_cast<float*>(&tmp);
}