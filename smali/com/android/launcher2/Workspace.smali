.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$CurrentPageListener;,
        Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ReorderAlarmListener;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field private static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field private static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field private static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field private static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final DEFAULT_CELL_COUNT_X:I = 0x4

.field private static final DEFAULT_CELL_COUNT_Y:I = 0x4

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final REORDER_TIMEOUT:I = 0xfa

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;


# instance fields
.field private listener:Lcom/android/launcher2/Workspace$CurrentPageListener;

.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field protected mBackCenter:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCameraDistance:I

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field protected mCurPosY:F

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private mDropToLayout:Lcom/android/launcher2/CellLayout;

.field private final mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxDistanceForFolderCreation:F

.field private mNewAlphas:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphas:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private mOriginalPageSpacing:I

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverscrollFade:F

.field private mOverscrollTransformsSet:Z

.field protected mPosY:F

.field private final mReorderAlarm:Lcom/android/launcher2/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTranslationX:F

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field private mSpringLoadedPageSpacing:I

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

.field workSpaceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 127
    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackCenter:I

    .line 95
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 101
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 102
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 103
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 105
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 122
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 123
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 124
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    .line 132
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 136
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 141
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 149
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 150
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    .line 151
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 152
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 153
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 154
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 155
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 167
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 168
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 170
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 171
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 172
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 175
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 177
    new-instance v8, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v8}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 178
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 179
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 180
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    .line 181
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    .line 182
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 191
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 194
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 203
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 204
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 205
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 206
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 207
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 208
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 231
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 232
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 233
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 236
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 262
    new-instance v8, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 666
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->workSpaceState:I

    .line 1659
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 289
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setFocusable(Z)V

    .line 291
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 292
    iget v8, p0, Lcom/android/launcher2/Workspace;->mPageSpacing:I

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    .line 294
    new-instance v8, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v8, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    move-object v8, p1

    .line 298
    check-cast v8, Lcom/android/launcher2/Launcher;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 300
    .local v7, "res":Landroid/content/res/Resources;
    sget v8, Lcom/android/launcher/R$bool;->config_workspaceFadeAdjacentScreens:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 301
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    .line 302
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 304
    const/4 v3, 0x4

    .line 305
    .local v3, "cellCountX":I
    const/4 v4, 0x4

    .line 308
    .local v4, "cellCountY":I
    sget-object v8, Lcom/android/launcher/R$styleable;->Workspace:[I

    const/4 v9, 0x0

    .line 307
    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 310
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10102eb

    aput v10, v8, v9

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 317
    .local v2, "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 319
    .local v1, "actionBarHeight":F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 320
    .local v6, "minDims":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 321
    .local v5, "maxDims":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 323
    const/4 v3, 0x1

    .line 324
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v8

    iget v9, v6, Landroid/graphics/Point;->x:I

    if-le v8, v9, :cond_2

    .line 328
    const/4 v4, 0x1

    .line 329
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    .line 330
    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    .line 329
    cmpg-float v8, v8, v9

    if-lez v8, :cond_3

    .line 336
    .end local v1    # "actionBarHeight":F
    .end local v2    # "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    .end local v5    # "maxDims":Landroid/graphics/Point;
    .end local v6    # "minDims":Landroid/graphics/Point;
    :cond_0
    sget v8, Lcom/android/launcher/R$integer;->config_workspaceSpringLoadShrinkPercentage:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    .line 335
    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    .line 338
    sget v8, Lcom/android/launcher/R$dimen;->workspace_spring_loaded_page_spacing:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 337
    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    .line 339
    sget v8, Lcom/android/launcher/R$integer;->config_cameraDistance:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mCameraDistance:I

    .line 342
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 343
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 344
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 345
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    sget v8, Lcom/android/launcher/R$integer;->canloop:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mCanLoop:Z

    .line 348
    sget v8, Lcom/android/launcher/R$integer;->noScrollPage:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mNoScrollPage:I

    .line 349
    sget v8, Lcom/android/launcher/R$integer;->backcenter:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackCenter:I

    .line 350
    invoke-static {p0}, Lcom/android/launcher2/DefaultWorkspace;->SetWorkspace(Lcom/android/launcher2/Workspace;)V

    .line 352
    invoke-virtual {p0, p0}, Lcom/android/launcher2/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 354
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 355
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 360
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 364
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setImportantForAccessibility(I)V

    .line 366
    :cond_1
    return-void

    .line 325
    .restart local v1    # "actionBarHeight":F
    .restart local v2    # "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    .restart local v5    # "maxDims":Landroid/graphics/Point;
    .restart local v6    # "minDims":Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 331
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "actionBarHeight":F
    .end local v2    # "actionBarSizeTypedArray":Landroid/content/res/TypedArray;
    .end local v5    # "maxDims":Landroid/graphics/Point;
    .end local v6    # "minDims":Landroid/graphics/Point;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/Workspace;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/launcher2/Workspace;I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    return-void
.end method

.method static synthetic access$11(Lcom/android/launcher2/Workspace;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/launcher2/Workspace;)[F
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$14(Lcom/android/launcher2/Workspace;)[F
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$15(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$16(Lcom/android/launcher2/Workspace;Z)V
    .locals 0

    .prologue
    .line 1530
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method static synthetic access$17(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher2/Workspace;)[F
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher2/Workspace;)[I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher2/Workspace;IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 1

    .prologue
    .line 3518
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/launcher2/Workspace;[I)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-void
.end method

.method static synthetic access$9(Lcom/android/launcher2/Workspace;I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    return-void
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 4
    .param p1, "finalAlpha"    # F
    .param p2, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1251
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1253
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1254
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1256
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 1257
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1258
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1260
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1261
    .local v0, "startAlpha":F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1262
    if-eqz p2, :cond_4

    .line 1263
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1264
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1269
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1270
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1271
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1273
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2705
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 2706
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 2707
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 2709
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 2701
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2702
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2
    .param p1, "cancelAlarm"    # Z

    .prologue
    const/4 v1, -0x1

    .line 2713
    if-eqz p1, :cond_0

    .line 2714
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2716
    :cond_0
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 2717
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 2718
    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 6
    .param p1, "page"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1075
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 1076
    .local v0, "layoutScale":F
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1077
    .local v1, "scaled":I
    iput v5, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 1079
    .local v2, "unscaled":F
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 1080
    if-lez v1, :cond_0

    .line 1081
    mul-float v3, v5, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 1085
    :goto_0
    return-void

    .line 1083
    :cond_0
    iput v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "orig"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "clipAlpha"    # Z

    .prologue
    .line 2016
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060012

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 2017
    .local v5, "outlineColor":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2018
    .local v3, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2020
    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v12, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2021
    .local v12, "src":Landroid/graphics/Rect;
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2022
    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 2021
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 2023
    .local v9, "scaleFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v11, v2

    .line 2024
    .local v11, "scaledWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v10, v2

    .line 2025
    .local v10, "scaledHeight":I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v4, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2028
    .local v8, "dst":Landroid/graphics/Rect;
    sub-int v2, p4, v11

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p5, v10

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2030
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v12, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2031
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object v4, p2

    move v6, v5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 2033
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2035
    return-object v3
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2001
    .local v1, "outlineColor":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2000
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2003
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2004
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2005
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p2, v1, v1}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2006
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2007
    return-object v0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "destCanvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I
    .param p4, "pruneToDrawable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1913
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1914
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1916
    const/4 v2, 0x0

    .line 1918
    .local v2, "textVisible":Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1919
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    if-eqz p4, :cond_2

    move-object v4, p1

    .line 1923
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 1924
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 1925
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v6

    .line 1927
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1928
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1929
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1963
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1964
    return-void

    .line 1931
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_4

    move-object v4, p1

    .line 1934
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 1935
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 1936
    const/4 v2, 0x1

    .line 1947
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1951
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_6

    .line 1952
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1956
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1959
    if-eqz v2, :cond_1

    .line 1960
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v7}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 1938
    .restart local p1    # "v":Landroid/view/View;
    :cond_4
    instance-of v4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v4, :cond_5

    move-object v3, p1

    .line 1939
    check-cast v3, Lcom/android/launcher2/BubbleTextView;

    .line 1940
    .local v3, "tv":Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    .line 1941
    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1940
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1942
    .end local v3    # "tv":Lcom/android/launcher2/BubbleTextView;
    :cond_5
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 1943
    check-cast v3, Landroid/widget/TextView;

    .line 1944
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1945
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1944
    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1954
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_6
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_2
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 7

    .prologue
    .line 1548
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_1

    .line 1549
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    .line 1550
    .local v4, "screenCount":I
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getVisiblePages([I)V

    .line 1551
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 1552
    .local v2, "leftScreen":I
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 1553
    .local v3, "rightScreen":I
    if-ne v2, v3, :cond_0

    .line 1555
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_2

    .line 1556
    add-int/lit8 v3, v3, 0x1

    .line 1561
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v4, :cond_3

    .line 1567
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v4, :cond_6

    .line 1574
    .end local v0    # "i":I
    .end local v2    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenCount":I
    :cond_1
    return-void

    .line 1557
    .restart local v2    # "leftScreen":I
    .restart local v3    # "rightScreen":I
    .restart local v4    # "screenCount":I
    :cond_2
    if-lez v2, :cond_0

    .line 1558
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1562
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1563
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    if-gt v2, v0, :cond_4

    if-gt v0, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1564
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    .line 1561
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1568
    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1569
    .restart local v1    # "layout":Lcom/android/launcher2/CellLayout;
    if-gt v2, v0, :cond_7

    if-gt v0, v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1570
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->enableHardwareLayers()V

    .line 1567
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;
    .locals 10
    .param p1, "dragView"    # Lcom/android/launcher2/DragView;
    .param p2, "originX"    # F
    .param p3, "originY"    # F
    .param p4, "exact"    # Z

    .prologue
    .line 2840
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 2841
    .local v5, "screenCount":I
    const/4 v0, 0x0

    .line 2842
    .local v0, "bestMatchingScreen":Lcom/android/launcher2/CellLayout;
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 2844
    .local v6, "smallestDistSoFar":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_1

    move-object v2, v0

    .line 2878
    :cond_0
    return-object v2

    .line 2845
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2847
    .local v2, "cl":Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x2

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput p2, v7, v8

    const/4 v8, 0x1

    aput p3, v7, v8

    .line 2850
    .local v7, "touchXy":[F
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2851
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2853
    const/4 v8, 0x0

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    .line 2854
    const/4 v8, 0x1

    aget v8, v7, v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-lez v8, :cond_0

    .line 2858
    :cond_2
    if-nez p4, :cond_3

    .line 2860
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2861
    .local v1, "cellLayoutCenter":[F
    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 2862
    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v1, v8

    .line 2863
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 2865
    const/4 v8, 0x0

    aput p2, v7, v8

    .line 2866
    const/4 v8, 0x1

    aput p3, v7, v8

    .line 2870
    invoke-static {v7, v1}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v3

    .line 2872
    .local v3, "dist":F
    cmpg-float v8, v3, v6

    if-gez v8, :cond_3

    .line 2873
    move v6, v3

    .line 2874
    move-object v0, v2

    .line 2844
    .end local v1    # "cellLayoutCenter":[F
    .end local v3    # "dist":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p6, "recycle"    # [I

    .prologue
    .line 3520
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method static getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;
    .locals 14
    .param p0, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p1, "orientation"    # I

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2571
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 2572
    .local v7, "display":Landroid/view/Display;
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 2573
    .local v13, "smallestSize":Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 2574
    .local v8, "largestSize":Landroid/graphics/Point;
    invoke-virtual {v7, v13, v8}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2575
    if-nez p1, :cond_1

    .line 2576
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2577
    sget v0, Lcom/android/launcher/R$dimen;->workspace_left_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2578
    .local v10, "paddingLeft":I
    sget v0, Lcom/android/launcher/R$dimen;->workspace_right_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2579
    .local v11, "paddingRight":I
    sget v0, Lcom/android/launcher/R$dimen;->workspace_top_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2580
    .local v12, "paddingTop":I
    sget v0, Lcom/android/launcher/R$dimen;->workspace_bottom_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2581
    .local v9, "paddingBottom":I
    iget v0, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v10

    sub-int v2, v0, v11

    .line 2582
    .local v2, "width":I
    iget v0, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    sub-int v3, v0, v9

    .line 2583
    .local v3, "height":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2584
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2585
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    .line 2584
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2588
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    :cond_0
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2604
    :goto_0
    return-object v0

    .line 2589
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2590
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 2591
    sget v0, Lcom/android/launcher/R$dimen;->workspace_left_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2592
    .restart local v10    # "paddingLeft":I
    sget v0, Lcom/android/launcher/R$dimen;->workspace_right_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2593
    .restart local v11    # "paddingRight":I
    sget v0, Lcom/android/launcher/R$dimen;->workspace_top_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2594
    .restart local v12    # "paddingTop":I
    sget v0, Lcom/android/launcher/R$dimen;->workspace_bottom_padding_land:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2595
    .restart local v9    # "paddingBottom":I
    iget v0, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v10

    sub-int v2, v0, v11

    .line 2596
    .restart local v2    # "width":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    sub-int v3, v0, v9

    .line 2597
    .restart local v3    # "height":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2598
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2599
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    .line 2598
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2602
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    goto :goto_0

    .line 2604
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "dragView"    # Lcom/android/launcher2/DragView;
    .param p6, "recycle"    # [F

    .prologue
    .line 2888
    if-nez p6, :cond_0

    .line 2889
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 2896
    .local v1, "res":[F
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher/R$dimen;->dragViewOffsetX:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 2897
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher/R$dimen;->dragViewOffsetY:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 2903
    sub-int v0, p1, p3

    .line 2904
    .local v0, "left":I
    sub-int v2, p2, p4

    .line 2907
    .local v2, "top":I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2908
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2910
    return-object v1

    .line 2891
    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p6

    .restart local v1    # "res":[F
    goto :goto_0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V
    .locals 12
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher2/DragView;
    .param p4, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p5, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "external"    # Z
    .param p8, "scale"    # Z

    .prologue
    .line 3377
    move-object/from16 v0, p5

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3378
    .local v6, "spanX":I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3380
    .local v7, "spanY":I
    const/4 v1, 0x0

    aget v4, p6, v1

    const/4 v1, 0x1

    aget v5, p6, v1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 3381
    .local v11, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget v2, v11, Landroid/graphics/Rect;->left:I

    aput v2, p1, v1

    .line 3382
    const/4 v1, 0x1

    iget v2, v11, Landroid/graphics/Rect;->top:I

    aput v2, p1, v1

    .line 3384
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3386
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v8

    .line 3387
    .local v8, "cellLayoutScale":F
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3391
    if-eqz p8, :cond_0

    .line 3392
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 3393
    .local v9, "dragViewScaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 3401
    .local v10, "dragViewScaleY":F
    :goto_0
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3402
    const/4 v1, 0x1

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3404
    const/4 v1, 0x0

    mul-float v2, v9, v8

    aput v2, p2, v1

    .line 3405
    const/4 v1, 0x1

    mul-float v2, v10, v8

    aput v2, p2, v1

    .line 3406
    return-void

    .line 3395
    .end local v9    # "dragViewScaleX":F
    .end local v10    # "dragViewScaleY":F
    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    .line 3396
    .restart local v9    # "dragViewScaleX":F
    const/high16 v10, 0x3f800000    # 1.0f

    .restart local v10    # "dragViewScaleY":F
    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 599
    .local v1, "page":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 600
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 601
    .local v0, "localXY":[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 602
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 603
    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 602
    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 605
    .end local v0    # "localXY":[F
    :goto_0
    return v2

    .restart local v0    # "localXY":[F
    :cond_0
    move v2, v3

    .line 602
    goto :goto_0

    .end local v0    # "localXY":[F
    :cond_1
    move v2, v3

    .line 605
    goto :goto_0
.end method

.method private initAnimationArrays()V
    .locals 2

    .prologue
    .line 1693
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1694
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    .line 1708
    :goto_0
    return-void

    .line 1695
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    .line 1696
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    .line 1697
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    .line 1698
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    .line 1699
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    .line 1700
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    .line 1701
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    .line 1702
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    .line 1703
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    .line 1704
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    .line 1705
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    .line 1706
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    .line 1707
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2914
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 2915
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-nez v0, :cond_0

    .line 2914
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2918
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V
    .locals 10
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "targetLayout"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "dragOverView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3047
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v6

    .line 3050
    .local v6, "userFolderPending":Z
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    .line 3051
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3052
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 3053
    new-instance v1, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;

    aget v2, p3, v5

    aget v3, p3, v8

    .line 3052
    invoke-direct {v1, p0, p2, v2, v3}, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 3054
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 3078
    .end local p5    # "dragOverView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3059
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v7

    .line 3061
    .local v7, "willAddToFolder":Z
    if-eqz v7, :cond_3

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v0, :cond_3

    .line 3062
    check-cast p5, Lcom/android/launcher2/FolderIcon;

    .end local p5    # "dragOverView":Landroid/view/View;
    iput-object p5, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 3063
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3064
    if-eqz p2, :cond_2

    .line 3065
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 3067
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_0

    .line 3071
    .restart local p5    # "dragOverView":Landroid/view/View;
    :cond_3
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v9, :cond_4

    if-nez v7, :cond_4

    .line 3072
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 3074
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v8, :cond_0

    if-nez v6, :cond_0

    .line 3075
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .locals 6
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p4, "insertAtFirst"    # Z

    .prologue
    .line 3169
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 3170
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
    .locals 55
    .param p1, "touchXY"    # [I
    .param p2, "dragInfo"    # Ljava/lang/Object;
    .param p3, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p4, "insertAtFirst"    # Z
    .param p5, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 3182
    new-instance v50, Lcom/android/launcher2/Workspace$8;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;)V

    .local v50, "exitSpringLoadedRunnable":Ljava/lang/Runnable;
    move-object/from16 v30, p2

    .line 3189
    check-cast v30, Lcom/android/launcher2/ItemInfo;

    .line 3190
    .local v30, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3191
    .local v5, "spanX":I
    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3192
    .local v6, "spanY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 3193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v5, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 3194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 3197
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3198
    const/16 v2, -0x65

    .line 3197
    :goto_0
    int-to-long v0, v2

    move-wide/from16 v26, v0

    .line 3200
    .local v26, "container":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v28

    .line 3201
    .local v28, "screen":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v0, v28

    if-eq v0, v2, :cond_1

    .line 3202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_1

    .line 3203
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3206
    :cond_1
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v2, :cond_d

    move-object/from16 v24, p2

    .line 3207
    check-cast v24, Lcom/android/launcher2/PendingAddItemInfo;

    .line 3209
    .local v24, "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    const/16 v51, 0x1

    .line 3210
    .local v51, "findNearestVacantCell":Z
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3211
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    .line 3212
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    .line 3211
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 3214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3213
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3215
    .local v11, "distance":F
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3216
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    .line 3215
    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v2

    .line 3216
    if-nez v2, :cond_2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 3217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3216
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v11}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v2

    .line 3217
    if-eqz v2, :cond_3

    .line 3218
    :cond_2
    const/16 v51, 0x0

    .line 3222
    .end local v11    # "distance":F
    :cond_3
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/launcher2/ItemInfo;

    .line 3223
    .local v25, "item":Lcom/android/launcher2/ItemInfo;
    const/16 v54, 0x0

    .line 3224
    .local v54, "updateWidgetSize":Z
    if-eqz v51, :cond_7

    .line 3225
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3226
    .local v15, "minSpanX":I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3227
    .local v16, "minSpanY":I
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_4

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_4

    .line 3228
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 3229
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v16, v0

    .line 3231
    :cond_4
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v21, v0

    .line 3232
    .local v21, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v13, v2

    .line 3233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v14, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v17, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v18, v0

    .line 3234
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x2

    move-object/from16 v12, p3

    .line 3232
    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3236
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    aget v2, v21, v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v2, v3, :cond_6

    .line 3237
    :cond_5
    const/16 v54, 0x1

    .line 3239
    :cond_6
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3240
    const/4 v2, 0x1

    aget v2, v21, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3243
    .end local v15    # "minSpanX":I
    .end local v16    # "minSpanY":I
    .end local v21    # "resultSpan":[I
    :cond_7
    new-instance v22, Lcom/android/launcher2/Workspace$9;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v28}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;Lcom/android/launcher2/ItemInfo;JI)V

    .line 3266
    .local v22, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    move-object/from16 v2, v24

    .line 3267
    check-cast v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v0, v2, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v35, v0

    .line 3269
    .local v35, "finalView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v35

    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_8

    if-eqz v54, :cond_8

    move-object/from16 v49, v35

    .line 3270
    check-cast v49, Landroid/appwidget/AppWidgetHostView;

    .line 3271
    .local v49, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3272
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3271
    move-object/from16 v0, v49

    invoke-static {v0, v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 3275
    .end local v49    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_8
    const/16 v34, 0x0

    .line 3276
    .local v34, "animationStyle":I
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 3277
    check-cast v24, Lcom/android/launcher2/PendingAddWidgetInfo;

    .end local v24    # "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    .line 3278
    const/16 v34, 0x1

    .line 3280
    :cond_9
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v32, v0

    .line 3281
    const/16 v36, 0x1

    move-object/from16 v29, p0

    move-object/from16 v31, p3

    move-object/from16 v33, v22

    .line 3280
    invoke-virtual/range {v29 .. v36}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3350
    .end local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v25    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v34    # "animationStyle":I
    .end local v35    # "finalView":Landroid/view/View;
    .end local v51    # "findNearestVacantCell":Z
    .end local v54    # "updateWidgetSize":Z
    :cond_a
    :goto_2
    return-void

    .line 3199
    .end local v26    # "container":J
    .end local v28    # "screen":I
    :cond_b
    const/16 v2, -0x64

    goto/16 :goto_0

    .line 3267
    .restart local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .restart local v24    # "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    .restart local v25    # "item":Lcom/android/launcher2/ItemInfo;
    .restart local v26    # "container":J
    .restart local v28    # "screen":I
    .restart local v51    # "findNearestVacantCell":Z
    .restart local v54    # "updateWidgetSize":Z
    :cond_c
    const/16 v35, 0x0

    goto :goto_1

    .line 3284
    .end local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v24    # "pendingInfo":Lcom/android/launcher2/PendingAddItemInfo;
    .end local v25    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v51    # "findNearestVacantCell":Z
    .end local v54    # "updateWidgetSize":Z
    :cond_d
    const/16 v37, 0x0

    .line 3286
    .local v37, "view":Landroid/view/View;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 3301
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown item type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3289
    :pswitch_0
    move-object/from16 v0, v30

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_e

    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v2, :cond_e

    .line 3291
    new-instance v52, Lcom/android/launcher2/ShortcutInfo;

    check-cast v30, Lcom/android/launcher2/ApplicationInfo;

    .end local v30    # "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .local v52, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v30, v52

    .line 3293
    .end local v52    # "info":Lcom/android/launcher2/ItemInfo;
    .restart local v30    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    sget v4, Lcom/android/launcher/R$layout;->application:I

    move-object/from16 v2, v30

    .line 3294
    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 3293
    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v37

    .line 3306
    :goto_3
    if-eqz p1, :cond_f

    .line 3307
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    .line 3308
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    .line 3307
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 3310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3309
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3311
    .restart local v11    # "distance":F
    move-object/from16 v0, v50

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v41, v0

    .line 3313
    const/16 v43, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v44, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v45, v0

    move-object/from16 v36, p0

    move-wide/from16 v38, v26

    move-object/from16 v40, p3

    move/from16 v42, v11

    .line 3312
    invoke-virtual/range {v36 .. v45}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v2

    .line 3313
    if-nez v2, :cond_a

    .line 3316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v39, v0

    .line 3317
    const/16 v42, 0x1

    move-object/from16 v36, p0

    move-object/from16 v38, p3

    move/from16 v40, v11

    move-object/from16 v41, p5

    .line 3316
    invoke-virtual/range {v36 .. v42}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v2

    .line 3317
    if-nez v2, :cond_a

    .line 3322
    .end local v11    # "distance":F
    :cond_f
    if-eqz p1, :cond_10

    .line 3324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v39, v0

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x1

    const/16 v43, 0x1

    const/16 v44, 0x1

    .line 3326
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/16 v48, 0x2

    move-object/from16 v38, p3

    .line 3324
    invoke-virtual/range {v38 .. v48}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3330
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v41, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v42, v2, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v43, v0

    .line 3331
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v44, v0

    move-object/from16 v36, p0

    move-wide/from16 v38, v26

    move/from16 v40, v28

    move/from16 v45, p4

    .line 3330
    invoke-virtual/range {v36 .. v45}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3332
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3333
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v53

    check-cast v53, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3334
    .local v53, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v38, v0

    .line 3338
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v43, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v44, v0

    move-object/from16 v39, v30

    move-wide/from16 v40, v26

    move/from16 v42, v28

    .line 3337
    invoke-static/range {v38 .. v44}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 3340
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_a

    .line 3344
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3347
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_2

    .line 3297
    .end local v53    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :pswitch_1
    sget v3, Lcom/android/launcher/R$layout;->folder_icon:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v2, v30

    .line 3298
    check-cast v2, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 3297
    move-object/from16 v0, p3

    invoke-static {v3, v4, v0, v2, v7}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v37

    .line 3299
    goto/16 :goto_3

    .line 3328
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_4

    .line 3286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 3714
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3716
    return-void
.end method

.method private setChildrenBackgroundAlphaMultipliers(F)V
    .locals 3
    .param p1, "a"    # F

    .prologue
    .line 1337
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1341
    return-void

    .line 1338
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1339
    .local v0, "child":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .param p0, "point1"    # [F
    .param p1, "point2"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2783
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2784
    .local v0, "distanceX":F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2785
    .local v1, "distanceY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 3

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 1014
    .local v0, "enableWallpaperEffects":Z
    if-eqz v0, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 1017
    :cond_0
    return-void
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1531
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_1

    move v3, v1

    .line 1532
    .local v3, "small":Z
    :goto_0
    if-nez p1, :cond_2

    if-nez v3, :cond_2

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1534
    .local v1, "enableChildrenLayers":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v4, :cond_0

    .line 1535
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 1536
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_3

    .line 1537
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1545
    :cond_0
    return-void

    .end local v1    # "enableChildrenLayers":Z
    .end local v3    # "small":Z
    :cond_1
    move v3, v4

    .line 1531
    goto :goto_0

    .restart local v3    # "small":Z
    :cond_2
    move v1, v4

    .line 1532
    goto :goto_1

    .line 1539
    .restart local v1    # "enableChildrenLayers":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1540
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1541
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    .line 1539
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updatePageAlphaValues(I)V
    .locals 8
    .param p1, "screenCenter"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1314
    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-gt v5, v6, :cond_1

    const/4 v3, 0x0

    .line 1315
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_0

    .line 1316
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_0

    .line 1317
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_0

    .line 1318
    if-nez v3, :cond_0

    .line 1319
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 1334
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 1314
    .end local v3    # "isInOverscroll":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1320
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1321
    .local v1, "child":Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_3

    .line 1322
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1323
    .local v4, "scrollProgress":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v7, v5

    .line 1324
    .local v0, "alpha":F
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1325
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v5, :cond_4

    .line 1327
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v5

    .line 1326
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1319
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1329
    .restart local v0    # "alpha":F
    .restart local v4    # "scrollProgress":F
    :cond_4
    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_2
.end method

.method private updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 1024
    const/4 v1, 0x0

    .line 1025
    .local v1, "updateNow":Z
    const/4 v0, 0x1

    .line 1026
    .local v0, "keepUpdating":Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2

    .line 1027
    const/4 v1, 0x1

    .line 1028
    const/4 v0, 0x0

    .line 1029
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1030
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1034
    :goto_0
    if-eqz v1, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 1036
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1037
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    .line 1036
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1040
    :cond_0
    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1043
    :cond_1
    return-void

    .line 1032
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 977
    iget v7, p0, Lcom/android/launcher2/Workspace;->mBackCenter:I

    if-lez v7, :cond_0

    iget v7, p0, Lcom/android/launcher2/Workspace;->mBackCenter:I

    int-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    div-float v2, v7, v8

    .line 1008
    :goto_0
    return v2

    .line 980
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    div-float v8, v9, v8

    invoke-virtual {v7, v8, v9}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 985
    iget v1, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 986
    .local v1, "layoutScale":F
    iput v9, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 987
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v5

    .line 990
    .local v5, "scrollRange":I
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v0, v7

    .line 991
    .local v0, "adjustedScrollX":F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v0, v7

    .line 992
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 995
    int-to-float v7, v5

    div-float v4, v0, v7

    .line 997
    .local v4, "scrollProgress":F
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    if-eqz v7, :cond_1

    .line 1001
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1003
    .local v6, "wallpaperTravelWidth":I
    int-to-float v7, v6

    mul-float/2addr v7, v4

    .line 1004
    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 1003
    add-float v3, v7, v8

    .line 1005
    .local v3, "offsetInDips":F
    iget v7, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v7, v7

    div-float v2, v3, v7

    .line 1006
    .local v2, "offset":F
    goto :goto_0

    .end local v2    # "offset":F
    .end local v3    # "offsetInDips":F
    .end local v6    # "wallpaperTravelWidth":I
    :cond_1
    move v2, v4

    .line 1008
    goto :goto_0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 923
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 930
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 931
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 932
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 933
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 941
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 943
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 944
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 27
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2131
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2132
    .local v8, "dropTargetLayout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v1, v0, :cond_9

    .line 2134
    if-nez v8, :cond_0

    .line 2135
    const/4 v1, 0x0

    .line 2205
    :goto_0
    return v1

    .line 2137
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 2139
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    .line 2140
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v1, p0

    .line 2139
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2149
    :goto_1
    const/16 v16, 0x1

    .line 2150
    .local v16, "spanX":I
    const/16 v17, 0x1

    .line 2151
    .local v17, "spanY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_4

    .line 2152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object/from16 v22, v0

    .line 2153
    .local v22, "dragCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v16, v0

    .line 2154
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v17, v0

    .line 2161
    .end local v22    # "dragCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    :goto_2
    move/from16 v4, v16

    .line 2162
    .local v4, "minSpanX":I
    move/from16 v5, v17

    .line 2163
    .local v5, "minSpanY":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v1, :cond_2

    .line 2164
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v4, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanX:I

    .line 2165
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v5, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanY:I

    .line 2168
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v2, v1

    .line 2169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    float-to-int v3, v1

    .line 2170
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v1, p0

    move-object v6, v8

    .line 2168
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2171
    invoke-virtual {v8, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    .line 2173
    .local v10, "distance":F
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher2/ItemInfo;

    .line 2174
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v11, 0x1

    move-object/from16 v6, p0

    .line 2173
    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v1

    .line 2174
    if-eqz v1, :cond_5

    .line 2175
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2146
    .end local v4    # "minSpanX":I
    .end local v5    # "minSpanY":I
    .end local v10    # "distance":F
    .end local v16    # "spanX":I
    .end local v17    # "spanY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 2156
    .restart local v16    # "spanX":I
    .restart local v17    # "spanY":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/launcher2/ItemInfo;

    .line 2157
    .local v23, "dragInfo":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v16, v0

    .line 2158
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v17, v0

    goto/16 :goto_2

    .line 2177
    .end local v23    # "dragInfo":Lcom/android/launcher2/ItemInfo;
    .restart local v4    # "minSpanX":I
    .restart local v5    # "minSpanY":I
    .restart local v10    # "distance":F
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 2178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2177
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v2, v10}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v1

    .line 2178
    if-eqz v1, :cond_6

    .line 2179
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2182
    :cond_6
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v20, v0

    .line 2183
    .local v20, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v12, v1

    .line 2184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v13, v1

    .line 2185
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x3

    move-object v11, v8

    move v14, v4

    move v15, v5

    .line 2183
    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ltz v1, :cond_7

    const/16 v24, 0x1

    .line 2189
    .local v24, "foundCell":Z
    :goto_3
    if-nez v24, :cond_9

    .line 2192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v26

    .line 2193
    .local v26, "isHotseat":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    if-eqz v1, :cond_8

    if-eqz v26, :cond_8

    .line 2194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v25

    .line 2196
    .local v25, "hotseat":Lcom/android/launcher2/Hotseat;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    .line 2195
    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v1

    .line 2196
    if-eqz v1, :cond_8

    .line 2197
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2186
    .end local v24    # "foundCell":Z
    .end local v25    # "hotseat":Lcom/android/launcher2/Hotseat;
    .end local v26    # "isHotseat":Z
    :cond_7
    const/16 v24, 0x0

    goto :goto_3

    .line 2201
    .restart local v24    # "foundCell":Z
    .restart local v26    # "isHotseat":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 2202
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2205
    .end local v4    # "minSpanX":I
    .end local v5    # "minSpanY":I
    .end local v10    # "distance":F
    .end local v16    # "spanX":I
    .end local v17    # "spanY":I
    .end local v20    # "resultSpan":[I
    .end local v24    # "foundCell":Z
    .end local v26    # "isHotseat":Z
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 13
    .param p1, "info"    # Lcom/android/launcher2/ShortcutInfo;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "container"    # J
    .param p5, "screen"    # I
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "insertAtFirst"    # Z
    .param p9, "intersectX"    # I
    .param p10, "intersectY"    # I

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    sget v2, Lcom/android/launcher/R$layout;->application:I

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v12

    .line 2115
    .local v12, "view":Landroid/view/View;
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2116
    .local v1, "cellXY":[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2117
    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v12

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2118
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    aget v7, v1, v0

    .line 2119
    const/4 v0, 0x1

    aget v8, v1, v0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    .line 2118
    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2120
    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z
    .locals 4
    .param p1, "dragInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v0, 0x0

    .line 3159
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3160
    iget-object v1, p1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 3161
    const/4 v0, 0x1

    .line 3164
    :goto_0
    return v0

    .line 3163
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1485
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1486
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1487
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1492
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1489
    .restart local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 506
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 507
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "insert"    # Z

    .prologue
    .line 523
    const-wide/16 v5, -0x64

    cmp-long v5, p2, v5

    if-nez v5, :cond_2

    .line 524
    if-ltz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move/from16 v0, p4

    if-lt v0, v5, :cond_2

    .line 525
    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "The screen must be >= 0 and < "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 526
    const-string v11, " (was "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "); skipping child"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .end local p1    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 532
    .restart local p1    # "child":Landroid/view/View;
    :cond_2
    const-wide/16 v5, -0x65

    cmp-long v5, p2, v5

    if-nez v5, :cond_9

    .line 533
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 534
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 537
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 538
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 541
    :cond_3
    if-gez p4, :cond_8

    .line 542
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result p4

    .line 559
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 561
    .local v10, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v10, :cond_4

    instance-of v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-nez v5, :cond_b

    .line 562
    :cond_4
    new-instance v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 571
    .local v8, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    if-gez p7, :cond_5

    if-gez p8, :cond_5

    .line 572
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 576
    :cond_5
    invoke-static/range {p2 .. p8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 577
    .local v7, "childId":I
    instance-of v5, p1, Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_c

    const/4 v9, 0x0

    .line 578
    .local v9, "markCellsAsOccupied":Z
    :goto_3
    if-eqz p9, :cond_d

    const/4 v6, 0x0

    :goto_4
    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 582
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Failed to add to item at ("

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ") to CellLayout"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_6
    instance-of v5, p1, Lcom/android/launcher2/Folder;

    if-nez v5, :cond_7

    .line 586
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 587
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 589
    :cond_7
    instance-of v5, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v5, :cond_1

    .line 590
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {v5, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto/16 :goto_0

    .line 546
    .end local v7    # "childId":I
    .end local v8    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v9    # "markCellsAsOccupied":Z
    .end local v10    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p1    # "child":Landroid/view/View;
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result p5

    .line 547
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result p6

    .line 549
    goto/16 :goto_1

    .line 551
    .end local v4    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_9
    instance-of v5, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_a

    move-object v5, p1

    .line 552
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 555
    :cond_a
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 556
    .restart local v4    # "layout":Lcom/android/launcher2/CellLayout;
    new-instance v5, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v5}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .restart local v10    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    move-object v8, v10

    .line 564
    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 565
    .restart local v8    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move/from16 v0, p5

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 566
    move/from16 v0, p6

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 567
    move/from16 v0, p7

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 568
    move/from16 v0, p8

    iput v0, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 577
    .restart local v7    # "childId":I
    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 578
    .restart local v9    # "markCellsAsOccupied":Z
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_4
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z
    .locals 6
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p6, "external"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2313
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v4, p4, v4

    if-lez v4, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return v2

    .line 2315
    :cond_1
    aget v4, p3, v2

    aget v5, p3, v3

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2316
    .local v0, "dropOverView":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v4, :cond_0

    .line 2317
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2319
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 2320
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2321
    .local v1, "fi":Lcom/android/launcher2/FolderIcon;
    iget-object v4, p5, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2322
    invoke-virtual {v1, p5}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2325
    if-nez p6, :cond_2

    .line 2326
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    :cond_2
    move v2, v3

    .line 2328
    goto :goto_0
.end method

.method public animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 40
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher2/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher2/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .prologue
    .line 3411
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 3412
    .local v38, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3414
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3415
    .local v5, "finalPos":[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 3416
    .local v6, "scaleXY":[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/PendingAddShortcutInfo;

    if-eqz v4, :cond_3

    const/4 v12, 0x0

    .line 3417
    .local v12, "scalePreview":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V

    .line 3420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 3421
    .local v39, "res":Landroid/content/res/Resources;
    sget v4, Lcom/android/launcher/R$integer;->config_dropAnimMaxDuration:I

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v21, v0

    .line 3424
    .local v21, "duration":I
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 3425
    const-string v4, "Launcher.Workspace"

    const-string v7, "6557954 Animate widget drop, final view is appWidgetHostView"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    .line 3428
    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    if-eqz p7, :cond_4

    :cond_1
    if-eqz p6, :cond_4

    .line 3429
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 3430
    .local v37, "crossFadeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 3431
    move/from16 v0, v21

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragView;->crossFade(I)V

    .line 3436
    .end local v37    # "crossFadeBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v22

    .line 3437
    .local v22, "dragLayer":Lcom/android/launcher2/DragLayer;
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    .line 3438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v13

    const/16 v16, 0x0

    const v17, 0x3dcccccd    # 0.1f

    const v18, 0x3dcccccd    # 0.1f

    .line 3439
    const/16 v19, 0x0

    move-object/from16 v14, p3

    move-object v15, v5

    move-object/from16 v20, p4

    .line 3438
    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 3463
    :goto_2
    return-void

    .line 3416
    .end local v12    # "scalePreview":Z
    .end local v21    # "duration":I
    .end local v22    # "dragLayer":Lcom/android/launcher2/DragLayer;
    .end local v39    # "res":Landroid/content/res/Resources;
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3432
    .restart local v12    # "scalePreview":Z
    .restart local v21    # "duration":I
    .restart local v39    # "res":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    if-eqz p7, :cond_2

    .line 3433
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_1

    .line 3442
    .restart local v22    # "dragLayer":Lcom/android/launcher2/DragLayer;
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 3443
    const/16 v34, 0x2

    .line 3448
    .local v34, "endStyle":I
    :goto_3
    new-instance v33, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3459
    .local v33, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/4 v4, 0x0

    aget v26, v5, v4

    .line 3460
    const/4 v4, 0x1

    aget v27, v5, v4

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/high16 v30, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v31, v6, v4

    const/4 v4, 0x1

    aget v32, v6, v4

    move-object/from16 v23, p3

    move/from16 v35, v21

    move-object/from16 v36, p0

    .line 3459
    invoke-virtual/range {v22 .. v36}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_2

    .line 3445
    .end local v33    # "onComplete":Ljava/lang/Runnable;
    .end local v34    # "endStyle":I
    :cond_6
    const/16 v34, 0x0

    .restart local v34    # "endStyle":I
    goto :goto_3
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1290
    const v0, 0x3dcccccd    # 0.1f

    .line 1291
    .local v0, "pivotA":F
    const v1, 0x3ecccccd    # 0.4f

    .line 1292
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1293
    const/4 v2, 0x0

    .line 1297
    :goto_0
    return v2

    .line 1294
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1295
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1297
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V
    .locals 24
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher2/DragSource;

    .prologue
    .line 2062
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 2065
    .local v21, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v7}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2067
    .local v4, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 2068
    .local v14, "bmpWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 2070
    .local v13, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v7}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v12

    .line 2072
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v7, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2074
    .local v5, "dragLayerX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v7, v13

    int-to-float v8, v13

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    .line 2075
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2074
    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2077
    .local v6, "dragLayerY":I
    const/4 v10, 0x0

    .line 2078
    .local v10, "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v11, 0x0

    .line 2079
    .local v11, "dragRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v3, :cond_3

    .line 2080
    :cond_0
    sget v3, Lcom/android/launcher/R$dimen;->app_icon_size:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2081
    .local v18, "iconSize":I
    sget v3, Lcom/android/launcher/R$dimen;->app_icon_padding_top:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 2082
    .local v17, "iconPaddingTop":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    .line 2083
    .local v23, "top":I
    sub-int v3, v14, v18

    div-int/lit8 v19, v3, 0x2

    .line 2084
    .local v19, "left":I
    add-int v22, v19, v18

    .line 2085
    .local v22, "right":I
    add-int v15, v23, v18

    .line 2086
    .local v15, "bottom":I
    add-int v6, v6, v23

    .line 2089
    new-instance v10, Landroid/graphics/Point;

    .end local v10    # "dragVisualizeOffset":Landroid/graphics/Point;
    const/4 v3, -0x1

    .line 2090
    add-int/lit8 v7, v17, -0x1

    .line 2089
    invoke-direct {v10, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 2091
    .restart local v10    # "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Rect;

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    move/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v11, v0, v1, v2, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2098
    .end local v15    # "bottom":I
    .end local v17    # "iconPaddingTop":I
    .end local v18    # "iconSize":I
    .end local v19    # "left":I
    .end local v22    # "right":I
    .end local v23    # "top":I
    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-eqz v3, :cond_2

    move-object/from16 v16, p1

    .line 2099
    check-cast v16, Lcom/android/launcher2/BubbleTextView;

    .line 2100
    .local v16, "icon":Lcom/android/launcher2/BubbleTextView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 2103
    .end local v16    # "icon":Lcom/android/launcher2/BubbleTextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 2104
    sget v9, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move-object/from16 v7, p2

    .line 2103
    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 2105
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2108
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    .line 2109
    return-void

    .line 2092
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 2093
    sget v3, Lcom/android/launcher/R$dimen;->folder_preview_size:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 2094
    .local v20, "previewSize":I
    new-instance v11, Landroid/graphics/Rect;

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    move/from16 v0, v20

    invoke-direct {v11, v3, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 1578
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1579
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1581
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1586
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1587
    return-void

    .line 1582
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1583
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->buildHardwareLayer()V

    .line 1581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1518
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1519
    .local v2, "screenCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1527
    return-void

    .line 1520
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1521
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1523
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1524
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearDropTargets()V
    .locals 7

    .prologue
    .line 3799
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3800
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3809
    return-void

    .line 3800
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3801
    .local v3, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 3802
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3803
    invoke-virtual {v3, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3804
    .local v4, "v":Landroid/view/View;
    instance-of v6, v4, Lcom/android/launcher2/DropTarget;

    if-eqz v6, :cond_2

    .line 3805
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v4, Lcom/android/launcher2/DropTarget;

    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {v6, v4}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3802
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 1200
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1201
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1202
    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    const/4 v5, 0x1

    .line 1973
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 1976
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v5

    .line 1977
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    move-object v2, p1

    .line 1978
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 1980
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p3

    .line 1981
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1980
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1987
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1988
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1989
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1991
    return-object v0

    .line 1984
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1983
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z
    .locals 21
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "container"    # J
    .param p4, "target"    # Lcom/android/launcher2/CellLayout;
    .param p5, "targetCell"    # [I
    .param p6, "distance"    # F
    .param p7, "external"    # Z
    .param p8, "dragView"    # Lcom/android/launcher2/DragView;
    .param p9, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 2308
    :goto_0
    return v2

    .line 2262
    :cond_0
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 2264
    .local v9, "v":Landroid/view/View;
    const/16 v19, 0x0

    .line 2265
    .local v19, "hasntMoved":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2267
    .local v17, "cellParent":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    .line 2268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_3

    .line 2267
    const/16 v19, 0x1

    .line 2271
    .end local v17    # "cellParent":Lcom/android/launcher2/CellLayout;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2267
    .restart local v17    # "cellParent":Lcom/android/launcher2/CellLayout;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 2272
    .end local v17    # "cellParent":Lcom/android/launcher2/CellLayout;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2273
    if-nez p5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 2275
    .local v6, "screen":I
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Lcom/android/launcher2/ShortcutInfo;

    .line 2276
    .local v15, "aboveShortcut":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v20, v0

    .line 2278
    .local v20, "willBecomeShortcut":Z
    if-eqz v15, :cond_9

    if-eqz v20, :cond_9

    .line 2279
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 2280
    .local v10, "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/ShortcutInfo;

    .line 2282
    .local v18, "destInfo":Lcom/android/launcher2/ShortcutInfo;
    if-nez p7, :cond_5

    .line 2283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2286
    :cond_5
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2287
    .local v12, "folderLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    .line 2288
    .local v13, "scale":F
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    aget v7, p5, v3

    const/4 v3, 0x1

    aget v8, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Launcher;->addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;

    move-result-object v7

    .line 2292
    .local v7, "fi":Lcom/android/launcher2/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2293
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2294
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2295
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2298
    if-eqz p8, :cond_7

    const/16 v16, 0x1

    .line 2299
    .local v16, "animate":Z
    :goto_3
    if-eqz v16, :cond_8

    move-object/from16 v8, v18

    move-object/from16 v11, p8

    move-object/from16 v14, p9

    .line 2300
    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/FolderIcon;->performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2306
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2273
    .end local v6    # "screen":I
    .end local v7    # "fi":Lcom/android/launcher2/FolderIcon;
    .end local v10    # "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v12    # "folderLocation":Landroid/graphics/Rect;
    .end local v13    # "scale":F
    .end local v15    # "aboveShortcut":Z
    .end local v16    # "animate":Z
    .end local v18    # "destInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v20    # "willBecomeShortcut":Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto/16 :goto_2

    .line 2298
    .restart local v6    # "screen":I
    .restart local v7    # "fi":Lcom/android/launcher2/FolderIcon;
    .restart local v10    # "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    .restart local v12    # "folderLocation":Landroid/graphics/Rect;
    .restart local v13    # "scale":F
    .restart local v15    # "aboveShortcut":Z
    .restart local v18    # "destInfo":Lcom/android/launcher2/ShortcutInfo;
    .restart local v20    # "willBecomeShortcut":Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 2303
    .restart local v16    # "animate":Z
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2304
    invoke-virtual {v7, v10}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_4

    .line 2308
    .end local v7    # "fi":Lcom/android/launcher2/FolderIcon;
    .end local v10    # "sourceInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v12    # "folderLocation":Landroid/graphics/Rect;
    .end local v13    # "scale":F
    .end local v16    # "animate":Z
    .end local v18    # "destInfo":Lcom/android/launcher2/ShortcutInfo;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "widgetInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3353
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3354
    iget v8, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3353
    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v3

    .line 3355
    .local v3, "unScaledSize":[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 3356
    .local v4, "visibility":I
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3358
    aget v6, v3, v9

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3359
    .local v5, "width":I
    aget v6, v3, v10

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3360
    .local v2, "height":I
    aget v6, v3, v9

    aget v7, v3, v10

    .line 3361
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3360
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3362
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3364
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p2, v5, v2}, Landroid/view/View;->measure(II)V

    .line 3365
    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {p2, v9, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 3366
    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3367
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3368
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3369
    return-object v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0x3f060a92

    .line 801
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 805
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 807
    .local v1, "deltaY":F
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 809
    div-float v3, v1, v0

    .line 810
    .local v3, "slope":F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 812
    .local v4, "theta":F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    .line 813
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 816
    :cond_3
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 819
    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    .line 824
    sub-float/2addr v4, v7

    .line 826
    div-float v5, v4, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 827
    .local v2, "extraRatio":F
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-super {p0, p1, v5}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 830
    .end local v2    # "extraRatio":F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method disableBackground()V
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1245
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3620
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3621
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    const/4 v0, 0x0

    .line 660
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableBackground()V
    .locals 1

    .prologue
    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1248
    return-void
.end method

.method enableChildrenCache(II)V
    .locals 6
    .param p1, "fromPage"    # I
    .param p2, "toPage"    # I

    .prologue
    const/4 v5, 0x1

    .line 1499
    if-le p1, p2, :cond_0

    .line 1500
    move v3, p1

    .line 1501
    .local v3, "temp":I
    move p1, p2

    .line 1502
    move p2, v3

    .line 1505
    .end local v3    # "temp":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1507
    .local v2, "screenCount":I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1508
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1510
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_1

    .line 1515
    return-void

    .line 1511
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1512
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1513
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;
    .locals 6
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p2, "pendingInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p3, "hCell"    # I
    .param p4, "vCell"    # I
    .param p5, "hSpan"    # I
    .param p6, "vSpan"    # I

    .prologue
    .line 391
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, "r":Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 393
    return-object v5
.end method

.method public estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I
    .locals 10
    .param p1, "hSpan"    # I
    .param p2, "vSpan"    # I
    .param p3, "itemInfo"    # Lcom/android/launcher2/ItemInfo;
    .param p4, "springLoaded"    # Z

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 372
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 373
    .local v8, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 375
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 376
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v8, v3

    .line 377
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v8, v9

    .line 378
    if-eqz p4, :cond_0

    .line 379
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 380
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 386
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v7    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v8

    .line 384
    :cond_1
    aput v2, v8, v3

    .line 385
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 1689
    .local v0, "dragLayer":Lcom/android/launcher2/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1690
    return-void
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3754
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3755
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 3758
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3759
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3761
    :cond_0
    return-object v0

    .line 3756
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;
    .param p2, "animated"    # Z

    .prologue
    .line 1711
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;
    .locals 29
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "delay"    # I

    .prologue
    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1716
    const/4 v5, 0x0

    .line 1865
    :goto_0
    return-object v5

    .line 1720
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->initAnimationArrays()V

    .line 1722
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 1725
    .local v5, "anim":Landroid/animation/AnimatorSet;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v16, v0

    .line 1728
    .local v16, "oldState":Lcom/android/launcher2/Workspace$State;
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    .line 1729
    .local v17, "oldStateIsNormal":Z
    :goto_2
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    .line 1730
    .local v19, "oldStateIsSpringLoaded":Z
    :goto_3
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    .line 1731
    .local v18, "oldStateIsSmall":Z
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1732
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    .line 1733
    .local v20, "stateIsNormal":Z
    :goto_5
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v22, 0x1

    .line 1734
    .local v22, "stateIsSpringLoaded":Z
    :goto_6
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1

    .line 1735
    .local v21, "stateIsSmall":Z
    :goto_7
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1736
    .local v12, "finalScaleFactor":F
    if-eqz v22, :cond_9

    const/high16 v11, 0x3f800000    # 1.0f

    .line 1737
    .local v11, "finalBackgroundAlpha":F
    :goto_8
    const/16 v23, 0x0

    .line 1738
    .local v23, "translationX":F
    const/16 v24, 0x0

    .line 1739
    .local v24, "translationY":F
    const/16 v25, 0x1

    .line 1741
    .local v25, "zoomIn":Z
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 1742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    move/from16 v27, v0

    if-eqz v21, :cond_a

    const v26, 0x3dcccccd    # 0.1f

    :goto_9
    sub-float v12, v27, v26

    .line 1743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setPageSpacing(I)V

    .line 1744
    if-eqz v17, :cond_b

    if-eqz v21, :cond_b

    .line 1745
    const/16 v25, 0x0

    .line 1746
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1747
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1757
    :goto_a
    if-eqz v25, :cond_d

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/android/launcher/R$integer;->config_workspaceUnshrinkTime:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 1760
    .local v9, "duration":I
    :goto_b
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-lt v13, v0, :cond_e

    .line 1805
    if-eqz p2, :cond_1

    .line 1806
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-lt v14, v0, :cond_17

    .line 1851
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->buildPageHardwareLayers()V

    .line 1852
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1855
    .end local v14    # "index":I
    :cond_1
    if-eqz v22, :cond_1d

    .line 1859
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1860
    sget v27, Lcom/android/launcher/R$integer;->config_appsCustomizeSpringLoadedBgAlpha:I

    .line 1859
    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 1860
    const/high16 v27, 0x42c80000    # 100.0f

    div-float v26, v26, v27

    const/16 v27, 0x0

    .line 1859
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 1722
    .end local v5    # "anim":Landroid/animation/AnimatorSet;
    .end local v9    # "duration":I
    .end local v11    # "finalBackgroundAlpha":F
    .end local v12    # "finalScaleFactor":F
    .end local v13    # "i":I
    .end local v16    # "oldState":Lcom/android/launcher2/Workspace$State;
    .end local v17    # "oldStateIsNormal":Z
    .end local v18    # "oldStateIsSmall":Z
    .end local v19    # "oldStateIsSpringLoaded":Z
    .end local v20    # "stateIsNormal":Z
    .end local v21    # "stateIsSmall":Z
    .end local v22    # "stateIsSpringLoaded":Z
    .end local v23    # "translationX":F
    .end local v24    # "translationY":F
    .end local v25    # "zoomIn":Z
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1728
    .restart local v5    # "anim":Landroid/animation/AnimatorSet;
    .restart local v16    # "oldState":Lcom/android/launcher2/Workspace$State;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1729
    .restart local v17    # "oldStateIsNormal":Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1730
    .restart local v19    # "oldStateIsSpringLoaded":Z
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1732
    .restart local v18    # "oldStateIsSmall":Z
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1733
    .restart local v20    # "stateIsNormal":Z
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1734
    .restart local v22    # "stateIsSpringLoaded":Z
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 1736
    .restart local v12    # "finalScaleFactor":F
    .restart local v21    # "stateIsSmall":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1742
    .restart local v11    # "finalBackgroundAlpha":F
    .restart local v23    # "translationX":F
    .restart local v24    # "translationY":F
    .restart local v25    # "zoomIn":Z
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 1749
    :cond_b
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1750
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    goto :goto_a

    .line 1753
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setPageSpacing(I)V

    .line 1754
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    goto/16 :goto_a

    .line 1759
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    sget v27, Lcom/android/launcher/R$integer;->config_appsCustomizeWorkspaceShrinkTime:I

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto/16 :goto_b

    .line 1761
    .restart local v9    # "duration":I
    .restart local v13    # "i":I
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1762
    .local v7, "cl":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    if-nez v22, :cond_f

    .line 1763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v13, v0, :cond_14

    :cond_f
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1764
    .local v10, "finalAlpha":F
    :goto_e
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v8

    .line 1765
    .local v8, "currentAlpha":F
    move v15, v8

    .line 1768
    .local v15, "initialAlpha":F
    if-eqz v18, :cond_10

    if-nez v20, :cond_11

    .line 1769
    :cond_10
    if-eqz v17, :cond_13

    if-eqz v21, :cond_13

    .line 1773
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v13, v0, :cond_12

    if-eqz p2, :cond_12

    if-eqz v19, :cond_15

    .line 1774
    :cond_12
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1781
    :cond_13
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aput v15, v26, v13

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aput v10, v26, v13

    .line 1783
    if-eqz p2, :cond_16

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v27

    aput v27, v26, v13

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v27

    aput v27, v26, v13

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v27

    aput v27, v26, v13

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v27

    aput v27, v26, v13

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v27

    aput v27, v26, v13

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aput v23, v26, v13

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v26, v0

    aput v24, v26, v13

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v26, v0

    aput v12, v26, v13

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v26, v0

    aput v12, v26, v13

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aput v11, v26, v13

    .line 1760
    :goto_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 1763
    .end local v8    # "currentAlpha":F
    .end local v10    # "finalAlpha":F
    .end local v15    # "initialAlpha":F
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 1776
    .restart local v8    # "currentAlpha":F
    .restart local v10    # "finalAlpha":F
    .restart local v15    # "initialAlpha":F
    :cond_15
    const/4 v15, 0x0

    .line 1777
    const/4 v10, 0x0

    goto :goto_f

    .line 1796
    :cond_16
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1797
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1798
    invoke-virtual {v7, v12}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1799
    invoke-virtual {v7, v12}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1800
    invoke-virtual {v7, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1801
    invoke-virtual {v7, v10}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_10

    .line 1807
    .end local v7    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "currentAlpha":F
    .end local v10    # "finalAlpha":F
    .end local v15    # "initialAlpha":F
    .restart local v14    # "index":I
    :cond_17
    move v13, v14

    .line 1808
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1809
    .restart local v7    # "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v8

    .line 1810
    .restart local v8    # "currentAlpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_19

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1806
    :cond_18
    :goto_11
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_d

    .line 1819
    :cond_19
    new-instance v3, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v3, v7}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1820
    .local v3, "a":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 1824
    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1826
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    cmpl-float v26, v8, v26

    if-eqz v26, :cond_1b

    .line 1830
    :cond_1a
    new-instance v4, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1831
    .local v4, "alphaAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    .line 1832
    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1834
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1836
    .end local v4    # "alphaAnim":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1c

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_18

    .line 1838
    :cond_1c
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1839
    .local v6, "bgAnim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1840
    new-instance v26, Lcom/android/launcher2/Workspace$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;I)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1847
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_11

    .line 1863
    .end local v3    # "a":Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .end local v6    # "bgAnim":Landroid/animation/ValueAnimator;
    .end local v7    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "currentAlpha":F
    .end local v14    # "index":I
    :cond_1d
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 1838
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .prologue
    .line 1902
    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 3500
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3986
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    .line 3987
    .local v0, "page":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$string;->workspace_scroll_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3988
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3987
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3986
    .end local v0    # "page":I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1476
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    const/high16 v0, 0x60000

    .line 1479
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDragInfo()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 3510
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2721
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 8
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3766
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3767
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3779
    const/4 v3, 0x0

    :cond_1
    return-object v3

    .line 3767
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3768
    .local v5, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 3769
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3770
    invoke-virtual {v5, v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3771
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_3

    move-object v3, v0

    .line 3772
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 3773
    .local v3, "f":Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v7, :cond_1

    .line 3769
    .end local v3    # "f":Lcom/android/launcher2/Folder;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 3151
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3152
    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 3993
    return-void
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 6

    .prologue
    .line 477
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 478
    .local v2, "dragLayer":Lcom/android/launcher2/DragLayer;
    invoke-virtual {v2}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 479
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_1

    .line 487
    const/4 v3, 0x0

    :cond_0
    return-object v3

    .line 480
    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_2

    move-object v3, v0

    .line 482
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 483
    .local v3, "folder":Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-nez v5, :cond_0

    .line 479
    .end local v3    # "folder":Lcom/android/launcher2/Folder;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3722
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 3723
    .local v1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3728
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3723
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3724
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    goto :goto_0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3784
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3785
    .local v1, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3794
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 3785
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3786
    .local v4, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 3787
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3788
    invoke-virtual {v4, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3789
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_1

    .line 3787
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "location"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2540
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 2541
    aget v2, p2, v5

    .line 2542
    .local v2, "x":I
    aget v3, p2, v6

    .line 2544
    .local v3, "y":I
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2545
    aget v0, p2, v5

    .line 2546
    .local v0, "vX":I
    aget v1, p2, v6

    .line 2548
    .local v1, "vY":I
    sub-int v4, v0, v2

    aput v4, p2, v5

    .line 2549
    sub-int v4, v1, v3

    aput v4, p2, v6

    .line 2550
    return-void
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3736
    .local v0, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3737
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 3740
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3741
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3743
    :cond_0
    return-object v0

    .line 3738
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1218
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1219
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1220
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1221
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1223
    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 623
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 627
    .local v0, "current":I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 623
    .end local v0    # "current":I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_0

    .line 627
    .restart local v0    # "current":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 612
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 616
    .local v0, "current":I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 612
    .end local v0    # "current":I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_0

    .line 616
    .restart local v0    # "current":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initWorkspace()V
    .locals 7

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 421
    .local v1, "context":Landroid/content/Context;
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 422
    iget v4, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 423
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 424
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 425
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 426
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 430
    .local v3, "res":Landroid/content/res/Resources;
    :try_start_0
    sget v4, Lcom/android/launcher/R$drawable;->apps_customize_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 436
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 437
    .local v2, "display":Landroid/view/Display;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 438
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    .line 439
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 438
    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 441
    const v4, 0x3f0ccccd    # 0.55f

    sget v5, Lcom/android/launcher/R$dimen;->app_icon_size:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    .line 442
    const/high16 v4, 0x43fa0000    # 500.0f

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mFlingThresholdVelocity:I

    .line 443
    return-void

    .line 431
    .end local v2    # "display":Landroid/view/Display;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3606
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    .line 2773
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2774
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    .line 2775
    .local v0, "scrollX":I
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2776
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 2778
    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, p2, v1

    .line 2779
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, p2, v1

    .line 2780
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    .line 2731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2732
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F
    .param p3, "cachedInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2745
    if-nez p3, :cond_0

    .line 2746
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2747
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2749
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    .line 2750
    .local v0, "scrollX":I
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2751
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 2753
    :cond_1
    aget v1, p2, v3

    int-to-float v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 2754
    aget v1, p2, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 2755
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2756
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V
    .locals 4
    .param p1, "hotseat"    # Lcom/android/launcher2/Hotseat;
    .param p2, "xy"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2760
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2761
    aget v0, p2, v2

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2762
    aget v0, p2, v3

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2763
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2764
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 3966
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3967
    if-eqz p1, :cond_1

    .line 3968
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3973
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3974
    return-void

    .line 3970
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 2

    .prologue
    .line 911
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->notifyPageSwitchListener()V

    .line 912
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 915
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->listener:Lcom/android/launcher2/Workspace$CurrentPageListener;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->listener:Lcom/android/launcher2/Workspace$CurrentPageListener;

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-interface {v0, v1}, Lcom/android/launcher2/Workspace$CurrentPageListener;->OnListener(I)V

    .line 918
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1414
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1415
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1416
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1420
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    :goto_0
    return-void

    .line 1421
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 452
    instance-of v1, p2, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 453
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 455
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 456
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 459
    sget v2, Lcom/android/launcher/R$string;->workspace_description_format:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 458
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 464
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1428
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 408
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/UninstallShortcutReceiver;->disableAndFlushUninstallQueue(Landroid/content/Context;)V

    .line 414
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x0

    .line 2553
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v1}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2554
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2555
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2557
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2558
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2559
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2560
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2564
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2565
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2567
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2608
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2612
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_3

    .line 2613
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2616
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2624
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v2, :cond_4

    .line 2625
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2631
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->onResetScrollArea()V

    .line 2632
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2633
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2635
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2637
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 2638
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2640
    :cond_1
    return-void

    .line 2618
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2621
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2626
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2627
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 25
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2924
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    .line 3043
    :cond_0
    :goto_0
    return-void

    .line 2926
    :cond_1
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 2927
    .local v23, "r":Landroid/graphics/Rect;
    const/16 v19, 0x0

    .line 2928
    .local v19, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/launcher2/ItemInfo;

    .line 2931
    .local v18, "item":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ltz v3, :cond_2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-gez v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Improper spans found"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2932
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    .line 2933
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    .line 2932
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v3, :cond_a

    const/4 v14, 0x0

    .line 2937
    .local v14, "child":Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2939
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2940
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2944
    :cond_4
    if-nez v19, :cond_5

    .line 2945
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2947
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_6

    .line 2949
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2950
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_b

    const/16 v17, 0x1

    .line 2953
    .local v17, "isInSpringLoadedMode":Z
    :goto_2
    if-eqz v17, :cond_6

    .line 2954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v3}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2979
    .end local v17    # "isInSpringLoadedMode":Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_0

    .line 2981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2987
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/launcher2/ItemInfo;

    .line 2989
    .local v16, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    .line 2990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2991
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    .line 2989
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2996
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2996
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v24

    .line 2999
    .local v24, "targetCellDistance":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    .line 3000
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 2999
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v15

    .line 3006
    .local v15, "dragOverView":Landroid/view/View;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v20, v0

    .line 3007
    .local v20, "minSpanX":I
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v21, v0

    .line 3008
    .local v21, "minSpanY":I
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v3, :cond_7

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v3, :cond_7

    .line 3009
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    move/from16 v20, v0

    .line 3010
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v21, v0

    .line 3013
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3015
    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v7, v14

    .line 3013
    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v22

    .line 3017
    .local v22, "nearestDropOccupied":Z
    if-nez v22, :cond_11

    .line 3018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    float-to-int v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v3, v3, v6

    float-to-int v6, v3

    .line 3020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v7, v3, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v8, v3, v8

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v11, 0x0

    .line 3021
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v13

    move-object v3, v14

    .line 3018
    invoke-virtual/range {v2 .. v13}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3036
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 3037
    if-nez v22, :cond_0

    .line 3038
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_0

    .line 3039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    goto/16 :goto_0

    .line 2935
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "dragOverView":Landroid/view/View;
    .end local v16    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v20    # "minSpanX":I
    .end local v21    # "minSpanY":I
    .end local v22    # "nearestDropOccupied":Z
    .end local v24    # "targetCellDistance":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v14, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1

    .line 2952
    .restart local v14    # "child":Landroid/view/View;
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 2957
    .restart local v17    # "isInSpringLoadedMode":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/SpringLoadedDragController;->setAlarm(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 2963
    .end local v17    # "isInSpringLoadedMode":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2964
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2965
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2969
    :cond_e
    if-nez v19, :cond_f

    .line 2970
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2972
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v19

    if-eq v0, v3, :cond_6

    .line 2973
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2974
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 2984
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_4

    .line 3022
    .restart local v15    # "dragOverView":Landroid/view/View;
    .restart local v16    # "info":Lcom/android/launcher2/ItemInfo;
    .restart local v20    # "minSpanX":I
    .restart local v21    # "minSpanY":I
    .restart local v22    # "nearestDropOccupied":Z
    .restart local v24    # "targetCellDistance":F
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8

    .line 3023
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_13

    .line 3024
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eq v3, v4, :cond_8

    .line 3030
    :cond_13
    new-instance v2, Lcom/android/launcher2/Workspace$ReorderAlarmListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 3031
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v3, p0

    move/from16 v5, v20

    move/from16 v6, v21

    move-object v10, v14

    .line 3030
    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher2/Workspace;[FIIIILcom/android/launcher2/DragView;Landroid/view/View;)V

    .line 3032
    .local v2, "listener":Lcom/android/launcher2/Workspace$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 3033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto/16 :goto_5
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 400
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->setChildrenBackgroundAlphaMultipliers(F)V

    .line 402
    invoke-static {}, Lcom/android/launcher2/InstallShortcutReceiver;->enableInstallQueue()V

    .line 403
    invoke-static {}, Lcom/android/launcher2/UninstallShortcutReceiver;->enableUninstallQueue()V

    .line 404
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1671
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 1674
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1675
    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher2/PendingAddItemInfo;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "clipAlpha"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1678
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1680
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget v0, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v7

    .line 1683
    .local v7, "size":[I
    const/4 v3, 0x2

    aget v4, v7, v4

    .line 1684
    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    .line 1683
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1685
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1443
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v1, :cond_0

    .line 1444
    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1445
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1446
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    .line 1447
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v5

    .line 1446
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1448
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1451
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1454
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1455
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 64
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;

    .prologue
    .line 2336
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 2337
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v5, p0

    .line 2336
    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2339
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2342
    .local v8, "dropTargetLayout":Lcom/android/launcher2/CellLayout;
    if-eqz v8, :cond_0

    .line 2343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2344
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2350
    :cond_0
    :goto_0
    const/16 v63, -0x1

    .line 2351
    .local v63, "snapScreen":I
    const/16 v61, 0x0

    .line 2352
    .local v61, "resizeOnDrop":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_3

    .line 2353
    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    float-to-int v7, v7

    aput v7, v6, v5

    const/4 v5, 0x1

    .line 2354
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    float-to-int v7, v7

    aput v7, v6, v5

    .line 2355
    .local v6, "touchXY":[I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2515
    .end local v6    # "touchXY":[I
    :cond_1
    :goto_1
    return-void

    .line 2346
    .end local v61    # "resizeOnDrop":Z
    .end local v63    # "snapScreen":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v7}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2356
    .restart local v61    # "resizeOnDrop":Z
    .restart local v63    # "snapScreen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_1

    .line 2357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v28, v0

    .line 2359
    .local v28, "cell":Landroid/view/View;
    const/16 v62, 0x0

    .line 2360
    .local v62, "resizeRunnable":Ljava/lang/Runnable;
    if-eqz v8, :cond_b

    .line 2362
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eq v5, v8, :cond_c

    const/16 v54, 0x1

    .line 2363
    .local v54, "hasMovedLayouts":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v53

    .line 2364
    .local v53, "hasMovedIntoHotseat":Z
    if-eqz v53, :cond_d

    .line 2365
    const/16 v5, -0x65

    .line 2364
    :goto_3
    int-to-long v0, v5

    move-wide/from16 v16, v0

    .line 2367
    .local v16, "container":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-gez v5, :cond_e

    .line 2368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v35, v0

    .line 2369
    .local v35, "screen":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2370
    .local v12, "spanX":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v13, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2374
    .local v13, "spanY":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v10, v5

    .line 2375
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v11, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v9, p0

    move-object v14, v8

    .line 2374
    invoke-direct/range {v9 .. v15}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    .line 2377
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2376
    invoke-virtual {v8, v5, v7, v9}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v20

    .line 2381
    .local v20, "distance":F
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v5, :cond_4

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, v28

    move-object/from16 v18, v8

    .line 2381
    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v5

    .line 2382
    if-nez v5, :cond_1

    .line 2386
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    .line 2387
    const/16 v27, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v28

    move-object/from16 v23, v8

    move/from16 v25, v20

    move-object/from16 v26, p1

    .line 2386
    invoke-virtual/range {v21 .. v27}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v5

    .line 2387
    if-nez v5, :cond_1

    .line 2393
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/launcher2/ItemInfo;

    .line 2394
    .local v57, "item":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v24, v0

    .line 2395
    .local v24, "minSpanX":I
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v25, v0

    .line 2396
    .local v25, "minSpanY":I
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v5, :cond_5

    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v5, :cond_5

    .line 2397
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    move/from16 v24, v0

    .line 2398
    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v25, v0

    .line 2401
    :cond_5
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v30, v0

    .line 2402
    .local v30, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v0, v5

    move/from16 v22, v0

    .line 2403
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v0, v5

    move/from16 v23, v0

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v21, v8

    move/from16 v26, v12

    move/from16 v27, v13

    .line 2402
    invoke-virtual/range {v21 .. v31}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-ltz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ltz v5, :cond_11

    const/16 v52, 0x1

    .line 2408
    .local v52, "foundCell":Z
    :goto_7
    if-eqz v52, :cond_7

    move-object/from16 v0, v28

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_7

    .line 2409
    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v57

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v5, v7, :cond_6

    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v57

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v5, v7, :cond_7

    .line 2410
    :cond_6
    const/16 v61, 0x1

    .line 2411
    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2412
    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v49, v28

    .line 2413
    check-cast v49, Landroid/appwidget/AppWidgetHostView;

    .line 2414
    .local v49, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v7, 0x0

    aget v7, v30, v7

    .line 2415
    const/4 v9, 0x1

    aget v9, v30, v9

    .line 2414
    move-object/from16 v0, v49

    invoke-static {v0, v5, v7, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 2418
    .end local v49    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v0, v35

    if-eq v5, v0, :cond_8

    if-nez v53, :cond_8

    .line 2419
    move/from16 v63, v35

    .line 2420
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2423
    :cond_8
    if-eqz v52, :cond_12

    .line 2424
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/launcher2/ItemInfo;

    .line 2425
    .local v56, "info":Lcom/android/launcher2/ItemInfo;
    if-eqz v54, :cond_9

    .line 2427
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v36, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v37, v5, v7

    .line 2429
    move-object/from16 v0, v56

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v38, v0

    move-object/from16 v0, v56

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v39, v0

    move-object/from16 v31, p0

    move-object/from16 v32, v28

    move-wide/from16 v33, v16

    .line 2428
    invoke-virtual/range {v31 .. v39}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 2433
    :cond_9
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v59

    check-cast v59, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2434
    .local v59, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2436
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2437
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2438
    const/4 v5, 0x1

    move-object/from16 v0, v59

    iput-boolean v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v38, v0

    .line 2440
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v39, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v40, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v42, v0

    move-wide/from16 v36, v16

    .line 2439
    invoke-static/range {v36 .. v42}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 2442
    const-wide/16 v9, -0x65

    cmp-long v5, v16, v9

    if-eqz v5, :cond_a

    .line 2443
    move-object/from16 v0, v28

    instance-of v5, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_a

    .line 2444
    move-object/from16 v50, v8

    .local v50, "cellLayout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v55, v28

    .line 2448
    check-cast v55, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2449
    .local v55, "hostView":Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v60

    .line 2450
    .local v60, "pinfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v60, :cond_a

    .line 2451
    move-object/from16 v0, v60

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v5, :cond_a

    .line 2452
    new-instance v48, Lcom/android/launcher2/Workspace$5;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v56

    move-object/from16 v3, v55

    move-object/from16 v4, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2458
    .local v48, "addResizeFrame":Ljava/lang/Runnable;
    new-instance v62, Lcom/android/launcher2/Workspace$6;

    .end local v62    # "resizeRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v62

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2470
    .end local v48    # "addResizeFrame":Ljava/lang/Runnable;
    .end local v50    # "cellLayout":Lcom/android/launcher2/CellLayout;
    .end local v55    # "hostView":Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v60    # "pinfo":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v62    # "resizeRunnable":Ljava/lang/Runnable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v31, v0

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v36, v0

    .line 2471
    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v37, v0

    move-object/from16 v32, v56

    move-wide/from16 v33, v16

    .line 2470
    invoke-static/range {v31 .. v37}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2482
    .end local v12    # "spanX":I
    .end local v13    # "spanY":I
    .end local v16    # "container":J
    .end local v20    # "distance":F
    .end local v24    # "minSpanX":I
    .end local v25    # "minSpanY":I
    .end local v30    # "resultSpan":[I
    .end local v35    # "screen":I
    .end local v52    # "foundCell":Z
    .end local v53    # "hasMovedIntoHotseat":Z
    .end local v54    # "hasMovedLayouts":Z
    .end local v56    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v57    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v59    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_b
    :goto_8
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/CellLayout;

    .line 2483
    .local v38, "parent":Lcom/android/launcher2/CellLayout;
    move-object/from16 v51, v62

    .line 2486
    .local v51, "finalResizeRunnable":Ljava/lang/Runnable;
    new-instance v40, Lcom/android/launcher2/Workspace$7;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2496
    .local v40, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2497
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v5}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2498
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/ItemInfo;

    .line 2499
    .local v37, "info":Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_14

    .line 2500
    if-eqz v61, :cond_13

    const/16 v41, 0x2

    .line 2502
    .local v41, "animationType":I
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v39, v0

    .line 2503
    const/16 v43, 0x0

    move-object/from16 v36, p0

    move-object/from16 v42, v28

    .line 2502
    invoke-virtual/range {v36 .. v43}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2513
    .end local v37    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v41    # "animationType":I
    :goto_a
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2362
    .end local v38    # "parent":Lcom/android/launcher2/CellLayout;
    .end local v40    # "onCompleteRunnable":Ljava/lang/Runnable;
    .end local v51    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_c
    const/16 v54, 0x0

    goto/16 :goto_2

    .line 2366
    .restart local v53    # "hasMovedIntoHotseat":Z
    .restart local v54    # "hasMovedLayouts":Z
    :cond_d
    const/16 v5, -0x64

    goto/16 :goto_3

    .line 2368
    .restart local v16    # "container":J
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v35

    goto/16 :goto_4

    .line 2369
    .restart local v35    # "screen":I
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 2370
    .restart local v12    # "spanX":I
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 2405
    .restart local v13    # "spanY":I
    .restart local v20    # "distance":F
    .restart local v24    # "minSpanX":I
    .restart local v25    # "minSpanY":I
    .restart local v30    # "resultSpan":[I
    .restart local v57    # "item":Lcom/android/launcher2/ItemInfo;
    :cond_11
    const/16 v52, 0x0

    goto/16 :goto_7

    .line 2474
    .restart local v52    # "foundCell":Z
    :cond_12
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v59

    check-cast v59, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2475
    .restart local v59    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v0, v59

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v9, v5, v7

    .line 2476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    move-object/from16 v0, v59

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v9, v5, v7

    .line 2477
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v58

    check-cast v58, Lcom/android/launcher2/CellLayout;

    .line 2478
    .local v58, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v58

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 2501
    .end local v12    # "spanX":I
    .end local v13    # "spanY":I
    .end local v16    # "container":J
    .end local v20    # "distance":F
    .end local v24    # "minSpanX":I
    .end local v25    # "minSpanY":I
    .end local v30    # "resultSpan":[I
    .end local v35    # "screen":I
    .end local v52    # "foundCell":Z
    .end local v53    # "hasMovedIntoHotseat":Z
    .end local v54    # "hasMovedLayouts":Z
    .end local v57    # "item":Lcom/android/launcher2/ItemInfo;
    .end local v58    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v59    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v37    # "info":Lcom/android/launcher2/ItemInfo;
    .restart local v38    # "parent":Lcom/android/launcher2/CellLayout;
    .restart local v40    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v51    # "finalResizeRunnable":Ljava/lang/Runnable;
    :cond_13
    const/16 v41, 0x0

    goto :goto_9

    .line 2505
    :cond_14
    if-gez v63, :cond_15

    const/16 v45, -0x1

    .line 2506
    .local v45, "duration":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v43, v0

    move-object/from16 v44, v28

    move-object/from16 v46, v40

    move-object/from16 v47, p0

    invoke-virtual/range {v42 .. v47}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_a

    .line 2505
    .end local v45    # "duration":I
    :cond_15
    const/16 v45, 0x12c

    goto :goto_b

    .line 2510
    .end local v37    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2511
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3539
    if-eqz p4, :cond_2

    .line 3540
    if-eq p1, p0, :cond_0

    .line 3541
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3542
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3543
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 3544
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3557
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3558
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3560
    :cond_1
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3561
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3564
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 3565
    return-void

    .line 3548
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3550
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3551
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3555
    .local v0, "cellLayout":Lcom/android/launcher2/CellLayout;
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    goto :goto_0

    .line 3553
    .end local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .restart local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    goto :goto_1
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3666
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 3667
    .local v0, "isPortrait":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v7

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 3668
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3669
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3670
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3695
    .end local v3    # "r":Landroid/graphics/Rect;
    :goto_1
    return v5

    .end local v0    # "isPortrait":Z
    :cond_0
    move v0, v6

    .line 3666
    goto :goto_0

    .line 3675
    .restart local v0    # "isPortrait":Z
    :cond_1
    const/4 v4, 0x0

    .line 3676
    .local v4, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_3

    .line 3677
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3679
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v5

    .line 3680
    if-nez p3, :cond_2

    const/4 v6, -0x1

    .line 3679
    :cond_2
    add-int v2, v5, v6

    .line 3683
    .local v2, "page":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3685
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 3686
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3687
    .local v1, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3691
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3692
    const/4 v4, 0x1

    .end local v1    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v2    # "page":I
    :cond_3
    move v5, v4

    .line 3695
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 3700
    const/4 v1, 0x0

    .line 3701
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 3702
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3703
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3704
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3705
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3707
    const/4 v1, 0x1

    .line 3708
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3710
    .end local v0    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_0
    return v1
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 3598
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 3603
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 773
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 761
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    goto :goto_0

    .line 766
    :sswitch_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-nez v1, :cond_0

    .line 767
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 768
    .local v0, "currentPage":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 759
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 4
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1885
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1886
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 1887
    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1892
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v2, :cond_0

    .line 1893
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1898
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1894
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1895
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1893
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1871
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 1872
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1876
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher2/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 1880
    iput p2, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    .line 1881
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1435
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1436
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 835
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 837
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 851
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 853
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 858
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v1, :cond_1

    .line 859
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 865
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    .line 866
    return-void

    .line 840
    :cond_2
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 842
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 846
    :cond_3
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 853
    goto :goto_1

    .line 860
    .restart local v0    # "i":I
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 869
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 871
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 878
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 879
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->forceMoveEvent()V

    .line 895
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 897
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 899
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 904
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 907
    :cond_2
    return-void

    .line 874
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    goto :goto_0

    .line 886
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 887
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 891
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1463
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1464
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1465
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1466
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1471
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :goto_0
    return v1

    .line 1468
    .restart local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1471
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3611
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3612
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 3613
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1590
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1591
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1594
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1595
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1597
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1598
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1599
    const-string v2, "android.wallpaper.tap"

    .line 1600
    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    .line 1597
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1601
    return-void

    .line 1599
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    .line 652
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->acceleratedOverScroll(F)V

    .line 1411
    return-void
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 3
    .param p1, "r"    # F

    .prologue
    .line 1302
    const v0, 0x3da3d70a    # 0.08f

    .line 1304
    .local v0, "threshold":F
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1305
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 1310
    :cond_0
    :goto_0
    div-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 1306
    :cond_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1307
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0
.end method

.method overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z
    .locals 10
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p2, "dragView"    # Lcom/android/launcher2/DragView;
    .param p3, "dragViewX"    # I
    .param p4, "dragViewY"    # I
    .param p5, "cachedInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 2796
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 2797
    .local v1, "draggedItemTopLeft":[F
    const/4 v7, 0x0

    int-to-float v8, p3

    aput v8, v1, v7

    .line 2798
    const/4 v7, 0x1

    int-to-float v8, p4

    aput v8, v1, v7

    .line 2799
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 2800
    .local v0, "draggedItemBottomRight":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2801
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2805
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2806
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2807
    .local v4, "overlapRegionLeft":F
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2809
    .local v6, "overlapRegionTop":F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    .line 2812
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2813
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2814
    .local v5, "overlapRegionRight":F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2816
    .local v3, "overlapRegionBottom":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 2817
    sub-float v7, v5, v4

    .line 2818
    sub-float v8, v3, v6

    .line 2817
    mul-float v2, v7, v8

    .line 2819
    .local v2, "overlap":F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    .line 2820
    const/4 v7, 0x1

    .line 2824
    .end local v2    # "overlap":F
    .end local v3    # "overlapRegionBottom":F
    .end local v5    # "overlapRegionRight":F
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 778
    .local v1, "clCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 797
    return-void

    .line 779
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 780
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 781
    .local v7, "swc":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    .line 782
    .local v4, "itemCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-lt v5, v4, :cond_1

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    :cond_1
    invoke-virtual {v7, v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 785
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v9, :cond_2

    .line 786
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 787
    .local v3, "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v6, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 788
    .local v6, "lahv":Lcom/android/launcher2/LauncherAppWidgetHostView;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->orientationChangedSincedInflation()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 789
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 791
    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 792
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Launcher;->bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 782
    .end local v3    # "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v6    # "lahv":Lcom/android/launcher2/LauncherAppWidgetHostView;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 3812
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3813
    .local v4, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 3815
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3816
    .local v0, "cellLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3895
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3896
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v5, p0, v1, v4}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;Ljava/util/HashSet;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3931
    return-void

    .line 3816
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 3817
    .local v3, "layoutParent":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 3820
    .local v2, "layout":Landroid/view/ViewGroup;
    new-instance v6, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v6, p0, v2, v4, v3}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 2
    .param p1, "screen"    # I

    .prologue
    .line 2531
    if-ltz p1, :cond_0

    .line 2532
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2533
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2534
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2535
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2537
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3481
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3482
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3483
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3484
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3485
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3486
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3487
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3488
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3489
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3490
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3491
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3493
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 3
    .param p1, "child"    # I

    .prologue
    .line 3624
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 3625
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3626
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3627
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 3629
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 3632
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3633
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 3638
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3639
    return-void

    .line 3634
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3635
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    .line 3633
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 4
    .param p1, "screenCenter"    # I

    .prologue
    .line 1359
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->screenScrolled(I)V

    .line 1361
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updatePageAlphaValues(I)V

    .line 1362
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1364
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1379
    return-void

    .line 1365
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1366
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher2/MyWorkspace;->Scroll(Lcom/android/launcher2/CellLayout;F)V

    .line 1364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 3643
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3644
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 3646
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3647
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3648
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3650
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 3654
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3655
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 3657
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3658
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3659
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3661
    :cond_1
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1279
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1280
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1281
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1283
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1232
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 1233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1237
    return-void

    .line 1234
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1235
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2660
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 2661
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 2662
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2664
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2665
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v1, -0x1

    .line 2643
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2645
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2647
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2648
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2651
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2652
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2653
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    .line 2654
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2668
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2669
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 2670
    iput p2, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    .line 2671
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 2673
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 2676
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 2677
    if-nez p1, :cond_2

    .line 2678
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2682
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2693
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 2695
    :cond_1
    return-void

    .line 2683
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2684
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2685
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2686
    :cond_3
    if-ne p1, v1, :cond_4

    .line 2687
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2688
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2689
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2690
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2691
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method setFadeForOverScroll(F)V
    .locals 6
    .param p1, "fade"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3996
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4009
    :goto_0
    return-void

    .line 3998
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 3999
    sub-float v3, v5, p1

    mul-float/2addr v3, v4

    add-float v1, v4, v3

    .line 4000
    .local v1, "reducedFade":F
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4003
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollingIndicator()Landroid/view/View;

    move-result-object v2

    .line 4005
    .local v2, "scrollIndicator":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    .line 4008
    sub-float v3, v5, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 5
    .param p1, "screen"    # I

    .prologue
    const/4 v4, 0x0

    .line 2518
    if-ltz p1, :cond_0

    .line 2519
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    .line 2520
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2521
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    .line 2522
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    .line 2523
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2524
    .local v1, "newX":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2525
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2526
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 2528
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "newX":I
    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3466
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3467
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3468
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3469
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3470
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3471
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3472
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3473
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3474
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3475
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3476
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3477
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 3479
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/launcher2/Workspace$CurrentPageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher2/Workspace$CurrentPageListener;

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->listener:Lcom/android/launcher2/Workspace$CurrentPageListener;

    .line 1355
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 6

    .prologue
    .line 953
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 954
    .local v3, "minDims":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 955
    .local v1, "maxDims":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 957
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 958
    .local v0, "maxDim":I
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 962
    .local v2, "minDim":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 963
    int-to-float v4, v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 964
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 969
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$2;

    const-string v5, "setWallpaperDimension"

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$2;->start()V

    .line 974
    return-void

    .line 966
    :cond_0
    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 967
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/DragController;)V
    .locals 2
    .param p1, "dragController"    # Lcom/android/launcher2/DragController;

    .prologue
    .line 3525
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 3526
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 3530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3531
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 3532
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 467
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 468
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v1

    .line 468
    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1206
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1208
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1209
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1210
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1212
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1229
    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 0
    .param p1, "whichPage"    # I

    .prologue
    .line 1053
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 1055
    return-void
.end method

.method protected snapToPage(II)V
    .locals 0
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1059
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(II)V

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 1061
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1067
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1068
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->snapToPage(II)V

    .line 1069
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher2/CellLayout$CellInfo;

    .prologue
    .line 2039
    iget-object v1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2042
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2059
    :goto_0
    return-void

    .line 2046
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2047
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2049
    .local v2, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 2051
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2052
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2054
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2057
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2058
    invoke-virtual {p0, v1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    goto :goto_0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 3592
    const/4 v0, 0x0

    return v0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 3982
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 3978
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .prologue
    .line 1047
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateCurrentPageScroll()V

    .line 1048
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 1049
    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V
    .locals 13
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 3568
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    .line 3570
    .local v10, "count":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 3571
    .local v4, "screen":I
    const/16 v9, -0x64

    .line 3573
    .local v9, "container":I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    const/4 v4, -0x1

    .line 3575
    const/16 v9, -0x65

    .line 3578
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v10, :cond_1

    .line 3588
    return-void

    .line 3579
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3580
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 3582
    .local v1, "info":Lcom/android/launcher2/ItemInfo;
    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_2

    .line 3583
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 3584
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    int-to-long v2, v9

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 3585
    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3584
    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIII)V

    .line 3578
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 17
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
    .line 3934
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v4

    .line 3935
    .local v4, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 3963
    return-void

    .line 3935
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3936
    .local v9, "layout":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v9}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 3937
    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 3938
    invoke-virtual {v9, v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3939
    .local v13, "view":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 3940
    .local v12, "tag":Ljava/lang/Object;
    instance-of v15, v12, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v15, :cond_2

    move-object v5, v12

    .line 3941
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 3945
    .local v5, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v6, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3946
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 3947
    .local v10, "name":Landroid/content/ComponentName;
    iget v15, v5, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-nez v15, :cond_2

    .line 3948
    const-string v15, "android.intent.action.MAIN"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v10, :cond_2

    .line 3949
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3950
    .local v2, "appCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    if-lt v8, v2, :cond_3

    .line 3937
    .end local v2    # "appCount":I
    .end local v5    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "k":I
    .end local v10    # "name":Landroid/content/ComponentName;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3951
    .restart local v2    # "appCount":I
    .restart local v5    # "info":Lcom/android/launcher2/ShortcutInfo;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "k":I
    .restart local v10    # "name":Landroid/content/ComponentName;
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 3952
    .local v1, "app":Lcom/android/launcher2/ApplicationInfo;
    iget-object v15, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v11, v13

    .line 3953
    check-cast v11, Lcom/android/launcher2/BubbleTextView;

    .line 3954
    .local v11, "shortcut":Lcom/android/launcher2/BubbleTextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v5, v15}, Lcom/android/launcher2/ShortcutInfo;->updateIcon(Lcom/android/launcher2/IconCache;)V

    .line 3955
    iget-object v15, v1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 3956
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v11, v5, v15}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 3950
    .end local v11    # "shortcut":Lcom/android/launcher2/BubbleTextView;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public updateWallpaperOffsetImmediately()V
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1021
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z
    .locals 7
    .param p1, "dragInfo"    # Ljava/lang/Object;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2239
    iget v5, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v5, p4, v5

    if-lez v5, :cond_1

    .line 2255
    :cond_0
    :goto_0
    return v3

    .line 2240
    :cond_1
    aget v5, p3, v3

    aget v6, p3, v4

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2242
    .local v0, "dropOverView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2243
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2244
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_0

    .line 2249
    .end local v2    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    instance-of v5, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 2250
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2251
    .local v1, "fi":Lcom/android/launcher2/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 2252
    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z
    .locals 9
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher2/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2210
    iget v7, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v7, p4, v7

    if-lez v7, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return v6

    .line 2211
    :cond_1
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 2213
    .local v1, "dropOverView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2214
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2215
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v8, :cond_0

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v7, v8, :cond_0

    .line 2220
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 2221
    .local v2, "hasntMoved":Z
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v7, :cond_3

    .line 2222
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, v7, :cond_5

    move v2, v5

    .line 2225
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p5, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v7, :cond_0

    .line 2229
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/ShortcutInfo;

    .line 2231
    .local v0, "aboveShortcut":Z
    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v7, :cond_6

    .line 2232
    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eq v7, v5, :cond_6

    move v4, v6

    .line 2234
    .local v4, "willBecomeShortcut":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    move v6, v5

    goto :goto_0

    .end local v0    # "aboveShortcut":Z
    .end local v4    # "willBecomeShortcut":Z
    :cond_5
    move v2, v6

    .line 2222
    goto :goto_1

    .restart local v0    # "aboveShortcut":Z
    :cond_6
    move v4, v5

    .line 2230
    goto :goto_2
.end method
