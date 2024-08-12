.class public Lcom/android/launcher2/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Lcom/android/launcher2/LauncherTransitionable;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field static final LOG_TAG:Ljava/lang/String; = "AppsCustomizeTabHost"

.field private static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"


# instance fields
.field allappState:I

.field private mAnimationBuffer:Landroid/widget/FrameLayout;

.field private mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mContent:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field protected mCurPosX:F

.field protected mCurPosY:F

.field private mInTransition:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mPosX:F

.field protected mPosY:F

.field private mRelayoutAndMakeVisible:Ljava/lang/Runnable;

.field private mResetAfterTransition:Z

.field private mTabs:Landroid/view/ViewGroup;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTransitioningToWorkspace:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->allappState:I

    .line 64
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 66
    new-instance v0, Lcom/android/launcher2/AppsCustomizeTabHost$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->buildLayer()V

    .line 496
    :cond_0
    return-void
.end method

.method private onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 312
    return-void
.end method

.method private onTabChangedStart()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 299
    return-void
.end method

.method private reloadCurrentPage()V
    .locals 2

    .prologue
    .line 302
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->flashScrollingIndicator(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 306
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 307
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestFocus()Z

    .line 308
    return-void
.end method

.method private setVisibilityOfSiblingsWithLowerZOrder(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 590
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    .line 609
    :cond_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 594
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 595
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 596
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 597
    .local v0, "child":Landroid/view/View;
    if-eq v0, p0, :cond_0

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 595
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 607
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed; can\'t get z-order of views"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string v0, "APPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .line 444
    :goto_0
    return-object v0

    .line 441
    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    goto :goto_0

    .line 444
    :cond_1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/high16 v0, 0x60000

    .line 469
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 452
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 453
    const-string v0, "APPS"

    .line 457
    :goto_0
    return-object v0

    .line 454
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 455
    const-string v0, "WIDGETS"

    goto :goto_0

    .line 457
    :cond_1
    const-string v0, "APPS"

    goto :goto_0
.end method

.method isTransitioning()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setup()V

    .line 105
    sget v9, Lcom/android/launcher/R$id;->tabs_container:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 106
    .local v8, "tabsContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    .line 107
    .local v7, "tabs":Landroid/widget/TabWidget;
    sget v9, Lcom/android/launcher/R$id;->apps_customize_pane_content:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 108
    .local v0, "appsCustomizePane":Lcom/android/launcher2/AppsCustomizePagedView;
    iput-object v7, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    .line 109
    iput-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    .line 110
    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 111
    sget v9, Lcom/android/launcher/R$id;->animation_buffer:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    .line 112
    sget v9, Lcom/android/launcher/R$id;->apps_customize_content:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    .line 114
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 115
    if-eqz v7, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    if-nez v9, :cond_1

    .line 116
    :cond_0
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9

    .line 121
    :cond_1
    new-instance v1, Lcom/android/launcher2/AppsCustomizeTabHost$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 130
    .local v1, "contentFactory":Landroid/widget/TabHost$TabContentFactory;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/launcher/R$string;->all_apps_button_label:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "label":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 132
    sget v10, Lcom/android/launcher/R$layout;->tab_widget_indicator:I

    .line 131
    invoke-virtual {v9, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 133
    .local v6, "tabView":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    const-string v9, "APPS"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/launcher/R$string;->widgets_tab_label:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 139
    sget v10, Lcom/android/launcher/R$layout;->tab_widget_indicator:I

    .line 138
    invoke-virtual {v9, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tabView":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 140
    .restart local v6    # "tabView":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    const-string v9, "WIDGETS"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 144
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 148
    new-instance v2, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;

    invoke-direct {v2}, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;-><init>()V

    .line 149
    .local v2, "keyListener":Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;
    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 150
    .local v4, "lastTab":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    sget v9, Lcom/android/launcher/R$id;->market_button:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 152
    .local v5, "shopButton":Landroid/view/View;
    invoke-virtual {v5, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 156
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 3
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V

    .line 560
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 561
    if-eqz p2, :cond_0

    .line 562
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 565
    :cond_0
    if-nez p3, :cond_2

    .line 567
    invoke-virtual {p1, v1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->showAllAppsCling()V

    .line 573
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 574
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    .line 573
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 576
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 584
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 586
    :cond_2
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 4
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 508
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V

    .line 509
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 510
    iput-boolean p3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    .line 512
    if-eqz p3, :cond_2

    .line 514
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibilityOfSiblingsWithLowerZOrder(I)V

    .line 519
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelScrollingIndicatorAnimations()V

    .line 537
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    .line 539
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 541
    :cond_1
    return-void

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 528
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    .line 527
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 530
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 546
    if-eqz p2, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 549
    :cond_0
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 554
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_2

    const/4 v1, 0x1

    .line 161
    .local v1, "remeasureTabWidth":Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 164
    if-eqz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v0

    .line 166
    .local v0, "contentWidth":I
    if-lez v0, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mRelayoutAndMakeVisible:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 173
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 175
    .end local v0    # "contentWidth":I
    :cond_1
    return-void

    .line 160
    .end local v1    # "remeasureTabWidth":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v2

    .line 319
    .local v2, "type":Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 321
    .local v1, "res":Landroid/content/res/Resources;
    sget v3, Lcom/android/launcher/R$integer;->config_tabTransitionDuration:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 327
    .local v0, "duration":I
    new-instance v3, Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTransitioningToWorkspace:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 291
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrimMemory()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->clearAllWidgetPages()V

    .line 631
    return-void
.end method

.method public onWindowVisible()V
    .locals 3

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 619
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    .line 618
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 620
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 621
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    .line 620
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 623
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    goto :goto_0
.end method

.method selectAppsTab()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 91
    return-void
.end method

.method selectWidgetsTab()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 95
    return-void
.end method

.method setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 83
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    .line 84
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 87
    return-void
.end method

.method public setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 433
    return-void
.end method
