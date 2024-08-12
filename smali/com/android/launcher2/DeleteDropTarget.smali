.class public Lcom/android/launcher2/DeleteDropTarget;
.super Lcom/android/launcher2/ButtonDropTarget;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static DELETE_ANIMATION_DURATION:I

.field private static FLING_DELETE_ANIMATION_DURATION:I

.field private static FLING_TO_DELETE_FRICTION:F

.field private static MODE_FLING_DELETE_ALONG_VECTOR:I

.field private static MODE_FLING_DELETE_TO_TRASH:I


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private final mFlingDeleteMode:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;

.field private mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x11d

    sput v0, Lcom/android/launcher2/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    .line 42
    const/16 v0, 0x15e

    sput v0, Lcom/android/launcher2/DeleteDropTarget;->FLING_DELETE_ANIMATION_DURATION:I

    .line 43
    const v0, 0x3d0f5c29    # 0.035f

    sput v0, Lcom/android/launcher2/DeleteDropTarget;->FLING_TO_DELETE_FRICTION:F

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget v0, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    iput v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDropTarget;->width:I

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->completeDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method private animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 17
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 200
    .local v2, "dragLayer":Lcom/android/launcher2/DragLayer;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .local v4, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 202
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v7}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v7

    .line 203
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v9

    .line 202
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v8, v9}, Lcom/android/launcher2/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v5

    .line 204
    .local v5, "to":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v6, v3, v7

    .line 206
    .local v6, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v3}, Lcom/android/launcher2/SearchDropTargetBar;->deferOnDragEnd()V

    .line 207
    new-instance v14, Lcom/android/launcher2/DeleteDropTarget$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/launcher2/DeleteDropTarget$1;-><init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 215
    .local v14, "onAnimationEndRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    .line 216
    sget v11, Lcom/android/launcher2/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 217
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 218
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 215
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 219
    return-void
.end method

.method private completeDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 6
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 222
    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 224
    .local v2, "item":Lcom/android/launcher2/ItemInfo;
    iget-object v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v4, v2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .end local v2    # "item":Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v4, v2}, Lcom/android/launcher2/Launcher;->startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 227
    .restart local v2    # "item":Lcom/android/launcher2/ItemInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 231
    check-cast v1, Lcom/android/launcher2/FolderInfo;

    .line 232
    .local v1, "folderInfo":Lcom/android/launcher2/FolderInfo;
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 233
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4, v1}, Lcom/android/launcher2/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/FolderInfo;)V

    goto :goto_0

    .line 234
    .end local v1    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isWorkspaceOrFolderWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v5, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 237
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    move-object v3, v2

    .line 239
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 240
    .local v3, "launcherAppWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v4, p0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    .line 241
    .local v0, "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v0, :cond_0

    .line 244
    new-instance v4, Lcom/android/launcher2/DeleteDropTarget$2;

    const-string v5, "deleteAppWidgetId"

    invoke-direct {v4, p0, v5, v0, v3}, Lcom/android/launcher2/DeleteDropTarget$2;-><init>(Lcom/android/launcher2/DeleteDropTarget;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 248
    invoke-virtual {v4}, Lcom/android/launcher2/DeleteDropTarget$2;->start()V

    goto :goto_0
.end method

.method private createFlingAlongVectorAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 7
    .param p1, "dragLayer"    # Lcom/android/launcher2/DragLayer;
    .param p2, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p3, "vel"    # Landroid/graphics/PointF;
    .param p4, "startTime"    # J
    .param p6, "duration"    # I
    .param p7, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 366
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 367
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 369
    new-instance v0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;

    .line 370
    sget v6, Lcom/android/launcher2/DeleteDropTarget;->FLING_TO_DELETE_FRICTION:F

    move-object v1, p1

    move-object v2, p3

    move-wide v4, p4

    .line 369
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;-><init>(Lcom/android/launcher2/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    return-object v0
.end method

.method private createFlingToTrashAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 19
    .param p1, "dragLayer"    # Lcom/android/launcher2/DragLayer;
    .param p2, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p3, "vel"    # Landroid/graphics/PointF;
    .param p4, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 262
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v3

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v18

    .line 262
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/launcher2/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v15

    .line 264
    .local v15, "to":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 265
    .local v12, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/PointF;->length()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 270
    .local v16, "velocity":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 271
    .local v17, "vp":F
    iget v2, v12, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v14, v2

    .line 272
    .local v14, "offsetY":I
    int-to-float v2, v14

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v13, v2

    .line 273
    .local v13, "offsetX":I
    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    int-to-float v10, v2

    .line 274
    .local v10, "y2":F
    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    int-to-float v7, v2

    .line 275
    .local v7, "x2":F
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    .line 276
    .local v6, "x1":F
    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    .line 277
    .local v9, "y1":F
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    .line 278
    .local v8, "x3":F
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v11, v2

    .line 280
    .local v11, "y3":F
    new-instance v5, Lcom/android/launcher2/DeleteDropTarget$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/DeleteDropTarget$3;-><init>(Lcom/android/launcher2/DeleteDropTarget;)V

    .line 286
    .local v5, "scaleAlphaInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v2, Lcom/android/launcher2/DeleteDropTarget$4;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher2/DeleteDropTarget$4;-><init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V

    return-object v2
.end method

.method private isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 93
    instance-of v0, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllAppsWidget(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 96
    instance-of v1, p1, Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 97
    instance-of v1, p2, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 98
    check-cast v0, Lcom/android/launcher2/PendingAddItemInfo;

    .line 99
    .local v0, "addInfo":Lcom/android/launcher2/PendingAddItemInfo;
    iget v1, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 106
    .end local v0    # "addInfo":Lcom/android/launcher2/PendingAddItemInfo;
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 102
    .restart local v0    # "addInfo":Lcom/android/launcher2/PendingAddItemInfo;
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 109
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v0, Lcom/android/launcher2/Folder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWorkspaceFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 118
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/FolderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceOrFolderApplication(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceOrFolderWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetHoverColor()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 128
    return-void
.end method

.method private setHoverColor()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 123
    iget v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteDropTarget;->setTextColor(I)V

    .line 124
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnd()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDropTarget;->mActive:Z

    .line 179
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 184
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->setHoverColor()V

    .line 185
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/launcher2/ButtonDropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 190
    iget-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->resetHoverColor()V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget v1, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setColor(I)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v4, 0x0

    .line 139
    const/4 v2, 0x1

    .line 140
    .local v2, "isVisible":Z
    const/4 v1, 0x0

    .line 143
    .local v1, "isUninstall":Z
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsWidget(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const/4 v2, 0x0

    .line 149
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher2/DragSource;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 150
    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 151
    .local v0, "appInfo":Lcom/android/launcher2/ApplicationInfo;
    iget v3, v0, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 152
    const/4 v1, 0x1

    .line 158
    .end local v0    # "appInfo":Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 159
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/android/launcher2/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 165
    iput-boolean v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mActive:Z

    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDropTarget;->resetHoverColor()V

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 169
    if-eqz v1, :cond_6

    sget v3, Lcom/android/launcher/R$string;->delete_target_uninstall_label:I

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/launcher2/DeleteDropTarget;->setText(I)V

    .line 173
    :cond_2
    return-void

    .line 154
    .restart local v0    # "appInfo":Lcom/android/launcher2/ApplicationInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 161
    .end local v0    # "appInfo":Lcom/android/launcher2/ApplicationInfo;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/android/launcher2/DeleteDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 167
    :cond_5
    const/16 v4, 0x8

    goto :goto_2

    .line 170
    :cond_6
    sget v3, Lcom/android/launcher/R$string;->delete_target_label:I

    goto :goto_3
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 255
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-super {p0}, Lcom/android/launcher2/ButtonDropTarget;->onFinishInflate()V

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 71
    .local v1, "r":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$color;->delete_target_hover_tint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mHoverColor:I

    .line 73
    sget v2, Lcom/android/launcher/R$drawable;->uninstall_target_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 72
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 74
    sget v2, Lcom/android/launcher/R$drawable;->remove_target_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 76
    iget-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 77
    iget-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher2/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 85
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 86
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/launcher2/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 21
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vel"    # Landroid/graphics/PointF;

    .prologue
    .line 375
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    instance-of v0, v4, Lcom/android/launcher2/AppsCustomizePagedView;

    move/from16 v20, v0

    .line 378
    .local v20, "isAllApps":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/DragView;->setColor(I)V

    .line 379
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->updateInitialScaleToCurrentScale()V

    .line 381
    if-eqz v20, :cond_0

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DeleteDropTarget;->resetHoverColor()V

    .line 385
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    sget v6, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v4, v6, :cond_1

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v4}, Lcom/android/launcher2/SearchDropTargetBar;->deferOnDragEnd()V

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v4}, Lcom/android/launcher2/SearchDropTargetBar;->finishAnimations()V

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 392
    .local v11, "config":Landroid/view/ViewConfiguration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v5

    .line 393
    .local v5, "dragLayer":Lcom/android/launcher2/DragLayer;
    sget v10, Lcom/android/launcher2/DeleteDropTarget;->FLING_DELETE_ANIMATION_DURATION:I

    .line 394
    .local v10, "duration":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 401
    .local v8, "startTime":J
    new-instance v16, Lcom/android/launcher2/DeleteDropTarget$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/android/launcher2/DeleteDropTarget$5;-><init>(Lcom/android/launcher2/DeleteDropTarget;JI)V

    .line 417
    .local v16, "tInterpolator":Landroid/animation/TimeInterpolator;
    const/4 v14, 0x0

    .line 418
    .local v14, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    sget v6, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v4, v6, :cond_3

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v11}, Lcom/android/launcher2/DeleteDropTarget;->createFlingToTrashAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v14

    .line 424
    :cond_2
    :goto_0
    new-instance v17, Lcom/android/launcher2/DeleteDropTarget$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/DeleteDropTarget$6;-><init>(Lcom/android/launcher2/DeleteDropTarget;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 438
    .local v17, "onAnimationEndRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 439
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move v15, v10

    .line 438
    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 440
    return-void

    .line 420
    .end local v17    # "onAnimationEndRunnable":Ljava/lang/Runnable;
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/DeleteDropTarget;->mFlingDeleteMode:I

    sget v6, Lcom/android/launcher2/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    if-ne v4, v6, :cond_2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 421
    invoke-direct/range {v4 .. v11}, Lcom/android/launcher2/DeleteDropTarget;->createFlingAlongVectorAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v14

    goto :goto_0
.end method
