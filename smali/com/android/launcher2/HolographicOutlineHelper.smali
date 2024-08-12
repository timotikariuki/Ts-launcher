.class public Lcom/android/launcher2/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

.field public static final MAX_OUTER_BLUR_RADIUS:I

.field private static final MEDIUM:I = 0x1

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final THICK:I

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 47
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    .line 49
    .local v0, "scale":F
    mul-float v1, v0, v4

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    .line 50
    mul-float v1, v0, v2

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 52
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 53
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 54
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 55
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v4

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    return-void
.end method

.method public static highlightAlphaInterpolator(F)F
    .locals 5
    .param p0, "r"    # F

    .prologue
    .line 76
    const v0, 0x3f19999a    # 0.6f

    .line 77
    .local v0, "maxAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static viewAlphaInterpolator(F)F
    .locals 5
    .param p0, "r"    # F

    .prologue
    const v2, 0x3f733333    # 0.95f

    .line 84
    const v0, 0x3f733333    # 0.95f

    .line 85
    .local v0, "pivot":F
    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    .line 86
    div-float v1, p0, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 88
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "thickness"    # I

    .prologue
    .line 98
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    .line 100
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V
    .locals 21
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z
    .param p6, "thickness"    # I

    .prologue
    .line 106
    if-eqz p5, :cond_0

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 109
    .local v3, "srcBuffer":[I
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 108
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 110
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    array-length v2, v3

    if-lt v14, v2, :cond_1

    .line 117
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p1

    .line 116
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 119
    .end local v3    # "srcBuffer":[I
    .end local v14    # "i":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 123
    .local v13, "glowShape":Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_0

    .line 134
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid blur thickness"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    .end local v13    # "glowShape":Landroid/graphics/Bitmap;
    .restart local v3    # "srcBuffer":[I
    .restart local v14    # "i":I
    :cond_1
    aget v2, v3, v14

    ushr-int/lit8 v10, v2, 0x18

    .line 112
    .local v10, "alpha":I
    const/16 v2, 0xbc

    if-ge v10, v2, :cond_2

    .line 113
    const/4 v2, 0x0

    aput v2, v3, v14

    .line 110
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 125
    .end local v3    # "srcBuffer":[I
    .end local v10    # "alpha":I
    .end local v14    # "i":I
    .restart local v13    # "glowShape":Landroid/graphics/Bitmap;
    :pswitch_0
    sget-object v16, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 136
    .local v16, "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 137
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 138
    .local v17, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 139
    .local v20, "thickOuterBlur":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 145
    :goto_2
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 146
    .local v12, "brightOutlineOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 149
    .local v11, "brightOutline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    const/high16 v2, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 152
    packed-switch p6, :pswitch_data_1

    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Invalid blur thickness"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v11    # "brightOutline":Landroid/graphics/Bitmap;
    .end local v12    # "brightOutlineOffset":[I
    .end local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v17    # "outerBlurOffset":[I
    .end local v20    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :pswitch_1
    sget-object v16, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 129
    .restart local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_1

    .line 131
    .end local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_2
    sget-object v16, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 132
    .restart local v16    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_1

    .line 142
    .restart local v17    # "outerBlurOffset":[I
    .restart local v20    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    .line 154
    .restart local v11    # "brightOutline":Landroid/graphics/Bitmap;
    .restart local v12    # "brightOutlineOffset":[I
    :pswitch_3
    sget-object v15, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 165
    .local v15, "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 166
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 167
    .local v19, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 170
    .local v18, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    const/4 v2, 0x0

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 172
    const/4 v4, 0x1

    aget v4, v19, v4

    neg-int v4, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 171
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v7, v2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 174
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    .line 173
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v7, v2

    const/4 v2, 0x1

    aget v2, v19, v2

    neg-int v2, v2

    int-to-float v8, v2

    .line 176
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    .line 175
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    const/4 v2, 0x0

    aget v2, v19, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    int-to-float v4, v4

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 182
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    const/4 v2, 0x0

    aget v2, v17, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v17, v4

    int-to-float v4, v4

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 184
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    const/4 v2, 0x0

    aget v2, v12, v2

    int-to-float v2, v2

    const/4 v4, 0x1

    aget v4, v12, v4

    int-to-float v4, v4

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 189
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    return-void

    .line 157
    .end local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v18    # "thickInnerBlur":Landroid/graphics/Bitmap;
    .end local v19    # "thickInnerBlurOffset":[I
    :pswitch_4
    sget-object v15, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 158
    .restart local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_3

    .line 160
    .end local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_5
    sget-object v15, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 161
    .restart local v15    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_3

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 152
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 202
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 203
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 218
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 219
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "clipAlpha"    # Z

    .prologue
    .line 212
    .line 213
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 212
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    .line 214
    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 207
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 208
    return-void
.end method
