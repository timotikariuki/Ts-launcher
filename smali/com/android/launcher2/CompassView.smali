.class public Lcom/android/launcher2/CompassView;
.super Landroid/widget/RelativeLayout;
.source "CompassView.java"


# instance fields
.field private language:Ljava/lang/String;

.field private mAboveDial:Landroid/widget/ImageView;

.field private mAboveDrawable:Landroid/graphics/drawable/Drawable;

.field private mBelowDial:Landroid/widget/ImageView;

.field private mBelowDrawable:Landroid/graphics/drawable/Drawable;

.field private mDial:Landroid/widget/ImageView;

.field private mDialDrawable_en:Landroid/graphics/drawable/Drawable;

.field private mDialDrawable_zh:Landroid/graphics/drawable/Drawable;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v2, Lcom/android/launcher2/CompassView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/CompassView$1;-><init>(Lcom/android/launcher2/CompassView;)V

    iput-object v2, p0, Lcom/android/launcher2/CompassView;->receiver:Landroid/content/BroadcastReceiver;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 35
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v2, Lcom/android/launcher/R$styleable;->CompassView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_zh:Landroid/graphics/drawable/Drawable;

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_en:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p0}, Lcom/android/launcher2/CompassView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_zh:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_en:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 40
    sget v2, Lcom/android/launcher/R$drawable;->main_compass_dial:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_en:Landroid/graphics/drawable/Drawable;

    .line 44
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CompassView;->mAboveDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CompassView;->mBelowDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/CompassView;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/launcher2/CompassView;->updateLocal()V

    return-void
.end method

.method private rotateAnimation(F)V
    .locals 7
    .param p1, "degree"    # F

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 134
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRotation()F

    move-result v1

    .line 119
    .local v1, "rotate":F
    sub-float v2, p1, v1

    .line 120
    .local v2, "tmp":F
    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 121
    add-float/2addr v1, v4

    .line 122
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 130
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    const-string v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput p1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 131
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 124
    .end local v0    # "objectAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    const/high16 v3, -0x3ccc0000    # -180.0f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 126
    sub-float/2addr v1, v4

    .line 127
    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1
.end method

.method private updateLocal()V
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/CompassView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 57
    .local v1, "local":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_zh:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_zh:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/CompassView;->mDialDrawable_en:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/CompassView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/CompassView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 69
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mBelowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/CompassView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/CompassView;->mBelowDial:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mBelowDial:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mBelowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mBelowDial:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CompassView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/CompassView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    .line 82
    invoke-direct {p0}, Lcom/android/launcher2/CompassView;->updateLocal()V

    .line 83
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mDial:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CompassView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mAboveDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/CompassView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/CompassView;->mAboveDial:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mAboveDial:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/CompassView;->mAboveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v1, p0, Lcom/android/launcher2/CompassView;->mAboveDial:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CompassView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/launcher2/CompassView;->rotateAnimation(F)V

    .line 52
    return-void
.end method
