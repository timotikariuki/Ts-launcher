.class public Lcom/android/customview/MonIndicator;
.super Landroid/view/View;
.source "MonIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/customview/MonIndicator$CircleWrapper;
    }
.end annotation


# instance fields
.field private circleRadius:I

.field private circleSpacing:I

.field private colors:[I

.field private increment:I

.field private oval:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private paramsCreator:Lcom/android/customview/ParamsCreator;

.field private wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/customview/MonIndicator$CircleWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/android/customview/ParamsCreator;

    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/customview/ParamsCreator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/customview/MonIndicator;->paramsCreator:Lcom/android/customview/ParamsCreator;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/customview/MonIndicator;->colors:[I

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/customview/MonIndicator;->increment:I

    .line 33
    return-void

    .line 22
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v4, Lcom/android/customview/ParamsCreator;

    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/customview/ParamsCreator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/customview/MonIndicator;->paramsCreator:Lcom/android/customview/ParamsCreator;

    .line 22
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/customview/MonIndicator;->colors:[I

    .line 23
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    .line 24
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    .line 28
    iput v6, p0, Lcom/android/customview/MonIndicator;->increment:I

    .line 37
    sget-object v4, Lcom/android/launcher/R$styleable;->monindicator:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/customview/MonIndicator;->paramsCreator:Lcom/android/customview/ParamsCreator;

    invoke-virtual {v5}, Lcom/android/customview/ParamsCreator;->getDefaultCircleRadius()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    .line 39
    iget-object v4, p0, Lcom/android/customview/MonIndicator;->paramsCreator:Lcom/android/customview/ParamsCreator;

    invoke-virtual {v4}, Lcom/android/customview/ParamsCreator;->getDefaultCircleSpacing()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    .line 40
    const/16 v4, 0x7d0

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 41
    .local v1, "cycle":I
    div-int/lit8 v1, v1, 0x2

    .line 42
    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide v6, 0x4054c00000000000L    # 83.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 43
    .local v2, "number":I
    iget v4, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/customview/MonIndicator;->increment:I

    .line 44
    iget v4, p0, Lcom/android/customview/MonIndicator;->increment:I

    if-gtz v4, :cond_0

    :goto_0
    iput v3, p0, Lcom/android/customview/MonIndicator;->increment:I

    .line 45
    invoke-direct {p0}, Lcom/android/customview/MonIndicator;->createWrappers()V

    .line 46
    return-void

    .line 44
    :cond_0
    iget v3, p0, Lcom/android/customview/MonIndicator;->increment:I

    goto :goto_0

    .line 22
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private createWrappers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    .line 52
    iget v2, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v2, 0x2

    .line 54
    .local v0, "diameter":I
    new-instance v1, Lcom/android/customview/MonIndicator$CircleWrapper;

    invoke-direct {v1, p0, v6}, Lcom/android/customview/MonIndicator$CircleWrapper;-><init>(Lcom/android/customview/MonIndicator;Lcom/android/customview/MonIndicator$CircleWrapper;)V

    .line 55
    .local v1, "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v1, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$1(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 56
    invoke-static {v1, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$2(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 57
    invoke-static {v1}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 58
    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 59
    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/android/customview/MonIndicator$CircleWrapper;

    .end local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-direct {v1, p0, v6}, Lcom/android/customview/MonIndicator$CircleWrapper;-><init>(Lcom/android/customview/MonIndicator;Lcom/android/customview/MonIndicator$CircleWrapper;)V

    .line 62
    .restart local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v1, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$1(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 63
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$2(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 64
    invoke-static {v1}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 65
    invoke-static {v1, v7}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 66
    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/android/customview/MonIndicator$CircleWrapper;

    .end local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-direct {v1, p0, v6}, Lcom/android/customview/MonIndicator$CircleWrapper;-><init>(Lcom/android/customview/MonIndicator;Lcom/android/customview/MonIndicator$CircleWrapper;)V

    .line 69
    .restart local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v1, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$1(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 70
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$2(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 71
    invoke-static {v1}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 72
    invoke-static {v1, v7}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 73
    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/android/customview/MonIndicator$CircleWrapper;

    .end local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-direct {v1, p0, v6}, Lcom/android/customview/MonIndicator$CircleWrapper;-><init>(Lcom/android/customview/MonIndicator;Lcom/android/customview/MonIndicator$CircleWrapper;)V

    .line 76
    .restart local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v1, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$1(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 77
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$2(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 78
    invoke-static {v1}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 79
    invoke-static {v1, v7}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 80
    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/android/customview/MonIndicator$CircleWrapper;

    .end local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-direct {v1, p0, v6}, Lcom/android/customview/MonIndicator$CircleWrapper;-><init>(Lcom/android/customview/MonIndicator;Lcom/android/customview/MonIndicator$CircleWrapper;)V

    .line 83
    .restart local v1    # "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v1, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$1(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 84
    invoke-static {v1, v8}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$2(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 85
    invoke-static {v1, v8}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 86
    invoke-static {v1, v7}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 87
    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method private drawCircle01(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 164
    .local v9, "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$7(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->increment:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 165
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 166
    const/4 v0, -0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 167
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 169
    :cond_0
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 170
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 171
    invoke-static {v9, v4}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 173
    :cond_1
    iget v0, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    mul-int/2addr v1, v2

    add-int v8, v0, v1

    .line 174
    .local v8, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    add-int v6, v0, v1

    .line 175
    .local v6, "centerX":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 177
    .local v7, "centerY":I
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 178
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 179
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 180
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 181
    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 182
    return-void
.end method

.method private drawCircle02(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 189
    .local v9, "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 190
    .local v10, "wrapper01":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 191
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 204
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    mul-int/2addr v1, v2

    add-int v8, v0, v1

    .line 205
    .local v8, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    add-int v6, v0, v1

    .line 206
    .local v6, "centerX":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 208
    .local v7, "centerY":I
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 209
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 210
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 211
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 212
    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 213
    return-void

    .line 193
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v8    # "totalWidth":I
    :cond_1
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$7(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->increment:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 194
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 195
    const/4 v0, -0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 196
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 198
    :cond_2
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 199
    invoke-static {v9, v3}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 200
    invoke-static {v9, v4}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    goto/16 :goto_0
.end method

.method private drawCircle03(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 220
    .local v9, "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 221
    .local v10, "wrapper01":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 222
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 235
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    mul-int/2addr v1, v2

    add-int v8, v0, v1

    .line 236
    .local v8, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    add-int v6, v0, v1

    .line 237
    .local v6, "centerX":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 239
    .local v7, "centerY":I
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 240
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 241
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 242
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 243
    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    return-void

    .line 224
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v8    # "totalWidth":I
    :cond_1
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$7(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->increment:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 225
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 226
    const/4 v0, -0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 227
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 229
    :cond_2
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 230
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 231
    invoke-static {v9, v4}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    goto/16 :goto_0
.end method

.method private drawCircle04(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 251
    .local v9, "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 252
    .local v10, "wrapper01":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 253
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 266
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    mul-int/2addr v1, v2

    add-int v8, v0, v1

    .line 267
    .local v8, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    add-int v6, v0, v1

    .line 268
    .local v6, "centerX":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 270
    .local v7, "centerY":I
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 271
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 272
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 273
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 274
    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 275
    return-void

    .line 255
    .end local v6    # "centerX":I
    .end local v7    # "centerY":I
    .end local v8    # "totalWidth":I
    :cond_1
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$7(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->increment:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 256
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 257
    const/4 v0, -0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 258
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 260
    :cond_2
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 262
    invoke-static {v9, v4}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    goto/16 :goto_0
.end method

.method private drawCircle05(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 280
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 282
    .local v9, "wrapper":Lcom/android/customview/MonIndicator$CircleWrapper;
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/customview/MonIndicator$CircleWrapper;

    .line 283
    .local v10, "wrapper01":Lcom/android/customview/MonIndicator$CircleWrapper;
    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v0

    invoke-static {v10}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v9, v0}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V

    .line 284
    iget v0, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    mul-int/2addr v1, v2

    add-int v8, v0, v1

    .line 285
    .local v8, "totalWidth":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v0, v1

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    iget v2, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    add-int v6, v0, v1

    .line 286
    .local v6, "centerX":I
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x2

    .line 288
    .local v7, "centerY":I
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 289
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 290
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 291
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Lcom/android/customview/MonIndicator$CircleWrapper;->access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 292
    iget-object v1, p0, Lcom/android/customview/MonIndicator;->oval:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 293
    return-void
.end method

.method private getDefaultHeight()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getDefaultWidth()I
    .locals 4

    .prologue
    .line 136
    iget v1, p0, Lcom/android/customview/MonIndicator;->circleRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/customview/MonIndicator;->wrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/customview/MonIndicator;->circleSpacing:I

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 137
    .local v0, "defaultWidth":I
    return v0
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 120
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 122
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 123
    move v0, v2

    .line 130
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 125
    .end local v0    # "result":I
    :cond_1
    invoke-direct {p0}, Lcom/android/customview/MonIndicator;->getDefaultHeight()I

    move-result v0

    .line 126
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 127
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 102
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 104
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 105
    move v0, v2

    .line 112
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 107
    .end local v0    # "result":I
    :cond_1
    invoke-direct {p0}, Lcom/android/customview/MonIndicator;->getDefaultWidth()I

    move-result v0

    .line 108
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 109
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/customview/MonIndicator;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator;->drawCircle01(Landroid/graphics/Canvas;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator;->drawCircle02(Landroid/graphics/Canvas;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator;->drawCircle03(Landroid/graphics/Canvas;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator;->drawCircle04(Landroid/graphics/Canvas;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator;->drawCircle05(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/customview/MonIndicator;->invalidate()V

    .line 157
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/customview/MonIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/customview/MonIndicator;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public setColors([I)V
    .locals 3
    .param p1, "colors"    # [I

    .prologue
    .line 299
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/customview/MonIndicator;->colors:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
