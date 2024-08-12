.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field hotseatState:I

.field private mAllAppsButtonRank:I

.field private mCellCountX:I

.field private mCellCountY:I

.field private mContent:Lcom/android/launcher2/CellLayout;

.field protected mCurPosY:F

.field private mIsLandscape:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field protected mPosY:F

.field private mTransposeLayoutWithOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    iput v3, p0, Lcom/android/launcher2/Hotseat;->hotseatState:I

    .line 59
    sget-object v4, Lcom/android/launcher/R$styleable;->Hotseat:[I

    .line 58
    invoke-virtual {p1, p2, v4, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 62
    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    .line 63
    sget v4, Lcom/android/launcher/R$integer;->hotseat_all_apps_index:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    .line 65
    sget v4, Lcom/android/launcher/R$bool;->hotseat_transpose_layout_with_orientation:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 64
    iput-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mTransposeLayoutWithOrientation:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 67
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 66
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 68
    return-void

    :cond_0
    move v2, v3

    .line 67
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private hasVerticalHotseat()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mTransposeLayoutWithOrientation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/launcher2/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/launcher2/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1    # "x":I
    :cond_0
    return p1
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 95
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 101
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    if-gez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 102
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    if-gez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    .line 103
    :cond_1
    sget v0, Lcom/android/launcher/R$id;->layout:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    iget v1, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsHotseat(Z)V

    .line 106
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    if-nez v0, :cond_2

    .line 107
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 111
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method resetLayout()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 118
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 120
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/android/launcher/R$layout;->application:I

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 119
    check-cast v1, Lcom/android/launcher2/BubbleTextView;

    .line 122
    .local v1, "allAppsButton":Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher/R$drawable;->all_apps_button_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v10, v0, v10, v10}, Lcom/android/launcher2/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/launcher/R$integer;->allapptext:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget v0, Lcom/android/launcher/R$string;->all_apps_button_label:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    sget v0, Lcom/android/launcher/R$string;->all_apps_button_label:I

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    new-instance v0, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$2;-><init>(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v8

    .line 150
    .local v8, "x":I
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v9

    .line 151
    .local v9, "y":I
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v4, v8, v9, v5, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 152
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v3, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    .line 153
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v2, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 155
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MyWorkspace;->setupAllapp(Lcom/android/launcher2/BubbleTextView;I)V

    .line 156
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 72
    new-instance v0, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    return-void
.end method
