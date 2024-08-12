.class public Lcom/android/launcher2/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ViewController$AnimatWithViewChange;,
        Lcom/android/launcher2/ViewController$ViewChangeAnimation;,
        Lcom/android/launcher2/ViewController$ViewFilter;
    }
.end annotation


# instance fields
.field private mAimView:Landroid/view/View;

.field private mAinmatSet:Landroid/animation/AnimatorSet;

.field private mAnimatWithViewChange:Lcom/android/launcher2/ViewController$AnimatWithViewChange;

.field private mCurrentView:Landroid/view/View;

.field private mShowId:I

.field private mViewAnimation:Lcom/android/launcher2/ViewController$ViewChangeAnimation;

.field private mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    .line 18
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/ViewController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/ViewController;)Landroid/view/View;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    return-object v0
.end method

.method private showViewChange(I)V
    .locals 8
    .param p1, "show"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 118
    iget v3, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    if-ne v3, p1, :cond_2

    .line 120
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    iget v4, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    .line 121
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_0
    :goto_1
    return-void

    .line 122
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 123
    .local v2, "view":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 129
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    iget v4, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    .line 131
    iput p1, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    .line 132
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewAnimation:Lcom/android/launcher2/ViewController$ViewChangeAnimation;

    if-eqz v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewAnimation:Lcom/android/launcher2/ViewController$ViewChangeAnimation;

    iget-object v4, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    invoke-interface {v3, v4, v5}, Lcom/android/launcher2/ViewController$ViewChangeAnimation;->viewChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 139
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 143
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 144
    .local v1, "fadout":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 145
    .local v0, "fadin":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 146
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 147
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher2/ViewController$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/ViewController$1;-><init>(Lcom/android/launcher2/ViewController;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAinmatSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 181
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAnimatWithViewChange:Lcom/android/launcher2/ViewController$AnimatWithViewChange;

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mAnimatWithViewChange:Lcom/android/launcher2/ViewController$AnimatWithViewChange;

    iget-object v4, p0, Lcom/android/launcher2/ViewController;->mCurrentView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/ViewController;->mAimView:Landroid/view/View;

    invoke-interface {v3, v4, v5}, Lcom/android/launcher2/ViewController$AnimatWithViewChange;->animatWithViewChange(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1

    .line 143
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 144
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public setAnimatWithViewChange(Lcom/android/launcher2/ViewController$AnimatWithViewChange;)V
    .locals 0
    .param p1, "animation"    # Lcom/android/launcher2/ViewController$AnimatWithViewChange;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/launcher2/ViewController;->mAnimatWithViewChange:Lcom/android/launcher2/ViewController$AnimatWithViewChange;

    .line 57
    return-void
.end method

.method public setViewChangeAnimation(Lcom/android/launcher2/ViewController$ViewChangeAnimation;)V
    .locals 0
    .param p1, "animation"    # Lcom/android/launcher2/ViewController$ViewChangeAnimation;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher2/ViewController;->mViewAnimation:Lcom/android/launcher2/ViewController$ViewChangeAnimation;

    .line 52
    return-void
.end method

.method public setViewFilter(Lcom/android/launcher2/ViewController$ViewFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/launcher2/ViewController$ViewFilter;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    .line 47
    return-void
.end method

.method public show(I)V
    .locals 2
    .param p1, "ViewId"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 107
    :goto_1
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    invoke-interface {v1, p1}, Lcom/android/launcher2/ViewController$ViewFilter;->viewFilter(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/ViewController;->showViewChange(I)V

    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public showNext()V
    .locals 5

    .prologue
    .line 80
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    .local v0, "cnt":I
    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    iget v3, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    add-int/lit8 v3, v3, 0x1

    rem-int v2, v3, v0

    .line 85
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    if-eqz v3, :cond_1

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 94
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/ViewController;->showViewChange(I)V

    goto :goto_0

    .line 87
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/launcher2/ViewController$ViewFilter;->viewFilter(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    add-int/lit8 v3, v2, 0x1

    rem-int v2, v3, v0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public showPrev()V
    .locals 5

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 62
    .local v0, "cnt":I
    const/4 v3, 0x1

    if-gt v0, v3, :cond_0

    .line 76
    :goto_0
    return-void

    .line 65
    :cond_0
    iget v3, p0, Lcom/android/launcher2/ViewController;->mShowId:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    rem-int v2, v3, v0

    .line 66
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    if-eqz v3, :cond_1

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 75
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/ViewController;->showViewChange(I)V

    goto :goto_0

    .line 68
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/ViewController;->mViewFilter:Lcom/android/launcher2/ViewController$ViewFilter;

    iget-object v3, p0, Lcom/android/launcher2/ViewController;->mViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/launcher2/ViewController$ViewFilter;->viewFilter(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    add-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    rem-int v2, v3, v0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
