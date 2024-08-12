.class public Lcom/android/customview/ParamsCreator;
.super Ljava/lang/Object;
.source "ParamsCreator.java"


# instance fields
.field private context:Landroid/content/Context;

.field private densityDpi:I

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/customview/ParamsCreator;->context:Landroid/content/Context;

    .line 14
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 15
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    .line 16
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/customview/ParamsCreator;->screenHeight:I

    .line 17
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    .line 20
    return-void
.end method


# virtual methods
.method public getDefaultCircleRadius()I
    .locals 7

    .prologue
    const/16 v6, 0xa0

    const/16 v5, 0x140

    const/16 v0, 0x30

    const/16 v1, 0x22

    const/16 v2, 0x1e

    .line 26
    iget v3, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v4, 0x578

    if-lt v3, v4, :cond_1

    .line 27
    const/16 v0, 0x32

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    iget v3, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_2

    .line 30
    iget v1, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    const/16 v2, 0x1e0

    if-ge v1, v2, :cond_0

    .line 32
    iget v1, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v1, v5, :cond_0

    goto :goto_0

    .line 36
    :cond_2
    iget v0, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v3, 0x2bc

    if-lt v0, v3, :cond_6

    .line 37
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v5, :cond_3

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_4

    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v6, :cond_5

    move v0, v1

    .line 42
    goto :goto_0

    :cond_5
    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_6
    iget v0, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_a

    .line 46
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v5, :cond_7

    move v0, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_7
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_8

    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_8
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v6, :cond_9

    move v0, v2

    .line 51
    goto :goto_0

    :cond_9
    move v0, v2

    .line 52
    goto :goto_0

    :cond_a
    move v0, v2

    .line 54
    goto :goto_0
.end method

.method public getDefaultCircleSpacing()I
    .locals 7

    .prologue
    const/16 v6, 0xa0

    const/16 v5, 0x140

    const/16 v0, 0xc

    const/16 v1, 0x8

    const/4 v2, 0x5

    .line 60
    iget v3, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v4, 0x578

    if-lt v3, v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget v3, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_2

    .line 64
    iget v1, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    const/16 v2, 0x1e0

    if-ge v1, v2, :cond_0

    .line 66
    iget v1, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v1, v5, :cond_0

    goto :goto_0

    .line 70
    :cond_2
    iget v0, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v3, 0x2bc

    if-lt v0, v3, :cond_6

    .line 71
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v5, :cond_3

    move v0, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_4

    move v0, v1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v6, :cond_5

    move v0, v1

    .line 76
    goto :goto_0

    :cond_5
    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_6
    iget v0, p0, Lcom/android/customview/ParamsCreator;->screenWidth:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_a

    .line 80
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v5, :cond_7

    move v0, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_7
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_8

    move v0, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_8
    iget v0, p0, Lcom/android/customview/ParamsCreator;->densityDpi:I

    if-lt v0, v6, :cond_9

    move v0, v2

    .line 85
    goto :goto_0

    :cond_9
    move v0, v2

    .line 86
    goto :goto_0

    :cond_a
    move v0, v2

    .line 88
    goto :goto_0
.end method
