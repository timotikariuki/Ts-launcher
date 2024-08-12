.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1

.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/android/launcher2/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field mDirectionVector:[I

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field mLastDirectionVector:[I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTopTouchRegionAdjustment:I

.field private mTouchTargetWidth:I

.field private mWidgetPaddingBottom:I

.field private mWidgetPaddingLeft:I

.field private mWidgetPaddingRight:I

.field private mWidgetPaddingTop:I

.field private mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragLayer;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widgetView"    # Lcom/android/launcher2/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p4, "dragLayer"    # Lcom/android/launcher2/DragLayer;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 57
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 59
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 60
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 62
    const/16 v5, 0x96

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 63
    const/16 v5, 0x18

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 64
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 65
    const v5, 0x3f28f5c3    # 0.66f

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    move-object v5, p1

    .line 80
    check-cast v5, Lcom/android/launcher2/Launcher;

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 81
    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    .line 82
    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 83
    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    .line 84
    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 85
    sget v5, Lcom/android/launcher/R$id;->workspace:I

    invoke-virtual {p4, v5}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Workspace;

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 87
    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 88
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v5, v1}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    .line 89
    .local v4, "result":[I
    const/4 v5, 0x0

    aget v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    .line 90
    const/4 v5, 0x1

    aget v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    .line 92
    sget v5, Lcom/android/launcher/R$drawable;->widget_resize_frame_holo:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 93
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 96
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 97
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget v6, Lcom/android/launcher/R$drawable;->widget_resize_handle_left:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    .line 99
    const/16 v7, 0x13

    .line 98
    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 103
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget v6, Lcom/android/launcher/R$drawable;->widget_resize_handle_right:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    .line 105
    const/16 v7, 0x15

    .line 104
    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 106
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 109
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget v6, Lcom/android/launcher/R$drawable;->widget_resize_handle_top:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    .line 111
    const/16 v7, 0x31

    .line 110
    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 112
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 115
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget v6, Lcom/android/launcher/R$drawable;->widget_resize_handle_bottom:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    .line 117
    const/16 v7, 0x51

    .line 116
    invoke-direct {v2, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 118
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {p2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v6, 0x0

    .line 120
    invoke-static {p1, v5, v6}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 122
    .local v3, "p":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/launcher/R$integer;->myiconback:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 123
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 124
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 125
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 126
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    .line 135
    :goto_0
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 136
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 144
    .local v0, "density":F
    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 145
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 150
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 151
    return-void

    .line 129
    .end local v0    # "density":F
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    .line 130
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    .line 131
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    .line 132
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    goto :goto_0

    .line 138
    :cond_2
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 139
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 14
    .param p0, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 356
    if-nez p3, :cond_0

    .line 357
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "rect":Landroid/graphics/Rect;
    invoke-direct/range {p3 .. p3}, Landroid/graphics/Rect;-><init>()V

    .line 359
    .restart local p3    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v12, 0x0

    invoke-static {p0, v12}, Lcom/android/launcher2/Workspace;->getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;

    move-result-object v6

    .line 360
    .local v6, "landMetrics":Landroid/graphics/Rect;
    const/4 v12, 0x1

    invoke-static {p0, v12}, Lcom/android/launcher2/Workspace;->getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;

    move-result-object v9

    .line 361
    .local v9, "portMetrics":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v3, v12, Landroid/util/DisplayMetrics;->density:F

    .line 364
    .local v3, "density":F
    iget v2, v6, Landroid/graphics/Rect;->left:I

    .line 365
    .local v2, "cellWidth":I
    iget v1, v6, Landroid/graphics/Rect;->top:I

    .line 366
    .local v1, "cellHeight":I
    iget v11, v6, Landroid/graphics/Rect;->right:I

    .line 367
    .local v11, "widthGap":I
    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    .line 368
    .local v4, "heightGap":I
    mul-int v12, p1, v2

    add-int/lit8 v13, p1, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v7, v12

    .line 369
    .local v7, "landWidth":I
    mul-int v12, p2, v1

    add-int/lit8 v13, p2, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v5, v12

    .line 372
    .local v5, "landHeight":I
    iget v2, v9, Landroid/graphics/Rect;->left:I

    .line 373
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 374
    iget v11, v9, Landroid/graphics/Rect;->right:I

    .line 375
    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    .line 376
    mul-int v12, p1, v2

    add-int/lit8 v13, p1, -0x1

    mul-int/2addr v13, v11

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v10, v12

    .line 377
    .local v10, "portWidth":I
    mul-int v12, p2, v1

    add-int/lit8 v13, p2, -0x1

    mul-int/2addr v13, v4

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v8, v12

    .line 378
    .local v8, "portHeight":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 379
    return-object p3
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 24
    .param p1, "onDismiss"    # Z

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v6

    add-int v22, v1, v6

    .line 236
    .local v22, "xThreshold":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v6

    add-int v23, v1, v6

    .line 238
    .local v23, "yThreshold":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int v13, v1, v6

    .line 239
    .local v13, "deltaX":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int v14, v1, v6

    .line 241
    .local v14, "deltaY":I
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v13

    mul-float/2addr v1, v6

    move/from16 v0, v22

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v6, v6

    sub-float v17, v1, v6

    .line 242
    .local v17, "hSpanIncF":F
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v14

    mul-float/2addr v1, v6

    move/from16 v0, v23

    int-to-float v6, v0

    div-float/2addr v1, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v6, v6

    sub-float v21, v1, v6

    .line 244
    .local v21, "vSpanIncF":F
    const/16 v16, 0x0

    .line 245
    .local v16, "hSpanInc":I
    const/16 v20, 0x0

    .line 246
    .local v20, "vSpanInc":I
    const/4 v9, 0x0

    .line 247
    .local v9, "cellXInc":I
    const/4 v10, 0x0

    .line 249
    .local v10, "cellYInc":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v11

    .line 250
    .local v11, "countX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v12

    .line 252
    .local v12, "countY":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_0

    .line 253
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 255
    :cond_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v6, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    .line 256
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 259
    :cond_1
    if-nez p1, :cond_3

    if-nez v16, :cond_3

    if-nez v20, :cond_3

    .line 345
    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 264
    .local v18, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 265
    .local v4, "spanX":I
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 266
    .local v5, "spanY":I
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 267
    .local v2, "cellX":I
    :goto_1
    move-object/from16 v0, v18

    iget-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_d

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 269
    .local v3, "cellY":I
    :goto_2
    const/4 v15, 0x0

    .line 270
    .local v15, "hSpanDelta":I
    const/16 v19, 0x0

    .line 274
    .local v19, "vSpanDelta":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_e

    .line 275
    neg-int v1, v2

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 276
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 277
    mul-int/lit8 v16, v16, -0x1

    .line 278
    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 279
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 280
    move/from16 v0, v16

    neg-int v15, v0

    .line 288
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_f

    .line 289
    neg-int v1, v3

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 290
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 291
    mul-int/lit8 v20, v20, -0x1

    .line 292
    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 293
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 294
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v19, v0

    .line 301
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 304
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_7

    .line 305
    :cond_6
    add-int v4, v4, v16

    .line 306
    add-int/2addr v2, v9

    .line 307
    if-eqz v15, :cond_7

    .line 308
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    :goto_5
    aput v1, v6, v7

    .line 312
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_9

    .line 313
    :cond_8
    add-int v5, v5, v20

    .line 314
    add-int/2addr v3, v10

    .line 315
    if-eqz v19, :cond_9

    .line 316
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_11

    const/4 v1, -0x1

    :goto_6
    aput v1, v6, v7

    .line 320
    :cond_9
    if-nez p1, :cond_a

    if-nez v19, :cond_a

    if-eqz v15, :cond_2

    .line 324
    :cond_a
    if-eqz p1, :cond_12

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    .line 332
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 333
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    move/from16 v8, p1

    .line 332
    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    .line 333
    if-eqz v1, :cond_b

    .line 334
    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 335
    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 336
    move-object/from16 v0, v18

    iput v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 337
    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 338
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 339
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 340
    if-nez p1, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v6, v4, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 344
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_0

    .line 266
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v15    # "hSpanDelta":I
    .end local v19    # "vSpanDelta":I
    :cond_c
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    goto/16 :goto_1

    .line 267
    .restart local v2    # "cellX":I
    :cond_d
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    goto/16 :goto_2

    .line 282
    .restart local v3    # "cellY":I
    .restart local v15    # "hSpanDelta":I
    .restart local v19    # "vSpanDelta":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_4

    .line 283
    add-int v1, v2, v4

    sub-int v1, v11, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 284
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 285
    move/from16 v15, v16

    goto/16 :goto_3

    .line 295
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_5

    .line 296
    add-int v1, v3, v5

    sub-int v1, v12, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 297
    move-object/from16 v0, v18

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v1, v6

    neg-int v1, v1

    move/from16 v0, v20

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 298
    move/from16 v19, v20

    goto/16 :goto_4

    .line 308
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 316
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_6

    .line 328
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v1, v6

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v6

    goto/16 :goto_7
.end method

.method static updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V
    .locals 6
    .param p0, "widgetView"    # Landroid/appwidget/AppWidgetHostView;
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 350
    sget-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 351
    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 352
    sget-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget-object v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    .line 351
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 353
    return-void
.end method

.method private visualizeResizeForDelta(IIZ)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "onDismiss"    # Z

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 213
    .local v0, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 214
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 215
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 220
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 221
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 222
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 227
    :cond_1
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 229
    return-void

    .line 216
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 217
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    goto :goto_0

    .line 223
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 224
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    goto :goto_1
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move v1, v3

    .line 155
    .local v1, "horizontalActive":Z
    :goto_0
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    move v2, v3

    .line 157
    .local v2, "verticalActive":Z
    :goto_1
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v5, :cond_3

    if-eqz v1, :cond_3

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 159
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v5, v8

    if-ge p2, v5, :cond_5

    if-eqz v2, :cond_5

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v5, v8

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v5, v8

    if-le p2, v5, :cond_6

    .line 161
    if-eqz v2, :cond_6

    move v5, v3

    .line 160
    :goto_5
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 163
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_7

    .line 164
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v5, :cond_7

    move v0, v4

    .line 166
    .local v0, "anyBordersActive":Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    .line 171
    if-eqz v0, :cond_0

    .line 172
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_8

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 173
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 174
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 175
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_b

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 177
    :cond_0
    return v0

    .end local v0    # "anyBordersActive":Z
    .end local v1    # "horizontalActive":Z
    .end local v2    # "verticalActive":Z
    :cond_1
    move v1, v4

    .line 154
    goto/16 :goto_0

    .restart local v1    # "horizontalActive":Z
    :cond_2
    move v2, v4

    .line 155
    goto/16 :goto_1

    .restart local v2    # "verticalActive":Z
    :cond_3
    move v5, v4

    .line 157
    goto/16 :goto_2

    :cond_4
    move v5, v4

    .line 158
    goto :goto_3

    :cond_5
    move v5, v4

    .line 159
    goto :goto_4

    :cond_6
    move v5, v4

    .line 161
    goto :goto_5

    :cond_7
    move v0, v3

    .line 163
    goto :goto_6

    .restart local v0    # "anyBordersActive":Z
    :cond_8
    move v3, v7

    .line 172
    goto :goto_7

    :cond_9
    move v3, v7

    .line 173
    goto :goto_8

    :cond_a
    move v3, v7

    .line 174
    goto :goto_9

    :cond_b
    move v6, v7

    .line 175
    goto :goto_a
.end method

.method public commitResize()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 389
    return-void
.end method

.method public onTouchUp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 392
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v3

    add-int v0, v2, v3

    .line 393
    .local v0, "xThreshold":I
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v3

    add-int v1, v2, v3

    .line 395
    .local v1, "yThreshold":I
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 396
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaYAddOn:I

    .line 397
    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 398
    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 400
    new-instance v2, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 24
    .param p1, "animate"    # Z

    .prologue
    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 410
    .local v5, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/DragLayer;->getPaddingLeft()I

    move-result v20

    .line 410
    add-int v19, v19, v20

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v20

    .line 410
    sub-int v16, v19, v20

    .line 412
    .local v16, "xOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/DragLayer;->getPaddingTop()I

    move-result v20

    .line 412
    add-int v19, v19, v20

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v20

    .line 412
    sub-int v18, v19, v20

    .line 415
    .local v18, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingRight:I

    move/from16 v20, v0

    .line 415
    sub-int v7, v19, v20

    .line 417
    .local v7, "newWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingBottom:I

    move/from16 v20, v0

    .line 417
    sub-int v6, v19, v20

    .line 420
    .local v6, "newHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingLeft:I

    move/from16 v20, v0

    add-int v8, v19, v20

    .line 421
    .local v8, "newX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    add-int v19, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetPaddingTop:I

    move/from16 v20, v0

    add-int v9, v19, v20

    .line 426
    .local v9, "newY":I
    if-gez v9, :cond_0

    .line 428
    neg-int v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 432
    :goto_0
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 434
    add-int v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 439
    :goto_1
    if-nez p1, :cond_2

    .line 440
    iput v7, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 441
    iput v6, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 442
    iput v8, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 443
    iput v9, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 477
    :goto_2
    return-void

    .line 430
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 436
    :cond_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 450
    :cond_2
    const-string v19, "width"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 451
    .local v14, "width":Landroid/animation/PropertyValuesHolder;
    const-string v19, "height"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    .line 452
    aput v6, v20, v21

    .line 451
    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 453
    .local v3, "height":Landroid/animation/PropertyValuesHolder;
    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v8, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 454
    .local v15, "x":Landroid/animation/PropertyValuesHolder;
    const-string v19, "y"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    move/from16 v22, v0

    aput v22, v20, v21

    const/16 v21, 0x1

    aput v9, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 455
    .local v17, "y":Landroid/animation/PropertyValuesHolder;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v14, v19, v20

    const/16 v20, 0x1

    aput-object v3, v19, v20

    const/16 v20, 0x2

    aput-object v15, v19, v20

    const/16 v20, 0x3

    aput-object v17, v19, v20

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 456
    .local v10, "oa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 457
    .local v4, "leftOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 458
    .local v11, "rightOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 459
    .local v13, "topOa":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const-string v20, "alpha"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 460
    .local v2, "bottomOa":Landroid/animation/ObjectAnimator;
    new-instance v19, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 466
    .local v12, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 467
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v13, v19, v20

    const/16 v20, 0x2

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 474
    :goto_3
    const-wide/16 v19, 0x96

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 475
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 468
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 469
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 471
    :cond_4
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v10, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    aput-object v11, v19, v20

    const/16 v20, 0x3

    aput-object v13, v19, v20

    const/16 v20, 0x4

    aput-object v2, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method public updateDeltas(II)V
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 186
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 187
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 193
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 194
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 195
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 200
    :cond_1
    :goto_1
    return-void

    .line 188
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 190
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 198
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(IIZ)V

    .line 204
    return-void
.end method
