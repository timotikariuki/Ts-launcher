.class public Lcom/android/launcher2/PageViewAnimation;
.super Ljava/lang/Object;
.source "PageViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageViewAnimation$ZInterpolator;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final PAGEVIEW_ANIMATION_BLOCKS:I = 0x7

.field public static final PAGEVIEW_ANIMATION_LAYERED:I = 0x2

.field public static final PAGEVIEW_ANIMATION_NORMAL:I = 0x0

.field public static final PAGEVIEW_ANIMATION_PAGETURN:I = 0x4

.field public static final PAGEVIEW_ANIMATION_ROTATE:I = 0x3

.field public static final PAGEVIEW_ANIMATION_ROTATEBYCENTERPOINT:I = 0x6

.field public static final PAGEVIEW_ANIMATION_ROTATEBYLEFTTOPPOINT:I = 0x5

.field public static final PAGEVIEW_ANIMATION_TURNTABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PageViewAnimation"

.field private static TRANSITION_MAX_ROTATION:F

.field private static TRANSITION_PIVOT:F

.field private static TRANSITION_SCALE_FACTOR:F

.field private static mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static mInstance:Lcom/android/launcher2/PageViewAnimation;

.field private static mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private static mZInterpolator:Lcom/android/launcher2/PageViewAnimation$ZInterpolator;


# instance fields
.field private mAlpha:F

.field private mAnimaType:I

.field private mPivotX:F

.field private mPivotY:F

.field private mRotation:F

.field private mRotationY:F

.field private mScale:F

.field private mTranslationX:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher2/PageViewAnimation;->mZInterpolator:Lcom/android/launcher2/PageViewAnimation$ZInterpolator;

    .line 22
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 23
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher2/PageViewAnimation;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 26
    const v0, 0x45cb2000    # 6500.0f

    sput v0, Lcom/android/launcher2/PageViewAnimation;->CAMERA_DISTANCE:F

    .line 27
    const v0, 0x3f3d70a4    # 0.74f

    sput v0, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_SCALE_FACTOR:F

    .line 28
    const v0, 0x3f266666    # 0.65f

    sput v0, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_PIVOT:F

    .line 29
    const/high16 v0, 0x41c00000    # 24.0f

    sput v0, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 32
    iput v1, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    .line 33
    iput v1, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 34
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 35
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 36
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 37
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAnimaType:I

    .line 8
    return-void
.end method

.method public static getInstance()Lcom/android/launcher2/PageViewAnimation;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mInstance:Lcom/android/launcher2/PageViewAnimation;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/android/launcher2/PageViewAnimation;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mInstance:Lcom/android/launcher2/PageViewAnimation;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/launcher2/PageViewAnimation;

    invoke-direct {v0}, Lcom/android/launcher2/PageViewAnimation;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageViewAnimation;->mInstance:Lcom/android/launcher2/PageViewAnimation;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mInstance:Lcom/android/launcher2/PageViewAnimation;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetAttr(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 396
    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    .line 397
    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 398
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 399
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 402
    return-void
.end method

.method private setViewAttr(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 367
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 368
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 369
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 371
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 372
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 373
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 374
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 375
    return-void
.end method

.method private showOrHideView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 385
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getPageViewAnime()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAnimaType:I

    return v0
.end method

.method public overScrollAnimation(FIIFLandroid/view/View;)V
    .locals 10
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 415
    sget v4, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_PIVOT:F

    .line 416
    .local v4, "xPivot":F
    cmpg-float v6, p1, v7

    if-gez v6, :cond_1

    move v0, v1

    .line 417
    .local v0, "isOverscrollingFirstPage":Z
    :goto_0
    cmpl-float v6, p1, v7

    if-lez v6, :cond_2

    .line 419
    .local v1, "isOverscrollingLastPage":Z
    :goto_1
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 420
    .local v3, "pageWidth":I
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 422
    .local v2, "pageHeight":I
    sget v5, Lcom/android/launcher2/PageViewAnimation;->CAMERA_DISTANCE:F

    mul-float/2addr v5, p4

    invoke-virtual {p5, v5}, Landroid/view/View;->setCameraDistance(F)V

    .line 424
    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    .line 425
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iput v5, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 426
    int-to-float v5, v2

    div-float/2addr v5, v9

    iput v5, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 427
    iput v7, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 428
    sget v5, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_MAX_ROTATION:F

    neg-float v5, v5

    mul-float/2addr v5, p1

    iput v5, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 429
    iput v8, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    .line 430
    iput v8, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 431
    iput v7, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 441
    :cond_0
    :goto_2
    return-void

    .end local v0    # "isOverscrollingFirstPage":Z
    .end local v1    # "isOverscrollingLastPage":Z
    .end local v2    # "pageHeight":I
    .end local v3    # "pageWidth":I
    :cond_1
    move v0, v5

    .line 416
    goto :goto_0

    .restart local v0    # "isOverscrollingFirstPage":Z
    :cond_2
    move v1, v5

    .line 417
    goto :goto_1

    .line 432
    .restart local v1    # "isOverscrollingLastPage":Z
    .restart local v2    # "pageHeight":I
    .restart local v3    # "pageWidth":I
    :cond_3
    add-int/lit8 v5, p3, -0x1

    if-ne p2, v5, :cond_0

    if-eqz v1, :cond_0

    .line 433
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iput v5, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 434
    int-to-float v5, v2

    div-float/2addr v5, v9

    iput v5, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 435
    iput v7, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 436
    sget v5, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_MAX_ROTATION:F

    neg-float v5, v5

    mul-float/2addr v5, p1

    iput v5, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 437
    iput v8, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    .line 438
    iput v8, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 439
    iput v7, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    goto :goto_2
.end method

.method public pageViewAnime(FIIFLandroid/view/View;)V
    .locals 7
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAnimaType:I

    .line 65
    iget v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAnimaType:I

    packed-switch v2, :pswitch_data_0

    .line 146
    :goto_0
    if-lez p3, :cond_0

    .line 147
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 151
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 153
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 154
    return-void

    .line 67
    :pswitch_0
    sget v2, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_MAX_ROTATION:F

    neg-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 68
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 69
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 77
    .local v1, "minScrollProgress":F
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 78
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mZInterpolator:Lcom/android/launcher2/PageViewAnimation$ZInterpolator;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 80
    .local v0, "interpolatedProgress":F
    sub-float v2, v5, v0

    sget v3, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    .line 82
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    .line 83
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto :goto_0

    .line 85
    :cond_1
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v3, v5, p1

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto :goto_0

    .line 91
    .end local v0    # "interpolatedProgress":F
    .end local v1    # "minScrollProgress":F
    :pswitch_2
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 92
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 94
    mul-float v2, v3, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 96
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 98
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto/16 :goto_0

    .line 101
    :pswitch_3
    iput v4, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 102
    iput v4, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 104
    mul-float v2, v3, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 106
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 108
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto/16 :goto_0

    .line 111
    :pswitch_4
    iput v4, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 112
    iput v4, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 114
    mul-float v2, v3, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 116
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 118
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto/16 :goto_0

    .line 121
    :pswitch_5
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 122
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 124
    mul-float v2, v3, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 126
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 128
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto/16 :goto_0

    .line 132
    :pswitch_6
    cmpg-float v2, p1, v4

    if-gez v2, :cond_2

    .line 133
    iput v4, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 138
    :goto_1
    mul-float v2, v3, p1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    goto/16 :goto_0

    .line 135
    :cond_2
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBlocksAnim(FIIFLandroid/view/View;)V
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 345
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 346
    iput v1, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 351
    :goto_0
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 353
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 355
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 357
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 358
    return-void

    .line 348
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    goto :goto_0
.end method

.method public setLayeredAnim(FIIFLandroid/view/View;)V
    .locals 6
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 184
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 186
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 190
    .local v1, "minScrollProgress":F
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 191
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mZInterpolator:Lcom/android/launcher2/PageViewAnimation$ZInterpolator;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageViewAnimation$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 193
    .local v0, "interpolatedProgress":F
    sub-float v2, v4, v0

    sget v3, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mScale:F

    .line 195
    cmpg-float v2, p1, v5

    if-gez v2, :cond_0

    .line 196
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v4, v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 201
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 203
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 205
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 206
    return-void

    .line 198
    :cond_0
    sget-object v2, Lcom/android/launcher2/PageViewAnimation;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v3, v4, p1

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    goto :goto_0
.end method

.method public setNormalAnim(FIIFLandroid/view/View;)V
    .locals 0
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    .line 217
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 219
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 221
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 223
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method public setPageTurnAnim(FIIFLandroid/view/View;)V
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 264
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 265
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 267
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 269
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 271
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 273
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 275
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 277
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method public setPageViewAnime(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/launcher2/PageViewAnimation;->mAnimaType:I

    .line 55
    return-void
.end method

.method public setRotateAnim(FIIFLandroid/view/View;)V
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    .line 235
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 237
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 238
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 240
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotationY:F

    .line 242
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 244
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 246
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 248
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 250
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method public setRotateByCenterPointAnim(FIIFLandroid/view/View;)V
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 316
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 318
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 319
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 321
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 323
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 325
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 327
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 329
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 331
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 332
    return-void
.end method

.method public setRotateByLeftTopPointAnim(FIIFLandroid/view/View;)V
    .locals 3
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 291
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 292
    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 294
    const/high16 v0, -0x3d4c0000    # -90.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 296
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mTranslationX:F

    .line 298
    sget-object v0, Lcom/android/launcher2/PageViewAnimation;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mAlpha:F

    .line 300
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 302
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 304
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public setTurntableAnim(FIIFLandroid/view/View;)V
    .locals 2
    .param p1, "scrollProgress"    # F
    .param p2, "i"    # I
    .param p3, "count"    # I
    .param p4, "density"    # F
    .param p5, "v"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->resetAttr(Landroid/view/View;)V

    .line 165
    sget v0, Lcom/android/launcher2/PageViewAnimation;->TRANSITION_MAX_ROTATION:F

    neg-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mRotation:F

    .line 166
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotX:F

    .line 167
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/PageViewAnimation;->mPivotY:F

    .line 169
    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher2/PageViewAnimation;->overScrollAnimation(FIIFLandroid/view/View;)V

    .line 171
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->setViewAttr(Landroid/view/View;)V

    .line 173
    invoke-direct {p0, p5}, Lcom/android/launcher2/PageViewAnimation;->showOrHideView(Landroid/view/View;)V

    .line 174
    return-void
.end method
