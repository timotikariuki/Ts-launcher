.class public Lcom/android/launcher2/SearchDropTargetBar;
.super Landroid/widget/FrameLayout;
.source "SearchDropTargetBar.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;


# static fields
.field private static final sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private mBarHeight:I

.field private mDeferOnDragEnd:Z

.field private mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mDropTargetBar:Landroid/view/View;

.field private mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

.field private mEnableDropDownDropTargets:Z

.field private mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

.field private mIsSearchBarHidden:Z

.field private mPreviousBackground:Landroid/graphics/drawable/Drawable;

.field private mQSBSearchBar:Landroid/view/View;

.field private mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 44
    sput-object v0, Lcom/android/launcher2/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SearchDropTargetBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 64
    return-void
.end method

.method private prepareStartAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->buildLayer()V

    .line 82
    return-void
.end method

.method private setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/ObjectAnimator;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 85
    sget-object v0, Lcom/android/launcher2/SearchDropTargetBar;->sAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    new-instance v0, Lcom/android/launcher2/SearchDropTargetBar$1;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher2/SearchDropTargetBar$1;-><init>(Lcom/android/launcher2/SearchDropTargetBar;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public deferOnDragEnd()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    .line 204
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 131
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 133
    return-void
.end method

.method public getSearchBarBounds()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 241
    .local v0, "pos":[I
    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 244
    .local v1, "rect":Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 245
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 246
    aget v2, v0, v3

    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 247
    aget v2, v0, v4

    iget-object v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 250
    .end local v0    # "pos":[I
    .end local v1    # "rect":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransitionInDuration()I
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0xc8

    return v0
.end method

.method public getTransitionOutDuration()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0xaf

    return v0
.end method

.method public hideSearchBar(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 166
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 160
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 215
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeferOnDragEnd:Z

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 187
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 200
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 100
    sget v0, Lcom/android/launcher/R$id;->qsb_search_bar:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    .line 101
    sget v0, Lcom/android/launcher/R$id;->drag_target_bar:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    sget v1, Lcom/android/launcher/R$id;->info_target_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    sget v1, Lcom/android/launcher/R$id;->delete_target_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher2/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher/R$dimen;->qsb_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/ButtonDropTarget;->setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/launcher2/SearchDropTargetBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher/R$bool;->config_useDropTargetDownTransition:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 109
    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    .line 113
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v4, [F

    .line 116
    iget v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    aput v5, v2, v7

    .line 115
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 117
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v4, [F

    aput v5, v2, v6

    .line 118
    iget v3, p0, Lcom/android/launcher2/SearchDropTargetBar;->mBarHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v7

    .line 117
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SearchDropTargetBar;->setupAnimation(Landroid/animation/ObjectAnimator;Landroid/view/View;)V

    .line 126
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBar:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDropTargetBarAnim:Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 121
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 122
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onSearchPackagesChanged(ZZ)V
    .locals 3
    .param p1, "searchVisible"    # Z
    .param p2, "voiceVisible"    # Z

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 229
    iput-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/SearchDropTargetBar;->mPreviousBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p2, "dragController"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 67
    invoke-virtual {p2, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragController;->setFlingToDeleteDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mInfoDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mDeleteDropTarget:Lcom/android/launcher2/ButtonDropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ButtonDropTarget;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 75
    return-void
.end method

.method public showSearchBar(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/SearchDropTargetBar;->prepareStartAnimation(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    .line 151
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mIsSearchBarHidden:Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBarAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 145
    iget-boolean v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mEnableDropDownDropTargets:Z

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SearchDropTargetBar;->mQSBSearchBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method
