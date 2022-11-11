// Copyright 2022 ReWaffle LLC. All rights reserved.

#if !defined(KERNEL_SMALL) && !defined(KERNEL_MEDIUM) && \
    !defined(KERNEL_LARGE) && !defined(KERNEL_VERYLARGE)

static const int kSampleCount = 1;
static const float2 kDiskKernel[1] = { float2(0, 0) };

#endif

#if defined(KERNEL_SMALL)

// rings = 2
// points per ring = 5
static const int kSampleCount = 16;
static const float2 kDiskKernel[kSampleCount] = {
    float2(0,0),
    float2(0.54545456,0),
    float2(0.16855472,0.5187581),
    float2(-0.44128203,0.3206101),
    float2(-0.44128197,-0.3206102),
    float2(0.1685548,-0.5187581),
    float2(1,0),
    float2(0.809017,0.58778524),
    float2(0.30901697,0.95105654),
    float2(-0.30901703,0.9510565),
    float2(-0.80901706,0.5877852),
    float2(-1,0),
    float2(-0.80901694,-0.58778536),
    float2(-0.30901664,-0.9510566),
    float2(0.30901712,-0.9510565),
    float2(0.80901694,-0.5877853),
};

#endif

#if defined(KERNEL_MEDIUM)

// rings = 3
// points per ring = 7
static const int kSampleCount = 22;
static const float2 kDiskKernel[kSampleCount] = {
    float2(0,0),
    float2(0.53333336,0),
    float2(0.3325279,0.4169768),
    float2(-0.11867785,0.5199616),
    float2(-0.48051673,0.2314047),
    float2(-0.48051673,-0.23140468),
    float2(-0.11867763,-0.51996166),
    float2(0.33252785,-0.4169769),
    float2(1,0),
    float2(0.90096885,0.43388376),
    float2(0.6234898,0.7818315),
    float2(0.22252098,0.9749279),
    float2(-0.22252095,0.9749279),
    float2(-0.62349,0.7818314),
    float2(-0.90096885,0.43388382),
    float2(-1,0),
    float2(-0.90096885,-0.43388376),
    float2(-0.6234896,-0.7818316),
    float2(-0.22252055,-0.974928),
    float2(0.2225215,-0.9749278),
    float2(0.6234897,-0.7818316),
    float2(0.90096885,-0.43388376),
};

#endif

#if defined(KERNEL_LARGE)

// rings = 4
// points per ring = 7
static const int kSampleCount = 43;
static const float2 kDiskKernel[kSampleCount] = {
    float2(0,0),
    float2(0.36363637,0),
    float2(0.22672357,0.28430238),
    float2(-0.08091671,0.35451925),
    float2(-0.32762504,0.15777594),
    float2(-0.32762504,-0.15777591),
    float2(-0.08091656,-0.35451928),
    float2(0.22672352,-0.2843024),
    float2(0.6818182,0),
    float2(0.614297,0.29582983),
    float2(0.42510667,0.5330669),
    float2(0.15171885,0.6647236),
    float2(-0.15171883,0.6647236),
    float2(-0.4251068,0.53306687),
    float2(-0.614297,0.29582986),
    float2(-0.6818182,0),
    float2(-0.614297,-0.29582983),
    float2(-0.42510656,-0.53306705),
    float2(-0.15171856,-0.66472363),
    float2(0.1517192,-0.6647235),
    float2(0.4251066,-0.53306705),
    float2(0.614297,-0.29582983),
    float2(1,0),
    float2(0.9555728,0.2947552),
    float2(0.82623875,0.5633201),
    float2(0.6234898,0.7818315),
    float2(0.36534098,0.93087375),
    float2(0.07473,0.9972038),
    float2(-0.22252095,0.9749279),
    float2(-0.50000006,0.8660254),
    float2(-0.73305196,0.6801727),
    float2(-0.90096885,0.43388382),
    float2(-0.98883086,0.14904208),
    float2(-0.9888308,-0.14904249),
    float2(-0.90096885,-0.43388376),
    float2(-0.73305184,-0.6801728),
    float2(-0.4999999,-0.86602545),
    float2(-0.222521,-0.9749279),
    float2(0.07473029,-0.99720377),
    float2(0.36534148,-0.9308736),
    float2(0.6234897,-0.7818316),
    float2(0.8262388,-0.56332),
    float2(0.9555729,-0.29475483),
};

#endif

#if defined(KERNEL_VERYLARGE)

// rings = 5
// points per ring = 7
static const int kSampleCount = 71;
static const float2 kDiskKernel[kSampleCount] = {
    float2(0,0),
    float2(0.2758621,0),
    float2(0.1719972,0.21567768),
    float2(-0.061385095,0.26894566),
    float2(-0.24854316,0.1196921),
    float2(-0.24854316,-0.11969208),
    float2(-0.061384983,-0.2689457),
    float2(0.17199717,-0.21567771),
    float2(0.51724136,0),
    float2(0.46601835,0.22442262),
    float2(0.32249472,0.40439558),
    float2(0.11509705,0.50427306),
    float2(-0.11509704,0.50427306),
    float2(-0.3224948,0.40439552),
    float2(-0.46601835,0.22442265),
    float2(-0.51724136,0),
    float2(-0.46601835,-0.22442262),
    float2(-0.32249463,-0.40439564),
    float2(-0.11509683,-0.5042731),
    float2(0.11509732,-0.504273),
    float2(0.32249466,-0.40439564),
    float2(0.46601835,-0.22442262),
    float2(0.7586207,0),
    float2(0.7249173,0.22360738),
    float2(0.6268018,0.4273463),
    float2(0.47299224,0.59311354),
    float2(0.27715522,0.7061801),
    float2(0.056691725,0.75649947),
    float2(-0.168809,0.7396005),
    float2(-0.3793104,0.65698475),
    float2(-0.55610836,0.51599306),
    float2(-0.6834936,0.32915324),
    float2(-0.7501475,0.113066405),
    float2(-0.7501475,-0.11306671),
    float2(-0.6834936,-0.32915318),
    float2(-0.5561083,-0.5159932),
    float2(-0.37931028,-0.6569848),
    float2(-0.16880904,-0.7396005),
    float2(0.056691945,-0.7564994),
    float2(0.2771556,-0.7061799),
    float2(0.47299215,-0.59311366),
    float2(0.62680185,-0.4273462),
    float2(0.72491735,-0.22360711),
    float2(1,0),
    float2(0.9749279,0.22252093),
    float2(0.90096885,0.43388376),
    float2(0.7818315,0.6234898),
    float2(0.6234898,0.7818315),
    float2(0.43388364,0.9009689),
    float2(0.22252098,0.9749279),
    float2(0,1),
    float2(-0.22252095,0.9749279),
    float2(-0.43388385,0.90096885),
    float2(-0.62349,0.7818314),
    float2(-0.7818317,0.62348956),
    float2(-0.90096885,0.43388382),
    float2(-0.9749279,0.22252093),
    float2(-1,0),
    float2(-0.9749279,-0.22252087),
    float2(-0.90096885,-0.43388376),
    float2(-0.7818314,-0.6234899),
    float2(-0.6234896,-0.7818316),
    float2(-0.43388346,-0.900969),
    float2(-0.22252055,-0.974928),
    float2(0,-1),
    float2(0.2225215,-0.9749278),
    float2(0.4338835,-0.90096897),
    float2(0.6234897,-0.7818316),
    float2(0.78183144,-0.62348986),
    float2(0.90096885,-0.43388376),
    float2(0.9749279,-0.22252086),
};

#endif
