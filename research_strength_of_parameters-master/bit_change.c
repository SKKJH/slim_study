float bit_change(float x, int n) {
    int tmp = *reinterpret_cast<int*>(&x);
    int k = 32 - n;
    tmp >>= k;
    tmp <<= k;
    return *reinterpret_cast<float*>(&tmp);
}
