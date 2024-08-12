.class public Lcom/android/launcher2/VelociMeter;
.super Landroid/widget/RelativeLayout;
.source "VelociMeter.java"


# instance fields
.field private mDegree:F

.field private mDot:Landroid/graphics/drawable/Drawable;

.field private mPointer:Landroid/graphics/drawable/Drawable;

.field private mSpeed:F

.field private mTextId:I

.field private mVelociDot:Landroid/widget/ImageView;

.field private mVelociPointer:Landroid/widget/ImageView;

.field private mVelociText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/VelociMeter;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method private getViewParamsByAttrs(Landroid/content/res/TypedArray;II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "leftId"    # I
    .param p3, "topId"    # I

    .prologue
    const/4 v5, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 61
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 62
    .local v0, "marginLeft":I
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 63
    .local v1, "marginTop":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    .line 65
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    :goto_0
    return-object v2

    .line 67
    :cond_0
    if-ne v0, v3, :cond_1

    .line 68
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 71
    :cond_1
    if-ne v1, v3, :cond_2

    .line 72
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 83
    sget-object v2, Lcom/android/launcher/R$styleable;->VelociMeter:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/VelociMeter;->mPointer:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mPointer:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 86
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/VelociMeter;->mPointer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/VelociMeter;->getViewParamsByAttrs(Landroid/content/res/TypedArray;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 89
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/VelociMeter;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/VelociMeter;->mDot:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mDot:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociDot:Landroid/widget/ImageView;

    .line 98
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociDot:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/VelociMeter;->mDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/VelociMeter;->getViewParamsByAttrs(Landroid/content/res/TypedArray;II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociDot:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/VelociMeter;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    :cond_0
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/VelociMeter;->mTextId:I

    .line 104
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/VelociMeter;->mDegree:F

    .line 105
    iget v2, p0, Lcom/android/launcher2/VelociMeter;->mDegree:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The degree attribute is required."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The pointer attribute is required."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/VelociMeter;->mSpeed:F

    .line 109
    iget v2, p0, Lcom/android/launcher2/VelociMeter;->mSpeed:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_3

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The speed attribute is required."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/launcher2/VelociMeter;->mDegree:F

    neg-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/android/launcher2/VelociMeter;->mTextId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    iget v0, p0, Lcom/android/launcher2/VelociMeter;->mTextId:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/VelociMeter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/VelociMeter;->mVelociText:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/VelociMeter;->mVelociText:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 123
    return-void
.end method

.method public updateSpeed(F)V
    .locals 9
    .param p1, "speed"    # F

    .prologue
    const/high16 v6, 0x43b40000    # 360.0f

    .line 32
    iget v4, p0, Lcom/android/launcher2/VelociMeter;->mDegree:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/android/launcher2/VelociMeter;->mSpeed:F

    div-float v0, v4, v5

    .line 33
    .local v0, "degree":F
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 37
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getRotation()F

    move-result v2

    .line 38
    .local v2, "rotate":F
    sub-float v4, v0, v2

    iget v5, p0, Lcom/android/launcher2/VelociMeter;->mDegree:F

    sub-float v3, v4, v5

    .line 39
    .local v3, "tmp":F
    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 40
    add-float/2addr v2, v6

    .line 41
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 49
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    const-string v5, "rotation"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/launcher2/VelociMeter;->mDegree:F

    sub-float v8, v0, v8

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 50
    .local v1, "objectAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 54
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 55
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_2
    return-void

    .line 43
    .end local v1    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    const/high16 v4, -0x3ccc0000    # -180.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    .line 45
    sub-float/2addr v2, v6

    .line 46
    iget-object v4, p0, Lcom/android/launcher2/VelociMeter;->mVelociPointer:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0
.end method
