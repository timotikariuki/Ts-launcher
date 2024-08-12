.class public Lcom/android/launcher2/AppsCustomizePagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/PagedViewIcon$PressedCallback;
.implements Lcom/android/launcher2/PagedViewWidget$ShortPressListener;
.implements Lcom/android/launcher2/LauncherTransitionable;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field static final TAG:Ljava/lang/String; = "AppsCustomizePagedView"

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field static final WIDGET_BOUND:I = 0x1

.field static final WIDGET_INFLATED:I = 0x2

.field static final WIDGET_NO_CLEANUP_REQUIRED:I = -0x1

.field static final WIDGET_PRELOAD_PENDING:I = 0x0

.field static final sLookAheadPageCount:I = 0x2

.field static final sLookBehindPageCount:I = 0x2

.field private static final sPageSleepDelay:I = 0xc8


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAppIconSize:I

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

.field mCachedAppWidgetPreviewDestRect:Lcom/android/launcher2/RectCache;

.field mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

.field mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher2/RectCache;

.field mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

.field mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

.field mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentWidth:I

.field mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

.field private mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AsyncTaskPageData;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDraggingWidget:Z

.field private mHasShownAllAppsCling:Z

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInTransition:Z

.field private mInflateWidgetRunnable:Ljava/lang/Runnable;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mTmpRect:Landroid/graphics/Rect;

.field mWidgetCleanupState:I

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field mWidgetLoadingId:I

.field private mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

.field private final sWidgetPreviewIconPaddingPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    const v0, 0x45cb2000    # 6500.0f

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    .line 285
    const v0, 0x3f3d70a4    # 0.74f

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    .line 286
    const v0, 0x3f266666    # 0.65f

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    .line 287
    const/high16 v0, 0x41b00000    # 22.0f

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    .line 1907
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 277
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->sWidgetPreviewIconPaddingPercentage:F

    .line 279
    iput v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 280
    iput v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 283
    new-instance v2, Lcom/android/launcher2/Workspace$ZInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 289
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 290
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 296
    iput-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 297
    iput-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 302
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 303
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 304
    iput-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 305
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    .line 314
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    .line 316
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 319
    new-instance v2, Lcom/android/launcher2/BitmapCache;

    invoke-direct {v2}, Lcom/android/launcher2/BitmapCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    .line 320
    new-instance v2, Lcom/android/launcher2/PaintCache;

    invoke-direct {v2}, Lcom/android/launcher2/PaintCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    .line 321
    new-instance v2, Lcom/android/launcher2/CanvasCache;

    invoke-direct {v2}, Lcom/android/launcher2/CanvasCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    .line 324
    new-instance v2, Lcom/android/launcher2/CanvasCache;

    invoke-direct {v2}, Lcom/android/launcher2/CanvasCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    .line 325
    new-instance v2, Lcom/android/launcher2/RectCache;

    invoke-direct {v2}, Lcom/android/launcher2/RectCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher2/RectCache;

    .line 326
    new-instance v2, Lcom/android/launcher2/RectCache;

    invoke-direct {v2}, Lcom/android/launcher2/RectCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher2/RectCache;

    .line 327
    new-instance v2, Lcom/android/launcher2/PaintCache;

    invoke-direct {v2}, Lcom/android/launcher2/PaintCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

    .line 331
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 336
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 341
    .local v1, "resources":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$dimen;->app_icon_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 343
    sget-object v2, Lcom/android/launcher/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 344
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    .line 345
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 347
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 346
    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 349
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 348
    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    .line 351
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    .line 352
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    .line 353
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    .line 354
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    .line 355
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 360
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-virtual {p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView;->setImportantForAccessibility(I)V

    .line 366
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0

    .prologue
    .line 1551
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher2/AppsCustomizePagedView;)Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    return v0
.end method

.method static synthetic access$4(Lcom/android/launcher2/AppsCustomizePagedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/AppsCustomizePagedView;)I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    return v0
.end method

.method static synthetic access$6(Lcom/android/launcher2/AppsCustomizePagedView;ILjava/util/ArrayList;III)V
    .locals 0

    .prologue
    .line 1165
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1756
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1757
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1764
    return-void

    .line 1758
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 1759
    .local v3, "info":Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 1760
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1761
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1757
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 626
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    .line 627
    return-void
.end method

.method private beginDraggingWidget(Landroid/view/View;)Z
    .locals 32
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 766
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 768
    sget v3, Lcom/android/launcher/R$id;->widget_preview:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 769
    .local v25, "image":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/PendingAddItemInfo;

    .line 773
    .local v18, "createItemInfo":Lcom/android/launcher2/PendingAddItemInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 774
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 775
    const/4 v3, 0x0

    .line 844
    :goto_0
    return v3

    .line 781
    :cond_0
    const/high16 v21, 0x3f800000    # 1.0f

    .line 782
    .local v21, "scale":F
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_2

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    if-nez v3, :cond_1

    .line 786
    const/4 v3, 0x0

    goto :goto_0

    .line 789
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    move-object/from16 v24, v0

    .line 790
    .local v24, "createWidgetInfo":Lcom/android/launcher2/PendingAddWidgetInfo;
    move-object/from16 v18, v24

    .line 791
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    .line 792
    .local v7, "spanX":I
    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    .line 793
    .local v8, "spanY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    .line 794
    const/4 v4, 0x1

    .line 793
    move-object/from16 v0, v24

    invoke-virtual {v3, v7, v8, v0, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v31

    .line 796
    .local v31, "size":[I
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/FastBitmapDrawable;

    .line 797
    .local v30, "previewDrawable":Lcom/android/launcher2/FastBitmapDrawable;
    const/high16 v27, 0x3fa00000    # 1.25f

    .line 799
    .local v27, "minScale":F
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    const/4 v4, 0x0

    aget v4, v31, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 800
    .local v9, "maxWidth":I
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v31, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 801
    .local v10, "maxHeight":I
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    .line 802
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->icon:I

    move-object/from16 v3, p0

    .line 801
    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 805
    .local v13, "preview":Landroid/graphics/Bitmap;
    const/16 v3, 0x9

    new-array v0, v3, [F

    move-object/from16 v28, v0

    .line 806
    .local v28, "mv":[F
    new-instance v26, Landroid/graphics/Matrix;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Matrix;-><init>()V

    .line 808
    .local v26, "m":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v3, v4, v5, v6, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 809
    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    .line 810
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    .line 809
    invoke-direct {v4, v5, v6, v11, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 811
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 807
    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 812
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 813
    const/4 v3, 0x0

    aget v21, v28, v3

    .line 830
    .end local v7    # "spanX":I
    .end local v8    # "spanY":I
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v24    # "createWidgetInfo":Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v26    # "m":Landroid/graphics/Matrix;
    .end local v27    # "minScale":F
    .end local v28    # "mv":[F
    .end local v30    # "previewDrawable":Lcom/android/launcher2/FastBitmapDrawable;
    .end local v31    # "size":[I
    :goto_1
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_3

    move-object/from16 v3, v18

    .line 831
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    if-nez v3, :cond_3

    .line 830
    const/16 v22, 0x0

    .line 834
    .local v22, "clipAlpha":Z
    :goto_2
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 835
    const/4 v5, 0x0

    .line 834
    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 838
    .local v29, "outline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V

    .line 840
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 841
    sget v19, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    const/16 v20, 0x0

    move-object/from16 v15, v25

    move-object/from16 v16, v13

    move-object/from16 v17, p0

    .line 840
    invoke-virtual/range {v14 .. v21}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;F)V

    .line 842
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->recycle()V

    .line 843
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 844
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 815
    .end local v13    # "preview":Landroid/graphics/Bitmap;
    .end local v22    # "clipAlpha":Z
    .end local v29    # "outline":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/PendingAddShortcutInfo;

    .line 816
    .local v23, "createShortcutInfo":Lcom/android/launcher2/PendingAddShortcutInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/launcher2/PendingAddShortcutInfo;->shortcutActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 817
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 818
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 817
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 820
    .restart local v13    # "preview":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 822
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 823
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move-object/from16 v11, p0

    .line 822
    invoke-direct/range {v11 .. v17}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 826
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    goto/16 :goto_1

    .line 830
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "createShortcutInfo":Lcom/android/launcher2/PendingAddShortcutInfo;
    :cond_3
    const/16 v22, 0x1

    goto/16 :goto_2
.end method

.method private cancelAllTasks()V
    .locals 6

    .prologue
    .line 998
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 999
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1011
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1012
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1013
    return-void

    .line 1000
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1001
    .local v1, "task":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1002
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1003
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget v3, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1007
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v3, :cond_0

    .line 1008
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    goto :goto_0
.end method

.method private cleanupWidgetPreloading(Z)V
    .locals 6
    .param p1, "widgetWasAdded"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 724
    if-nez p1, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 727
    .local v0, "info":Lcom/android/launcher2/PendingAddWidgetInfo;
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 729
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    if-nez v2, :cond_1

    .line 731
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 732
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 752
    .end local v0    # "info":Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_0
    :goto_0
    iput v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 753
    iput v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 754
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 755
    invoke-static {}, Lcom/android/launcher2/PagedViewWidget;->resetShortPressTarget()V

    .line 756
    return-void

    .line 733
    .restart local v0    # "info":Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 735
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    if-eq v2, v4, :cond_2

    .line 736
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 740
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 741
    :cond_3
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 743
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    if-eq v2, v4, :cond_4

    .line 744
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 748
    :cond_4
    iget-object v1, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 749
    .local v1, "widget":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1861
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1875
    return-void

    .line 1862
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1863
    .local v0, "i":Ljava/lang/Object;
    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 1864
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1865
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" previewImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1866
    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1867
    const-string v4, " initialLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1868
    const-string v4, " minWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1865
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1869
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1870
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1871
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1872
    iget v4, v1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1871
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private endDragging(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "isFlingToDelete"    # Z
    .param p3, "success"    # Z

    .prologue
    .line 887
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 888
    instance-of v0, p1, Lcom/android/launcher2/DeleteDropTarget;

    if-nez v0, :cond_1

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 895
    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .param p2, "item"    # Lcom/android/launcher2/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1776
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1777
    .local v3, "removeComponent":Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1778
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1784
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1779
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1780
    .local v1, "info":Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findAppByPackage(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1787
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1788
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1794
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1789
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1790
    .local v1, "info":Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/launcher2/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 9

    .prologue
    .line 381
    const/4 v3, -0x1

    .line 382
    .local v3, "i":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    .line 384
    .local v2, "currentPage":I
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v7, :cond_1

    .line 385
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    .line 386
    .local v4, "layout":Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 387
    .local v1, "childrenLayout":Lcom/android/launcher2/PagedViewCellLayoutChildren;
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 388
    .local v6, "numItemsPerPage":I
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    .line 389
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 390
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    .line 403
    .end local v0    # "childCount":I
    .end local v1    # "childrenLayout":Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .end local v2    # "currentPage":I
    .end local v4    # "layout":Lcom/android/launcher2/PagedViewCellLayout;
    .end local v6    # "numItemsPerPage":I
    :cond_0
    :goto_0
    return v3

    .line 393
    .restart local v2    # "currentPage":I
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 394
    .local v5, "numApps":I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 395
    .local v4, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 396
    .restart local v6    # "numItemsPerPage":I
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 397
    .restart local v0    # "childCount":I
    if-lez v0, :cond_0

    .line 399
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v7, v2, v7

    mul-int/2addr v7, v6

    .line 398
    add-int/2addr v7, v5

    .line 399
    div-int/lit8 v8, v0, 0x2

    .line 398
    add-int v3, v7, v8

    goto :goto_0
.end method

.method private getShortcutPreview(Landroid/content/pm/ResolveInfo;II)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    invoke-virtual {v2}, Lcom/android/launcher2/BitmapCache;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1252
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v2}, Lcom/android/launcher2/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Canvas;

    .line 1253
    .local v15, "c":Landroid/graphics/Canvas;
    if-eqz v4, :cond_0

    .line 1254
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    .line 1255
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-eq v2, v0, :cond_2

    .line 1256
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/BitmapCache;->set(Ljava/lang/Object;)V

    .line 1264
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1267
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/android/launcher/R$dimen;->shortcut_preview_padding_top:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1269
    .local v6, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/android/launcher/R$dimen;->shortcut_preview_padding_left:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 1271
    .local v5, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Lcom/android/launcher/R$dimen;->shortcut_preview_padding_right:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    .line 1273
    .local v18, "paddingRight":I
    sub-int v2, p2, v5

    sub-int v7, v2, v18

    .local v7, "scaledIconWidth":I
    move-object/from16 v2, p0

    move v8, v7

    .line 1275
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1278
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1279
    .local v10, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {v15, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PaintCache;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Paint;

    .line 1281
    .local v17, "p":Landroid/graphics/Paint;
    if-nez v17, :cond_1

    .line 1282
    new-instance v17, Landroid/graphics/Paint;

    .end local v17    # "p":Landroid/graphics/Paint;
    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 1283
    .restart local v17    # "p":Landroid/graphics/Paint;
    new-instance v16, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1284
    .local v16, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1285
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1286
    const/16 v2, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PaintCache;->set(Ljava/lang/Object;)V

    .line 1291
    .end local v16    # "colorMatrix":Landroid/graphics/ColorMatrix;
    :cond_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v4, v2, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1292
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1294
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1296
    return-object v10

    .line 1259
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "paddingLeft":I
    .end local v6    # "paddingTop":I
    .end local v7    # "scaledIconWidth":I
    .end local v10    # "preview":Landroid/graphics/Bitmap;
    .end local v17    # "p":Landroid/graphics/Paint;
    .end local v18    # "paddingRight":I
    :cond_2
    invoke-virtual {v15, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1260
    const/4 v2, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v15, v2, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1261
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private getSleepForPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 1159
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1160
    .local v0, "pageDiff":I
    const/4 v1, 0x0

    mul-int/lit16 v2, v0, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    sget v1, Lcom/android/launcher/R$id;->apps_customize_pane:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1150
    .local v0, "pageDiff":I
    if-gtz v0, :cond_0

    .line 1155
    :goto_0
    return v1

    .line 1152
    :cond_0
    if-gt v0, v1, :cond_1

    move v1, v2

    .line 1153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1155
    goto :goto_0
.end method

.method private getWidgetPageLoadPriority(I)I
    .locals 7
    .param p1, "page"    # I

    .prologue
    .line 1125
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    .line 1126
    .local v4, "toPage":I
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 1127
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    .line 1133
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1134
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    const v1, 0x7fffffff

    .line 1135
    .local v1, "minPageDiff":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1140
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1141
    .local v2, "rawPageDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v2, v5

    return v5

    .line 1136
    .end local v2    # "rawPageDiff":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1137
    .local v3, "task":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v5, v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .locals 28
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "previewImage"    # I
    .param p3, "iconId"    # I
    .param p4, "cellHSpan"    # I
    .param p5, "cellVSpan"    # I
    .param p6, "maxWidth"    # I
    .param p7, "maxHeight"    # I

    .prologue
    .line 1303
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1304
    .local v20, "packageName":Ljava/lang/String;
    if-gez p6, :cond_0

    const p6, 0x7fffffff

    .line 1305
    :cond_0
    if-gez p7, :cond_1

    const p7, 0x7fffffff

    .line 1307
    :cond_1
    const/16 v16, 0x0

    .line 1308
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1310
    if-nez v16, :cond_2

    .line 1311
    const-string v2, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1312
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1311
    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_2
    const/4 v4, 0x0

    .line 1319
    .local v4, "defaultPreview":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_6

    const/16 v27, 0x1

    .line 1320
    .local v27, "widgetPreviewExists":Z
    :goto_0
    if-eqz v27, :cond_7

    .line 1321
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 1322
    .local v12, "bitmapWidth":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1372
    .local v13, "bitmapHeight":I
    :cond_3
    :goto_1
    const/high16 v24, 0x3f800000    # 1.0f

    .line 1373
    .local v24, "scale":F
    move/from16 v0, p6

    if-le v12, v0, :cond_4

    .line 1374
    move/from16 v0, p6

    int-to-float v2, v0

    int-to-float v7, v12

    div-float v24, v2, v7

    .line 1376
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v24, v2

    if-eqz v2, :cond_5

    .line 1377
    int-to-float v2, v12

    mul-float v2, v2, v24

    float-to-int v12, v2

    .line 1378
    int-to-float v2, v13

    mul-float v2, v2, v24

    float-to-int v13, v2

    .line 1382
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1381
    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1385
    .local v9, "preview":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_b

    .line 1386
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1405
    :goto_2
    return-object v9

    .line 1319
    .end local v9    # "preview":Landroid/graphics/Bitmap;
    .end local v12    # "bitmapWidth":I
    .end local v13    # "bitmapHeight":I
    .end local v24    # "scale":F
    .end local v27    # "widgetPreviewExists":Z
    :cond_6
    const/16 v27, 0x0

    goto :goto_0

    .line 1325
    .restart local v27    # "widgetPreviewExists":Z
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ge v0, v2, :cond_8

    const/16 p4, 0x1

    .line 1326
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ge v0, v2, :cond_9

    const/16 p5, 0x1

    .line 1328
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1329
    sget v7, Lcom/android/launcher/R$drawable;->widget_preview_tile:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 1328
    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    .line 1331
    .local v21, "previewDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v23

    .line 1333
    .local v23, "previewDrawableWidth":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v22

    .line 1334
    .local v22, "previewDrawableHeight":I
    mul-int v12, v23, p4

    .line 1335
    .restart local v12    # "bitmapWidth":I
    mul-int v13, v22, p5

    .line 1338
    .restart local v13    # "bitmapHeight":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1337
    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v2}, Lcom/android/launcher2/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Canvas;

    .line 1340
    .local v14, "c":Landroid/graphics/Canvas;
    invoke-virtual {v14, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1341
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1342
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 1343
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 1342
    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1344
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1345
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1348
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1349
    .local v18, "minOffset":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 1350
    .local v25, "smallestSide":I
    move/from16 v0, v25

    int-to-float v2, v0

    .line 1351
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v8, v18, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    .line 1350
    div-float/2addr v2, v7

    .line 1351
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1350
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 1354
    .local v17, "iconScale":F
    const/4 v3, 0x0

    .line 1356
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    move/from16 v0, v23

    int-to-float v2, v0

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    sub-float/2addr v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    float-to-int v5, v2

    .line 1358
    .local v5, "hoffset":I
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    sub-float/2addr v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    float-to-int v6, v2

    .line 1359
    .local v6, "yoffset":I
    if-lez p3, :cond_a

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1361
    :cond_a
    if-eqz v3, :cond_3

    .line 1363
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v7, v2

    .line 1364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v8, v2

    move-object/from16 v2, p0

    .line 1362
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1366
    .end local v5    # "hoffset":I
    .end local v6    # "yoffset":I
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 1389
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "c":Landroid/graphics/Canvas;
    .end local v17    # "iconScale":F
    .end local v18    # "minOffset":I
    .end local v21    # "previewDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v22    # "previewDrawableHeight":I
    .end local v23    # "previewDrawableWidth":I
    .end local v25    # "smallestSide":I
    .restart local v9    # "preview":Landroid/graphics/Bitmap;
    .restart local v24    # "scale":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v2}, Lcom/android/launcher2/CanvasCache;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Canvas;

    .line 1390
    .restart local v14    # "c":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher2/RectCache;

    invoke-virtual {v2}, Lcom/android/launcher2/RectCache;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 1391
    .local v26, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher2/RectCache;

    invoke-virtual {v2}, Lcom/android/launcher2/RectCache;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 1392
    .local v15, "dest":Landroid/graphics/Rect;
    invoke-virtual {v14, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1393
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1394
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v15, v2, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PaintCache;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Paint;

    .line 1397
    .local v19, "p":Landroid/graphics/Paint;
    if-nez v19, :cond_c

    .line 1398
    new-instance v19, Landroid/graphics/Paint;

    .end local v19    # "p":Landroid/graphics/Paint;
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 1399
    .restart local v19    # "p":Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PaintCache;->set(Ljava/lang/Object;)V

    .line 1402
    :cond_c
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v14, v4, v0, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1403
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method private invalidateOnDataChange()V
    .locals 1

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestLayout()V

    .line 1745
    :goto_0
    return-void

    .line 1742
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1743
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData()V

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 17
    .param p1, "task"    # Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .param p2, "data"    # Lcom/android/launcher2/AsyncTaskPageData;

    .prologue
    .line 1513
    if-eqz p1, :cond_0

    .line 1515
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1519
    :cond_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1520
    .local v15, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1521
    .local v13, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1522
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v11, :cond_2

    .line 1549
    :cond_1
    return-void

    .line 1523
    :cond_2
    if-eqz p1, :cond_3

    .line 1525
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1528
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1531
    :cond_3
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1532
    .local v16, "rawInfo":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_5

    move-object/from16 v14, v16

    .line 1533
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1534
    .local v14, "info":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v14}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v10

    .line 1536
    .local v10, "cellSpans":[I
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v2

    .line 1536
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1538
    .local v7, "maxWidth":I
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v3, 0x1

    aget v3, v10, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v2

    .line 1538
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1540
    .local v8, "maxHeight":I
    iget-object v2, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v3, v14, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1541
    const/4 v1, 0x0

    aget v5, v10, v1

    const/4 v1, 0x1

    aget v6, v10, v1

    move-object/from16 v1, p0

    .line 1540
    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1542
    .local v9, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "cellSpans":[I
    .end local v14    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1543
    :cond_5
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_4

    move-object/from16 v14, v16

    .line 1545
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1546
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getShortcutPreview(Landroid/content/pm/ResolveInfo;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 12
    .param p1, "data"    # Lcom/android/launcher2/AsyncTaskPageData;

    .prologue
    const/4 v11, 0x0

    .line 1552
    iget-boolean v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    if-eqz v10, :cond_0

    .line 1553
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    :goto_0
    return-void

    .line 1557
    :cond_0
    :try_start_0
    iget v5, p1, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 1558
    .local v5, "page":I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1560
    .local v4, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    iget-object v2, p1, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1561
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1562
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 1570
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->createHardwareLayer()V

    .line 1571
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidate()V

    .line 1574
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1575
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_3

    .line 1581
    invoke-virtual {p1, v11}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    goto :goto_0

    .line 1563
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewWidget;

    .line 1564
    .local v9, "widget":Lcom/android/launcher2/PagedViewWidget;
    if-eqz v9, :cond_2

    .line 1565
    iget-object v10, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1566
    .local v7, "preview":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v10, v7}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V

    .line 1562
    .end local v7    # "preview":Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1576
    .end local v9    # "widget":Lcom/android/launcher2/PagedViewWidget;
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1577
    .local v8, "task":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v6, v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1578
    .local v6, "pageIndex":I
    invoke-direct {p0, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1580
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    .end local v4    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    .end local v5    # "page":I
    .end local v6    # "pageIndex":I
    .end local v8    # "task":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :catchall_0
    move-exception v10

    .line 1581
    invoke-virtual {p1, v11}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    .line 1582
    throw v10
.end method

.method private preloadWidget(Lcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;

    .prologue
    .line 654
    iget-object v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 655
    .local v1, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 657
    .local v0, "options":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 658
    iput-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 709
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 663
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView$2;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Landroid/os/Bundle;Lcom/android/launcher2/PendingAddWidgetInfo;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 682
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 684
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher2/AppsCustomizePagedView$3;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher2/PendingAddWidgetInfo;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 708
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    .locals 12
    .param p1, "page"    # I
    .param p3, "cellWidth"    # I
    .param p4, "cellHeight"    # I
    .param p5, "cellCountX"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1170
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result v8

    .line 1184
    .local v8, "sleepMs":I
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    .line 1185
    new-instance v5, Lcom/android/launcher2/AppsCustomizePagedView$5;

    invoke-direct {v5, p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView$5;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V

    .line 1200
    new-instance v6, Lcom/android/launcher2/AppsCustomizePagedView$6;

    invoke-direct {v6, p0}, Lcom/android/launcher2/AppsCustomizePagedView$6;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    .line 1184
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 1211
    .local v0, "pageData":Lcom/android/launcher2/AsyncTaskPageData;
    new-instance v9, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1212
    sget-object v1, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    .line 1211
    invoke-direct {v9, p1, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V

    .line 1213
    .local v9, "t":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 1214
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1215
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    return-void

    .line 1171
    .end local v0    # "pageData":Lcom/android/launcher2/AsyncTaskPageData;
    .end local v8    # "sleepMs":I
    .end local v9    # "t":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1172
    .local v10, "task":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v11, v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1173
    .local v11, "taskPage":I
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v11, v1, :cond_1

    .line 1174
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v11, v1, :cond_2

    .line 1175
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1176
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1178
    :cond_2
    invoke-direct {p0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0
.end method

.method private removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1809
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1816
    return-void

    .line 1809
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1810
    .local v0, "pn":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 1811
    .local v1, "removeIndex":I
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 1812
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1813
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1798
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1799
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1806
    return-void

    .line 1800
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1801
    .local v1, "info":Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    .line 1802
    .local v3, "removeIndex":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 1803
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1799
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 1234
    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 1235
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "scale"    # F

    .prologue
    .line 1239
    if-eqz p2, :cond_0

    .line 1240
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1241
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1243
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1244
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1245
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1246
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1248
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "visibility"    # I

    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1062
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1065
    return-void

    .line 1063
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 7
    .param p1, "layout"    # Lcom/android/launcher2/PagedViewCellLayout;

    .prologue
    const/high16 v6, -0x80000000

    .line 1067
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 1068
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 1069
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    .line 1070
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    .line 1069
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 1076
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1078
    .local v1, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1079
    .local v0, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setMinimumWidth(I)V

    .line 1080
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    .line 1081
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1082
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V
    .locals 7
    .param p1, "layout"    # Lcom/android/launcher2/PagedViewGridLayout;

    .prologue
    const/high16 v6, -0x80000000

    .line 1222
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    .line 1223
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    .line 1222
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 1227
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1228
    .local v1, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1229
    .local v0, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 1230
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewGridLayout;->measure(II)V

    .line 1231
    return-void
.end method

.method private updateCurrentTab(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 1043
    .local v0, "tabHost":Lcom/android/launcher2/AppsCustomizeTabHost;
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1046
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt p1, v2, :cond_1

    .line 1047
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1048
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 1055
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1049
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v2, :cond_0

    .line 1050
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1051
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 5

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 436
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$integer;->allAppPages:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 438
    .local v0, "nAllAppPages":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 441
    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 444
    :cond_1
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1766
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1767
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1768
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 1769
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 878
    :goto_0
    return v0

    .line 851
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v1, :cond_2

    .line 852
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    .line 861
    :cond_1
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizePagedView$4;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 876
    const-wide/16 v1, 0x96

    .line 861
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 878
    const/4 v0, 0x1

    goto :goto_0

    .line 853
    :cond_2
    instance-of v1, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v1, :cond_1

    .line 854
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingWidget(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public cleanUpShortPress(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    if-nez v0, :cond_0

    .line 761
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 763
    :cond_0
    return-void
.end method

.method public clearAllWidgetPages()V
    .locals 5

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 986
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 987
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 994
    return-void

    .line 988
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 989
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v3, :cond_1

    .line 990
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 991
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 987
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 622
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1855
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1856
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mWidgets"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1857
    return-void
.end method

.method public getApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 5
    .param p1, "page"    # I

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1910
    .local v0, "count":I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1911
    .local v2, "windowSize":I
    add-int/lit8 v3, p1, -0x2

    sub-int v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1912
    .local v1, "windowMinIndex":I
    return v1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 5
    .param p1, "page"    # I

    .prologue
    .line 1915
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1916
    .local v0, "count":I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1917
    .local v2, "windowSize":I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1918
    add-int/lit8 v4, v0, -0x1

    .line 1917
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1919
    .local v1, "windowMaxIndex":I
    return v1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1924
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    .line 1925
    .local v1, "page":I
    :goto_0
    sget v2, Lcom/android/launcher/R$string;->default_scroll_format:I

    .line 1926
    .local v2, "stringId":I
    const/4 v0, 0x0

    .line 1928
    .local v0, "count":I
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v3, :cond_1

    .line 1929
    sget v2, Lcom/android/launcher/R$string;->apps_customize_apps_scroll_format:I

    .line 1930
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 1937
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1924
    .end local v0    # "count":I
    .end local v1    # "page":I
    .end local v2    # "stringId":I
    :cond_0
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    goto :goto_0

    .line 1932
    .restart local v0    # "count":I
    .restart local v1    # "page":I
    .restart local v2    # "stringId":I
    :cond_1
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int/2addr v1, v3

    .line 1933
    sget v2, Lcom/android/launcher/R$string;->apps_customize_widgets_scroll_format:I

    .line 1934
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_1
.end method

.method getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 9
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p2, "info"    # Lcom/android/launcher2/PendingAddWidgetInfo;

    .prologue
    .line 630
    const/4 v1, 0x0

    .line 631
    .local v1, "options":Landroid/os/Bundle;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 632
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v6, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->spanY:I

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v5, v6, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 633
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 634
    iget-object v6, p2, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v7, 0x0

    .line 633
    invoke-static {v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 636
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 637
    .local v0, "density":F
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v3, v5

    .line 638
    .local v3, "xPaddingDips":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 640
    .local v4, "yPaddingDips":I
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "options":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 641
    .restart local v1    # "options":Landroid/os/Bundle;
    const-string v5, "appWidgetMinWidth"

    .line 642
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    .line 641
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    const-string v5, "appWidgetMinHeight"

    .line 644
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    .line 643
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    const-string v5, "appWidgetMaxWidth"

    .line 646
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    .line 645
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    const-string v5, "appWidgetMaxHeight"

    .line 648
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    .line 647
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    .end local v0    # "density":F
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v3    # "xPaddingDips":I
    .end local v4    # "yPaddingDips":I
    :cond_0
    return-object v1
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1622
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->indexToPage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 1710
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 417
    if-gez p1, :cond_0

    const/4 v1, 0x0

    .line 424
    :goto_0
    return v1

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 420
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 421
    .local v0, "numItemsPerPage":I
    div-int v1, p1, v0

    goto :goto_0

    .line 423
    .end local v0    # "numItemsPerPage":I
    :cond_1
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 424
    .restart local v0    # "numItemsPerPage":I
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 408
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 411
    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public iconPressed(Lcom/android/launcher2/PagedViewIcon;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher2/PagedViewIcon;

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V

    .line 1892
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    .line 1893
    return-void
.end method

.method protected indexToPage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 370
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->init()V

    .line 371
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCenterPagesVertically:Z

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 375
    .local v1, "r":Landroid/content/res/Resources;
    sget v2, Lcom/android/launcher/R$integer;->config_appsCustomizeDragSlopeThreshold:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    .line 376
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 571
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 572
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    instance-of v6, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v6, :cond_3

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 579
    .local v0, "appInfo":Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v6, :cond_2

    .line 580
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewIcon;->lockDrawableState()V

    .line 586
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 587
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v7, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p1, v7, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    .end local v0    # "appInfo":Lcom/android/launcher2/ApplicationInfo;
    :cond_3
    instance-of v6, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v6, :cond_0

    .line 591
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v6, :cond_4

    .line 592
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 594
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/launcher/R$string;->long_press_widget_to_add:I

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 596
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 599
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/launcher/R$dimen;->dragViewOffsetY:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v2, v6

    .line 600
    .local v2, "offsetY":F
    sget v6, Lcom/android/launcher/R$id;->widget_preview:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 601
    .local v3, "p":Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 602
    .local v1, "bounce":Landroid/animation/AnimatorSet;
    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v2, v7, v9

    invoke-static {v3, v6, v7}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 603
    .local v5, "tyuAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x7d

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    const-string v6, "translationY"

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v3, v6, v7}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 605
    .local v4, "tydAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 606
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 607
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 608
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method protected onDataReady(II)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    .line 449
    const/4 v12, 0x2

    .line 448
    if-ne v11, v12, :cond_4

    const/4 v5, 0x1

    .line 450
    .local v5, "isLandscape":Z
    :goto_0
    const v6, 0x7fffffff

    .line 451
    .local v6, "maxCellCountX":I
    const v7, 0x7fffffff

    .line 452
    .local v7, "maxCellCountY":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 453
    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v6

    .line 455
    :goto_1
    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v7

    .line 458
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_1

    .line 459
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 462
    :cond_1
    move v8, v7

    .line 463
    .local v8, "maxWidgetCellCountY":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutWidthGap:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 470
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    .line 471
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    .line 470
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 472
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v6, v7}, Lcom/android/launcher2/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 473
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    .line 474
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    .line 475
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 479
    .local v10, "widthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 480
    .local v2, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v6, v8}, Lcom/android/launcher2/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 481
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11, v10, v2}, Lcom/android/launcher2/PagedViewCellLayout;->measure(II)V

    .line 482
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v3

    .line 485
    .local v3, "host":Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v4

    .line 488
    .local v4, "hostIsTransitioning":Z
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v9

    .line 489
    .local v9, "page":I
    const/4 v11, 0x0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 494
    if-nez v4, :cond_3

    .line 495
    new-instance v11, Lcom/android/launcher2/AppsCustomizePagedView$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher2/AppsCustomizePagedView$1;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 502
    :cond_3
    return-void

    .line 448
    .end local v2    # "heightSpec":I
    .end local v3    # "host":Lcom/android/launcher2/AppsCustomizeTabHost;
    .end local v4    # "hostIsTransitioning":Z
    .end local v5    # "isLandscape":Z
    .end local v6    # "maxCellCountX":I
    .end local v7    # "maxCellCountY":I
    .end local v8    # "maxWidgetCellCountY":I
    .end local v9    # "page":I
    .end local v10    # "widthSpec":I
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 454
    .restart local v5    # "isLandscape":Z
    .restart local v6    # "maxCellCountX":I
    .restart local v7    # "maxCellCountY":I
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v6

    goto/16 :goto_1

    .line 456
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v7

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 980
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 981
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 982
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 936
    if-eqz p3, :cond_0

    .line 963
    :goto_0
    return-void

    .line 938
    :cond_0
    invoke-direct {p0, p1, v5, p4}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    .line 942
    if-nez p4, :cond_3

    .line 943
    const/4 v3, 0x0

    .line 944
    .local v3, "showOutOfSpaceMessage":Z
    instance-of v6, p1, Lcom/android/launcher2/Workspace;

    if-eqz v6, :cond_1

    .line 945
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, "currentScreen":I
    move-object v4, p1

    .line 946
    check-cast v4, Lcom/android/launcher2/Workspace;

    .line 947
    .local v4, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 948
    .local v2, "layout":Lcom/android/launcher2/CellLayout;
    iget-object v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 949
    .local v1, "itemInfo":Lcom/android/launcher2/ItemInfo;
    if-eqz v2, :cond_1

    .line 950
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->calculateSpans(Lcom/android/launcher2/ItemInfo;)V

    .line 952
    const/4 v6, 0x0

    iget v7, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v5

    .line 955
    .end local v0    # "currentScreen":I
    .end local v1    # "itemInfo":Lcom/android/launcher2/ItemInfo;
    .end local v2    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v4    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 956
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 959
    :cond_2
    iput-boolean v5, p2, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 961
    .end local v3    # "showOutOfSpaceMessage":Z
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 962
    iput-boolean v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    goto :goto_0

    .line 952
    .restart local v0    # "currentScreen":I
    .restart local v1    # "itemInfo":Lcom/android/launcher2/ItemInfo;
    .restart local v2    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v3    # "showOutOfSpaceMessage":Z
    .restart local v4    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onFlingToDeleteCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 968
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    .line 969
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 970
    iput-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 971
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 613
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 5
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v2, 0x0

    .line 920
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    .line 921
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 924
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 925
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 928
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 929
    if-eqz p3, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 930
    return-void

    .line 921
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AsyncTaskPageData;

    .line 922
    .local v0, "d":Lcom/android/launcher2/AsyncTaskPageData;
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    goto :goto_0

    .line 925
    .end local v0    # "d":Lcom/android/launcher2/AsyncTaskPageData;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 926
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 929
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    .line 905
    if-eqz p3, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 908
    :cond_0
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 912
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 916
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 522
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 523
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 524
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 525
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->setDataIsReady()V

    .line 527
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 528
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onDataReady(II)V

    .line 532
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 533
    return-void
.end method

.method public onPackagesUpdated()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 537
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v7

    .line 540
    .local v7, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v4, "shortcutsIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 542
    .local v3, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 561
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 563
    new-instance v9, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v9, v10}, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 562
    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 564
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 565
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 566
    return-void

    .line 542
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    .line 543
    .local v6, "widget":Landroid/appwidget/AppWidgetProviderInfo;
    iget v9, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v9, :cond_2

    iget v9, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v9, :cond_2

    .line 545
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v9, v6}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    .line 546
    .local v5, "spanXY":[I
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v9, v6}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    .line 547
    .local v1, "minSpanXY":[I
    aget v9, v5, v12

    aget v10, v1, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 548
    .local v0, "minSpanX":I
    aget v9, v5, v13

    aget v10, v1, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 549
    .local v2, "minSpanY":I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v9

    if-gt v0, v9, :cond_1

    .line 550
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v9

    if-gt v2, v9, :cond_1

    .line 551
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_1
    const-string v9, "AppsCustomizePagedView"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Widget "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " can not fit on this device ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 554
    iget v11, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 553
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 557
    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanXY":[I
    .end local v2    # "minSpanY":I
    .end local v5    # "spanXY":[I
    :cond_2
    const-string v9, "AppsCustomizePagedView"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Widget "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has invalid dimensions ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 558
    iget v11, v6, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 557
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 1715
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 1716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1719
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1720
    return-void
.end method

.method public onShortPress(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 719
    :cond_0
    new-instance v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 720
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->preloadWidget(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 721
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1702
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    .line 1703
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1818
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1819
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1820
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 1821
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 1834
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1836
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 1837
    .local v0, "tabHost":Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1838
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1839
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1840
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 1844
    :cond_0
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-eqz v2, :cond_1

    .line 1845
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(I)V

    .line 1847
    :cond_1
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V

    .line 1898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    .line 1900
    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 430
    if-gez p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 14
    .param p1, "screenCenter"    # I

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 1634
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->screenScrolled(I)V

    .line 1636
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v10

    if-lt v1, v10, :cond_0

    .line 1699
    return-void

    .line 1637
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1638
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 1639
    invoke-virtual {p0, p1, v8, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .line 1642
    .local v6, "scrollProgress":F
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1643
    .local v2, "interpolatedProgress":F
    sub-float v10, v9, v2

    .line 1644
    sget v11, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v11, v2

    .line 1643
    add-float v5, v10, v11

    .line 1645
    .local v5, "scale":F
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v7, v10, v11

    .line 1649
    .local v7, "translationX":F
    cmpg-float v10, v6, v12

    if-gez v10, :cond_3

    .line 1650
    cmpg-float v10, v6, v12

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 1651
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v11, v9, v11

    .line 1650
    invoke-virtual {v10, v11}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 1657
    .local v0, "alpha":F
    :goto_1
    iget v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDensity:F

    sget v11, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 1658
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1659
    .local v4, "pageWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1662
    .local v3, "pageHeight":I
    if-nez v1, :cond_4

    cmpg-float v10, v6, v12

    if-gez v10, :cond_4

    .line 1664
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1665
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1666
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1667
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1669
    const/4 v7, 0x0

    .line 1685
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 1686
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1687
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1688
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1692
    cmpl-float v10, v0, v12

    if-nez v10, :cond_6

    .line 1693
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    .end local v0    # "alpha":F
    .end local v2    # "interpolatedProgress":F
    .end local v3    # "pageHeight":I
    .end local v4    # "pageWidth":I
    .end local v5    # "scale":F
    .end local v6    # "scrollProgress":F
    .end local v7    # "translationX":F
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .restart local v2    # "interpolatedProgress":F
    .restart local v5    # "scale":F
    .restart local v6    # "scrollProgress":F
    .restart local v7    # "translationX":F
    :cond_2
    move v0, v9

    .line 1651
    goto :goto_1

    .line 1654
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v11, v9, v6

    invoke-virtual {v10, v11}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .restart local v0    # "alpha":F
    goto :goto_1

    .line 1670
    .restart local v3    # "pageHeight":I
    .restart local v4    # "pageWidth":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_5

    cmpl-float v10, v6, v12

    if-lez v10, :cond_5

    .line 1672
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    sub-float v10, v9, v10

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1673
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 1674
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1675
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1677
    const/4 v7, 0x0

    .line 1678
    goto :goto_2

    .line 1679
    :cond_5
    int-to-float v10, v3

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotY(F)V

    .line 1680
    int-to-float v10, v4

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 1681
    invoke-virtual {v8, v12}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2

    .line 1694
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1695
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1749
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1751
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1752
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 1753
    return-void
.end method

.method public setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 2
    .param p1, "type"    # Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .prologue
    const/4 v1, 0x1

    .line 1016
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 1017
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 1019
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidatePageData(IZ)V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p2, "dragController"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 1726
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 1727
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 1728
    return-void
.end method

.method showAllAppsCling()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 505
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iput-boolean v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    .line 508
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 509
    .local v0, "offset":[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellPosition(II)[I

    move-result-object v1

    .line 510
    .local v1, "pos":[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 513
    aget v2, v1, v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 514
    aget v4, v0, v6

    add-int/2addr v3, v4

    .line 513
    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 515
    aget v2, v1, v5

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/DragLayer;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 516
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->showFirstRunAllAppsCling([I)V

    .line 518
    .end local v0    # "offset":[I
    .end local v1    # "pos":[I
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1024
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;->snapToPage(III)V

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateCurrentTab(I)V

    .line 1028
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1029
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1039
    return-void

    .line 1030
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1031
    .local v2, "task":Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v1, v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1032
    .local v1, "pageIndex":I
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v1, v3, :cond_2

    .line 1033
    :cond_1
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    if-gt v1, v3, :cond_3

    .line 1034
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1036
    :cond_3
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 1882
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1883
    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 17
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1086
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountY:I

    mul-int v9, v13, v14

    .line 1087
    .local v9, "numCells":I
    mul-int v10, p1, v9

    .line 1088
    .local v10, "startIndex":I
    add-int v13, v10, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1089
    .local v1, "endIndex":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1091
    .local v8, "layout":Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 1092
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    .local v4, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    move v2, v10

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1117
    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 1118
    return-void

    .line 1095
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ApplicationInfo;

    .line 1096
    .local v6, "info":Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1097
    sget v14, Lcom/android/launcher/R$layout;->apps_customize_application:I

    const/4 v15, 0x0

    .line 1096
    invoke-virtual {v13, v14, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewIcon;

    .line 1098
    .local v3, "icon":Lcom/android/launcher2/PagedViewIcon;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v6, v13, v0}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V

    .line 1099
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1100
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1101
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1102
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1104
    sub-int v5, v2, v10

    .line 1105
    .local v5, "index":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    rem-int v11, v5, v13

    .line 1106
    .local v11, "x":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCellCountX:I

    div-int v12, v5, v13

    .line 1107
    .local v12, "y":I
    const/4 v13, -0x1

    new-instance v14, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v12, v15, v0}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v8, v3, v13, v2, v14}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 1109
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v13, v6, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    if-nez v2, :cond_1

    .line 1113
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewIcon;->requestFocus()Z

    .line 1094
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1612
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_0

    .line 1613
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 1617
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1587
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAllViews()V

    .line 1588
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1590
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1591
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    if-lt v2, v4, :cond_0

    .line 1599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt v1, v4, :cond_1

    .line 1607
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentPage(I)V

    .line 1608
    return-void

    .line 1592
    .end local v1    # "i":I
    :cond_0
    new-instance v3, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    .line 1593
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    .line 1592
    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1594
    .local v3, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V

    .line 1595
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 1596
    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1595
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1600
    .end local v3    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    .restart local v1    # "i":I
    :cond_1
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1601
    .local v3, "layout":Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1602
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->addView(Landroid/view/View;)V

    .line 1599
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 24
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v19, v2, v3

    .line 1412
    .local v19, "numItemsPerPage":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    .local v9, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v11

    .line 1414
    .local v11, "contentWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    sub-int v2, v11, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    sub-int/2addr v2, v3

    .line 1415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    mul-int/2addr v3, v7

    .line 1414
    sub-int/2addr v2, v3

    .line 1415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    .line 1414
    div-int v4, v2, v3

    .line 1416
    .local v4, "cellWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getContentHeight()I

    move-result v10

    .line 1417
    .local v10, "contentHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    sub-int v2, v10, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    sub-int/2addr v2, v3

    .line 1418
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    mul-int/2addr v3, v7

    .line 1417
    sub-int/2addr v2, v3

    .line 1418
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    .line 1417
    div-int v5, v2, v3

    .line 1421
    .local v5, "cellHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v2, p1, v2

    mul-int v20, v2, v19

    .line 1422
    .local v20, "offset":I
    move/from16 v13, v20

    .local v13, "i":I
    :goto_0
    add-int v2, v20, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v13, v2, :cond_0

    .line 1427
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1428
    .local v6, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 1429
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v13, v2, :cond_1

    .line 1482
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$7;

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/AppsCustomizePagedView$7;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;IILcom/android/launcher2/PagedViewGridLayout;ZILjava/util/ArrayList;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1508
    return-void

    .line 1423
    .end local v6    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1430
    .restart local v6    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_1
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 1431
    .local v21, "rawInfo":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1432
    .local v12, "createItemInfo":Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1433
    sget v3, Lcom/android/launcher/R$layout;->apps_customize_widget:I

    const/4 v7, 0x0

    .line 1432
    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/PagedViewWidget;

    .line 1434
    .local v23, "widget":Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_5

    move-object/from16 v14, v21

    .line 1436
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1437
    .local v14, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v12, Lcom/android/launcher2/PendingAddWidgetInfo;

    .end local v12    # "createItemInfo":Lcom/android/launcher2/PendingAddItemInfo;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v14, v2, v3}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1440
    .restart local v12    # "createItemInfo":Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v22

    .line 1441
    .local v22, "spanXY":[I
    const/4 v2, 0x0

    aget v2, v22, v2

    iput v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    .line 1442
    const/4 v2, 0x1

    aget v2, v22, v2

    iput v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v18

    .line 1444
    .local v18, "minSpanXY":[I
    const/4 v2, 0x0

    aget v2, v18, v2

    iput v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->minSpanX:I

    .line 1445
    const/4 v2, 0x1

    aget v2, v18, v2

    iput v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->minSpanY:I

    .line 1447
    const/4 v2, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v2, v1}, Lcom/android/launcher2/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[I)V

    .line 1448
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1449
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/PagedViewWidget;->setShortPressListener(Lcom/android/launcher2/PagedViewWidget$ShortPressListener;)V

    .line 1460
    .end local v14    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "minSpanXY":[I
    .end local v22    # "spanXY":[I
    :cond_2
    :goto_2
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1462
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1463
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1466
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    rem-int v15, v13, v2

    .line 1467
    .local v15, "ix":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v16, v13, v2

    .line 1468
    .local v16, "iy":I
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    .line 1469
    sget-object v2, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v16

    invoke-static {v0, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 1470
    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v15, v3}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    .line 1468
    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1471
    .local v17, "lp":Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 1472
    move-object/from16 v0, v17

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1473
    const/16 v2, 0x33

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1474
    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1475
    :cond_3
    if-lez v16, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1476
    :cond_4
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1450
    .end local v15    # "ix":I
    .end local v16    # "iy":I
    .end local v17    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_2

    move-object/from16 v14, v21

    .line 1452
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1453
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    new-instance v12, Lcom/android/launcher2/PendingAddShortcutInfo;

    .end local v12    # "createItemInfo":Lcom/android/launcher2/PendingAddItemInfo;
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v12, v2}, Lcom/android/launcher2/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 1454
    .restart local v12    # "createItemInfo":Lcom/android/launcher2/PendingAddItemInfo;
    const/4 v2, 0x1

    iput v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    .line 1455
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1456
    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iput-object v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v14}, Lcom/android/launcher2/PagedViewWidget;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 1458
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1827
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1828
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1829
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 1830
    return-void
.end method
