.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellAndSpan;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$ItemConfiguration;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$ReorderHintAnimation;,
        Lcom/android/launcher2/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field private static final DESTRUCTIVE_REORDER:Z = false

.field private static final INVALID_DIRECTION:I = -0x64

.field static final LANDSCAPE:I = 0x0

.field public static final MODE_ACCEPT_DROP:I = 0x3

.field public static final MODE_DRAG_OVER:I = 0x0

.field public static final MODE_ON_DROP:I = 0x1

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x2

.field static final PORTRAIT:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_HINT_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mHotseatScale:F

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mIsHotseat:Z

.field private mItemPlacementDirty:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

.field mPreviousReorderDirection:[I

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderHintAnimationMagnitude:F

.field private mScrollingTransformsDirty:Z

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ReorderHintAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

.field mTempLocation:[I

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private mWidthGap:I

.field temp:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 167
    sput-object v0, Lcom/android/launcher2/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 180
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 80
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 81
    new-instance v11, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v11}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 85
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 86
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 87
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 91
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 95
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    .line 96
    const/4 v11, 0x2

    new-array v11, v11, [I

    fill-array-data v11, :array_0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    .line 98
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 100
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 112
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 113
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 117
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 118
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 120
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    new-array v11, v11, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 123
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 124
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 129
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 131
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 133
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    .line 136
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 138
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 143
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    .line 144
    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    .line 160
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 161
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 162
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    .line 163
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    .line 411
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    .line 1390
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 182
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->setFocusable(Z)V

    .line 184
    new-instance v11, Lcom/android/launcher2/DropTarget$DragEnforcer;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 188
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    move-object/from16 v11, p1

    .line 189
    check-cast v11, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 191
    sget-object v11, Lcom/android/launcher/R$styleable;->CellLayout:[I

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v11, v2, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 193
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 194
    const/4 v11, 0x1

    const/16 v12, 0xa

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 195
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 196
    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 197
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    .line 198
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 199
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 200
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 201
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Z

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 202
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v12, 0x0

    const/16 v13, -0x64

    aput v13, v11, v12

    .line 203
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v12, 0x1

    const/16 v13, -0x64

    aput v13, v11, v12

    .line 205
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 210
    .local v8, "res":Landroid/content/res/Resources;
    sget v11, Lcom/android/launcher/R$integer;->hotseat_item_scale_percentage:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    .line 212
    sget v11, Lcom/android/launcher/R$drawable;->homescreen_blue_normal_holo:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 213
    sget v11, Lcom/android/launcher/R$drawable;->homescreen_blue_strong_holo:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 215
    sget v11, Lcom/android/launcher/R$drawable;->overscroll_glow_left:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 216
    sget v11, Lcom/android/launcher/R$drawable;->overscroll_glow_right:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 218
    sget v11, Lcom/android/launcher/R$dimen;->workspace_overscroll_drawable_padding:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 217
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 220
    const v11, 0x3df5c28f    # 0.12f

    .line 221
    sget v12, Lcom/android/launcher/R$dimen;->app_icon_size:I

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    .line 220
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    .line 223
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 228
    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v12, 0x40200000    # 2.5f

    invoke-direct {v11, v12}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    aput v15, v11, v12

    .line 232
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v11, v11

    if-lt v7, v11, :cond_0

    .line 240
    sget v11, Lcom/android/launcher/R$integer;->config_dragOutlineFadeTime:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 241
    .local v5, "duration":I
    const/4 v6, 0x0

    .line 242
    .local v6, "fromAlphaValue":F
    sget v11, Lcom/android/launcher/R$integer;->config_dragOutlineMaxAlpha:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v10, v11

    .line 244
    .local v10, "toAlphaValue":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([FF)V

    .line 246
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v11, v11

    if-lt v7, v11, :cond_1

    .line 286
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 287
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 289
    new-instance v11, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 290
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 292
    return-void

    .line 233
    .end local v5    # "duration":I
    .end local v6    # "fromAlphaValue":F
    .end local v10    # "toAlphaValue":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v11, v7

    .line 232
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 248
    .restart local v5    # "duration":I
    .restart local v6    # "fromAlphaValue":F
    .restart local v10    # "toAlphaValue":F
    :cond_1
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v11, v5

    const/4 v13, 0x0

    invoke-direct {v4, v11, v12, v13, v10}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 249
    .local v4, "anim":Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 250
    move v9, v7

    .line 251
    .local v9, "thisIndex":I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4, v9}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v4}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v11, v7

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 96
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$1(Lcom/android/launcher2/CellLayout;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/launcher2/CellLayout;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method static synthetic access$3(Lcom/android/launcher2/CellLayout;)[I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher2/CellLayout;)F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    return v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher2/CellLayout;)[F
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 1620
    iget-object v0, p4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1621
    .local v9, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    const/4 v10, 0x0

    .line 1622
    .local v10, "success":Z
    iget v1, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1623
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1625
    iget v1, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1627
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1629
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 1630
    const/4 v10, 0x1

    .line 1632
    :cond_0
    iget v1, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1633
    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 25
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1968
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v22, 0x1

    .line 2020
    :cond_0
    return v22

    .line 1970
    :cond_1
    const/16 v22, 0x0

    .line 1971
    .local v22, "success":Z
    const/16 v17, 0x0

    .line 1973
    .local v17, "boundingRect":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1983
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1988
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 1989
    .local v7, "blockOccupied":[[Z
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1990
    .local v23, "top":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 1993
    .local v21, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 2000
    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 2001
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    .line 2000
    invoke-direct/range {v8 .. v16}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 2004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_2

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    .line 2006
    .local v19, "deltaX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    .line 2007
    .local v20, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2012
    const/16 v22, 0x1

    .line 2016
    .end local v19    # "deltaX":I
    .end local v20    # "deltaY":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 2017
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2018
    .local v18, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    .line 1973
    .end local v7    # "blockOccupied":[[Z
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v21    # "left":I
    .end local v23    # "top":I
    .end local v24    # "v":Landroid/view/View;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1974
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1975
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-nez v17, :cond_4

    .line 1976
    new-instance v17, Landroid/graphics/Rect;

    .end local v17    # "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1977
    .restart local v17    # "boundingRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 1978
    :cond_4
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    goto/16 :goto_0

    .line 1983
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1984
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1985
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_1

    .line 1993
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    .restart local v7    # "blockOccupied":[[Z
    .restart local v21    # "left":I
    .restart local v23    # "top":I
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 1994
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1995
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int v3, v2, v21

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int v4, v2, v23

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_2

    .line 2007
    .end local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v24    # "v":Landroid/view/View;
    .restart local v19    # "deltaX":I
    .restart local v20    # "deltaY":I
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    .line 2008
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2009
    .restart local v18    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    add-int v3, v3, v19

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2010
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    add-int v3, v3, v20

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto/16 :goto_3
.end method

.method private animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .prologue
    .line 2286
    iget-object v14, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 2287
    .local v14, "occupied":[[Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-lt v12, v1, :cond_1

    .line 2293
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2294
    .local v11, "childCount":I
    const/4 v12, 0x0

    :goto_1
    if-lt v12, v11, :cond_3

    .line 2304
    if-eqz p3, :cond_0

    .line 2305
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2306
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    .line 2305
    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2308
    :cond_0
    return-void

    .line 2288
    .end local v11    # "childCount":I
    :cond_1
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lt v13, v1, :cond_2

    .line 2287
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2289
    :cond_2
    aget-object v1, v14, v12

    const/4 v3, 0x0

    aput-boolean v3, v1, v13

    .line 2288
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2295
    .end local v13    # "j":I
    .restart local v11    # "childCount":I
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v12}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2296
    .local v2, "child":Landroid/view/View;
    move-object/from16 v0, p2

    if-ne v2, v0, :cond_5

    .line 2294
    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2297
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2298
    .local v10, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v10, :cond_4

    .line 2299
    iget v3, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    .line 2300
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 2299
    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2301
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 5
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2032
    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 2035
    aget v0, p3, v1

    .line 2036
    .local v0, "temp":I
    aput v2, p3, v1

    .line 2038
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2039
    if-eqz v3, :cond_1

    .line 2121
    .end local v0    # "temp":I
    :cond_0
    :goto_0
    return v1

    .line 2042
    .restart local v0    # "temp":I
    :cond_1
    aput v0, p3, v1

    .line 2043
    aget v0, p3, v2

    .line 2044
    aput v2, p3, v2

    .line 2046
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2047
    if-nez v3, :cond_0

    .line 2051
    aput v0, p3, v2

    .line 2054
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2055
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2056
    aget v0, p3, v1

    .line 2057
    aput v2, p3, v1

    .line 2058
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2059
    if-nez v3, :cond_0

    .line 2063
    aput v0, p3, v1

    .line 2064
    aget v0, p3, v2

    .line 2065
    aput v2, p3, v2

    .line 2066
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2067
    if-nez v3, :cond_0

    .line 2071
    aput v0, p3, v2

    .line 2072
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2073
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    .line 2121
    goto :goto_0

    .line 2078
    .end local v0    # "temp":I
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2079
    if-nez v3, :cond_0

    .line 2083
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2084
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2085
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2086
    if-nez v3, :cond_0

    .line 2090
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2091
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2097
    aget v0, p3, v1

    .line 2098
    .restart local v0    # "temp":I
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2099
    aput v0, p3, v2

    .line 2100
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2101
    if-nez v3, :cond_0

    .line 2106
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2107
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2108
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    .line 2109
    if-nez v3, :cond_0

    .line 2113
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 2114
    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    .line 2117
    aget v0, p3, v1

    .line 2118
    aget v3, p3, v2

    aput v3, p3, v1

    .line 2119
    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 13
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "delay"    # I

    .prologue
    .line 2312
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v10

    .line 2313
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v10, :cond_0

    .line 2324
    return-void

    .line 2314
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v11}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2315
    .local v2, "child":Landroid/view/View;
    if-ne v2, p2, :cond_2

    .line 2313
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2316
    :cond_2
    iget-object v1, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2317
    .local v9, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2318
    .local v12, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-eqz v9, :cond_1

    .line 2319
    new-instance v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v3, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2320
    iget v5, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v8, v9, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object v1, p0

    .line 2319
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;-><init>(Lcom/android/launcher2/CellLayout;Landroid/view/View;IIIIII)V

    .line 2321
    .local v0, "rha":Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->animate()V

    goto :goto_1
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 3130
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_0

    .line 3135
    return-void

    .line 3131
    :cond_0
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_1

    .line 3130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3132
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 3131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 836
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 837
    .local v0, "cellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 838
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 839
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 840
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 841
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 842
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 843
    return-void
.end method

.method private commitTempPlacement()V
    .locals 8

    .prologue
    .line 2449
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-lt v2, v6, :cond_0

    .line 2454
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 2455
    .local v1, "childCount":I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    .line 2472
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/launcher2/Workspace;->updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V

    .line 2473
    return-void

    .line 2450
    .end local v1    # "childCount":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lt v4, v6, :cond_1

    .line 2449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2451
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    aget-object v7, v7, v2

    aget-boolean v7, v7, v4

    aput-boolean v7, v6, v4

    .line 2450
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2456
    .end local v4    # "j":I
    .restart local v1    # "childCount":I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2457
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2458
    .local v5, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ItemInfo;

    .line 2461
    .local v3, "info":Lcom/android/launcher2/ItemInfo;
    if-eqz v3, :cond_5

    .line 2462
    iget v6, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v6, v7, :cond_3

    iget v6, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v6, v7, :cond_3

    .line 2463
    iget v6, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_3

    iget v6, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v6, v7, :cond_4

    .line 2464
    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 2466
    :cond_4
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2467
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2468
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2469
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2455
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private completeAndClearReorderHintAnimations()V
    .locals 3

    .prologue
    .line 2442
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2445
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2446
    return-void

    .line 2442
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    .line 2443
    .local v0, "a":Lcom/android/launcher2/CellLayout$ReorderHintAnimation;
    invoke-static {v0}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->access$0(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V

    goto :goto_0
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .prologue
    const/4 v7, 0x1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    .line 2183
    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 2185
    .local v0, "angle":D
    aput v4, p3, v4

    .line 2186
    aput v4, p3, v7

    .line 2187
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_0

    .line 2188
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    .line 2190
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v5

    if-lez v2, :cond_1

    .line 2191
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v7

    .line 2193
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V
    .locals 10
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "temp"    # Z

    .prologue
    .line 2244
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    .line 2245
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v7, :cond_0

    .line 2256
    return-void

    .line 2246
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2247
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2249
    .local v9, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-eqz p2, :cond_1

    .line 2250
    new-instance v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher2/CellLayout;IIII)V

    .line 2254
    .local v0, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :goto_1
    invoke-virtual {p1, v6, v0}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher2/CellLayout$CellAndSpan;)V

    .line 2245
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2252
    .end local v0    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :cond_1
    new-instance v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    iget v2, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher2/CellLayout;IIII)V

    .restart local v0    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    goto :goto_1
.end method

.method private copyOccupiedArray([[Z)V
    .locals 4
    .param p1, "occupied"    # [[Z

    .prologue
    .line 2196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-lt v0, v2, :cond_0

    .line 2201
    return-void

    .line 2197
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_1

    .line 2196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2198
    :cond_1
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v0

    aget-boolean v3, v3, v1

    aput-boolean v3, v2, v1

    .line 2197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 13
    .param p1, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 2259
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-lt v10, v0, :cond_0

    .line 2265
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v9

    .line 2266
    .local v9, "childCount":I
    const/4 v10, 0x0

    :goto_1
    if-lt v10, v9, :cond_2

    .line 2279
    iget v1, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2280
    iget v4, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    .line 2279
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2281
    return-void

    .line 2260
    .end local v9    # "childCount":I
    :cond_0
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lt v11, v0, :cond_1

    .line 2259
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2261
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    aget-object v0, v0, v10

    const/4 v1, 0x0

    aput-boolean v1, v0, v11

    .line 2260
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2267
    .end local v11    # "j":I
    .restart local v9    # "childCount":I
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2268
    .local v8, "child":Landroid/view/View;
    if-ne v8, p2, :cond_4

    .line 2266
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2269
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2270
    .local v12, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2271
    .local v7, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v7, :cond_3

    .line 2272
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 2273
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 2274
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2275
    iget v0, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iput v0, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2276
    iget v1, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_3
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 20
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .prologue
    .line 1569
    if-eqz p8, :cond_1

    move-object/from16 v5, p8

    .line 1570
    .local v5, "bestXY":[I
    :goto_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1571
    .local v4, "bestDistance":F
    const/high16 v3, -0x80000000

    .line 1573
    .local v3, "bestDirectionScore":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1574
    .local v6, "countX":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1576
    .local v7, "countY":I
    const/16 v16, 0x0

    .local v16, "y":I
    :goto_1
    add-int/lit8 v17, p4, -0x1

    sub-int v17, v7, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 1611
    const v17, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v17, v4, v17

    if-nez v17, :cond_0

    .line 1612
    const/16 v17, 0x0

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 1613
    const/16 v17, 0x1

    const/16 v18, -0x1

    aput v18, v5, v17

    .line 1615
    :cond_0
    return-object v5

    .line 1569
    .end local v3    # "bestDirectionScore":I
    .end local v4    # "bestDistance":F
    .end local v5    # "bestXY":[I
    .end local v6    # "countX":I
    .end local v7    # "countY":I
    .end local v16    # "y":I
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v5, v0, [I

    goto :goto_0

    .line 1578
    .restart local v3    # "bestDirectionScore":I
    .restart local v4    # "bestDistance":F
    .restart local v5    # "bestXY":[I
    .restart local v6    # "countX":I
    .restart local v7    # "countY":I
    .restart local v16    # "y":I
    :cond_2
    const/4 v15, 0x0

    .local v15, "x":I
    :goto_2
    add-int/lit8 v17, p3, -0x1

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-lt v15, v0, :cond_3

    .line 1576
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1580
    :cond_3
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move/from16 v0, p3

    if-lt v13, v0, :cond_8

    .line 1589
    sub-int v17, v15, p1

    sub-int v18, v15, p1

    mul-int v17, v17, v18

    sub-int v18, v16, p2

    sub-int v19, v16, p2

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v11, v0

    .line 1590
    .local v11, "distance":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 1591
    .local v8, "curDirection":[I
    sub-int v17, v15, p1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v16, p2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->computeDirectionVector(FF[I)V

    .line 1594
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    mul-int v17, v17, v18

    .line 1595
    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v8, v19

    mul-int v18, v18, v19

    .line 1594
    add-int v9, v17, v18

    .line 1596
    .local v9, "curDirectionScore":I
    const/4 v12, 0x0

    .line 1597
    .local v12, "exactDirectionOnly":Z
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1598
    const/16 v17, 0x0

    aget v17, p5, v17

    const/16 v18, 0x0

    aget v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1597
    const/4 v10, 0x1

    .line 1599
    .local v10, "directionMatches":Z
    :goto_4
    if-nez v10, :cond_4

    if-nez v12, :cond_5

    .line 1600
    :cond_4
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-ltz v17, :cond_6

    :cond_5
    invoke-static {v11, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v17

    if-nez v17, :cond_7

    .line 1601
    if-le v9, v3, :cond_7

    .line 1602
    :cond_6
    move v4, v11

    .line 1603
    move v3, v9

    .line 1604
    const/16 v17, 0x0

    aput v15, v5, v17

    .line 1605
    const/16 v17, 0x1

    aput v16, v5, v17

    .line 1578
    .end local v8    # "curDirection":[I
    .end local v9    # "curDirectionScore":I
    .end local v10    # "directionMatches":Z
    .end local v11    # "distance":F
    .end local v12    # "exactDirectionOnly":Z
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1581
    :cond_8
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    move/from16 v0, p4

    if-lt v14, v0, :cond_9

    .line 1580
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1582
    :cond_9
    add-int v17, v15, v13

    aget-object v17, p6, v17

    add-int v18, v16, v14

    aget-boolean v17, v17, v18

    if-eqz v17, :cond_a

    if-eqz p7, :cond_7

    aget-object v17, p7, v13

    aget-boolean v17, v17, v14

    if-nez v17, :cond_7

    .line 1581
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 1597
    .end local v14    # "j":I
    .restart local v8    # "curDirection":[I
    .restart local v9    # "curDirectionScore":I
    .restart local v11    # "distance":F
    .restart local v12    # "exactDirectionOnly":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_4
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3108
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_0
    if-lt v4, p4, :cond_0

    move v6, v5

    .line 3126
    :goto_1
    return v6

    .line 3109
    :cond_0
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2
    if-lt v3, p3, :cond_1

    .line 3108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3110
    :cond_1
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_3

    move v0, v5

    .line 3111
    .local v0, "available":Z
    :goto_3
    move v1, v3

    .local v1, "i":I
    :goto_4
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    if-lt v3, p3, :cond_4

    .line 3118
    :cond_2
    if-eqz v0, :cond_8

    .line 3119
    aput v3, p0, v5

    .line 3120
    aput v4, p0, v6

    goto :goto_1

    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_3
    move v0, v6

    .line 3110
    goto :goto_3

    .line 3112
    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    :cond_4
    move v2, v4

    .local v2, "j":I
    :goto_5
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_5

    if-lt v4, p4, :cond_6

    .line 3111
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3113
    :cond_6
    if-eqz v0, :cond_7

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_7

    move v0, v6

    .line 3114
    :goto_6
    if-eqz v0, :cond_2

    .line 3112
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move v0, v5

    .line 3113
    goto :goto_6

    .line 3109
    .end local v2    # "j":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 26
    .param p1, "dragViewCenterX"    # I
    .param p2, "dragViewCenterY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "resultDirection"    # [I

    .prologue
    .line 2516
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "targetDestination":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 2518
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    .line 2519
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 2520
    .local v13, "dragRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2521
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2523
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 2524
    .local v20, "dropRegionRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    .line 2524
    invoke-direct/range {v14 .. v21}, Lcom/android/launcher2/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2527
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 2528
    .local v24, "dropRegionSpanX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    .line 2530
    .local v25, "dropRegionSpanY":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 2531
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v15, p0

    .line 2530
    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2533
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    .line 2534
    .local v22, "deltaX":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    .line 2536
    .local v23, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 2537
    :cond_0
    const/16 v22, 0x0

    .line 2539
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    .line 2540
    :cond_2
    const/16 v23, 0x0

    .line 2543
    :cond_3
    if-nez v22, :cond_4

    if-nez v23, :cond_4

    .line 2545
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    .line 2546
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    .line 2550
    :goto_0
    return-void

    .line 2548
    :cond_4
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/CellLayout;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method static getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V
    .locals 18
    .param p0, "metrics"    # Landroid/graphics/Rect;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "measureWidth"    # I
    .param p3, "measureHeight"    # I
    .param p4, "countX"    # I
    .param p5, "countY"    # I
    .param p6, "orientation"    # I

    .prologue
    .line 979
    add-int/lit8 v9, p4, -0x1

    .line 980
    .local v9, "numWidthGaps":I
    add-int/lit8 v8, p5, -0x1

    .line 991
    .local v8, "numHeightGaps":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_max_gap:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 992
    .local v7, "maxGap":I
    if-nez p6, :cond_2

    .line 993
    sget v17, Lcom/android/launcher/R$dimen;->workspace_cell_width_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 994
    .local v3, "cellWidth":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_cell_height_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 995
    .local v2, "cellHeight":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_width_gap_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 996
    .local v16, "widthGap":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_height_gap_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 997
    .local v6, "heightGap":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_left_padding_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 998
    .local v11, "paddingLeft":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_right_padding_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 999
    .local v12, "paddingRight":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_top_padding_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1000
    .local v13, "paddingTop":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_bottom_padding_land:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1013
    .local v10, "paddingBottom":I
    :goto_0
    if-ltz v16, :cond_0

    if-gez v6, :cond_1

    .line 1014
    :cond_0
    sub-int v17, p2, v11

    sub-int v5, v17, v12

    .line 1015
    .local v5, "hSpace":I
    sub-int v17, p3, v13

    sub-int v15, v17, v10

    .line 1016
    .local v15, "vSpace":I
    mul-int v17, p4, v3

    sub-int v4, v5, v17

    .line 1017
    .local v4, "hFreeSpace":I
    mul-int v17, p5, v2

    sub-int v14, v15, v17

    .line 1018
    .local v14, "vFreeSpace":I
    if-lez v9, :cond_3

    div-int v17, v4, v9

    :goto_1
    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1019
    if-lez v8, :cond_4

    div-int v17, v14, v8

    :goto_2
    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1021
    .end local v4    # "hFreeSpace":I
    .end local v5    # "hSpace":I
    .end local v14    # "vFreeSpace":I
    .end local v15    # "vSpace":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1022
    return-void

    .line 1003
    .end local v2    # "cellHeight":I
    .end local v3    # "cellWidth":I
    .end local v6    # "heightGap":I
    .end local v10    # "paddingBottom":I
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingRight":I
    .end local v13    # "paddingTop":I
    .end local v16    # "widthGap":I
    :cond_2
    sget v17, Lcom/android/launcher/R$dimen;->workspace_cell_width_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1004
    .restart local v3    # "cellWidth":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_cell_height_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1005
    .restart local v2    # "cellHeight":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_width_gap_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 1006
    .restart local v16    # "widthGap":I
    sget v17, Lcom/android/launcher/R$dimen;->workspace_height_gap_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1007
    .restart local v6    # "heightGap":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_left_padding_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1008
    .restart local v11    # "paddingLeft":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_right_padding_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1009
    .restart local v12    # "paddingRight":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_top_padding_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1010
    .restart local v13    # "paddingTop":I
    sget v17, Lcom/android/launcher/R$dimen;->cell_layout_bottom_padding_port:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .restart local v10    # "paddingBottom":I
    goto :goto_0

    .line 1018
    .restart local v4    # "hFreeSpace":I
    .restart local v5    # "hSpace":I
    .restart local v14    # "vFreeSpace":I
    .restart local v15    # "vSpace":I
    :cond_3
    const/16 v17, 0x0

    goto :goto_1

    .line 1019
    :cond_4
    const/16 v17, 0x0

    goto :goto_2
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "boundingRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2555
    .local p7, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p6, :cond_0

    .line 2556
    add-int v7, p1, p3

    add-int v8, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 2558
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2559
    new-instance v5, Landroid/graphics/Rect;

    add-int v7, p1, p3

    add-int v8, p2, p4

    invoke-direct {v5, p1, p2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2560
    .local v5, "r0":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2561
    .local v6, "r1":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 2562
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 2574
    return-void

    .line 2563
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2564
    .local v1, "child":Landroid/view/View;
    move-object/from16 v0, p5

    if-ne v1, v0, :cond_3

    .line 2562
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2565
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2566
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v9, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v10, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v11, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2567
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2568
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    if-eqz p6, :cond_2

    .line 2570
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "numCells"    # I

    .prologue
    .line 309
    sget v2, Lcom/android/launcher/R$dimen;->workspace_cell_height:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 310
    .local v0, "cellHeight":I
    sget v2, Lcom/android/launcher/R$dimen;->workspace_width_gap:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 311
    sget v3, Lcom/android/launcher/R$dimen;->workspace_height_gap:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 310
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 313
    .local v1, "minGap":I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V
    .locals 6
    .param p1, "icon"    # Lcom/android/launcher2/BubbleTextView;

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 343
    .local v0, "padding":I
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 344
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 345
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 346
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    .line 343
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    .line 347
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 1397
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1394
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "occupied"    # [[Z
    .param p3, "value"    # Z

    .prologue
    .line 2024
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 2025
    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "occupied"    # [[Z
    .param p6, "value"    # Z

    .prologue
    .line 3162
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 3168
    :cond_0
    return-void

    .line 3163
    :cond_1
    move v0, p1

    .local v0, "x":I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_0

    .line 3164
    move v1, p2

    .local v1, "y":I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lt v1, v2, :cond_3

    .line 3163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3165
    :cond_3
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    .line 3164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 20
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1874
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v11, Lcom/android/launcher2/CellLayout$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher2/CellLayout$ViewCluster;-><init>(Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V

    .line 1875
    .local v11, "cluster":Lcom/android/launcher2/CellLayout$ViewCluster;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1878
    .local v12, "clusterRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 1882
    .local v13, "fail":Z
    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    .line 1883
    const/16 v18, 0x0

    .line 1884
    .local v18, "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .line 1897
    .local v16, "pushDistance":I
    :goto_0
    if-gtz v16, :cond_4

    .line 1898
    const/4 v14, 0x0

    .line 1963
    :cond_0
    return v14

    .line 1885
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    .line 1886
    const/16 v18, 0x2

    .line 1887
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    .line 1888
    .restart local v16    # "pushDistance":I
    goto :goto_0

    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    .line 1889
    const/16 v18, 0x1

    .line 1890
    .restart local v18    # "whichEdge":I
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .line 1891
    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1892
    .end local v16    # "pushDistance":I
    .end local v18    # "whichEdge":I
    :cond_3
    const/16 v18, 0x3

    .line 1893
    .restart local v18    # "whichEdge":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    .restart local v16    # "pushDistance":I
    goto :goto_0

    .line 1902
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1910
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->save()V

    .line 1915
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 1917
    :goto_2
    if-lez v16, :cond_5

    if-eqz v13, :cond_7

    .line 1945
    :cond_5
    const/4 v14, 0x0

    .line 1946
    .local v14, "foundSolution":Z
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1950
    if-nez v13, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-gt v3, v4, :cond_b

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_b

    .line 1951
    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-gt v3, v4, :cond_b

    .line 1952
    const/4 v14, 0x1

    .line 1958
    :goto_3
    iget-object v3, v11, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1959
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1960
    .local v10, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    .line 1902
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v14    # "foundSolution":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1903
    .restart local v17    # "v":Landroid/view/View;
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1904
    .restart local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto/16 :goto_1

    .line 1918
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v17    # "v":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1938
    :goto_6
    add-int/lit8 v16, v16, -0x1

    .line 1942
    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lcom/android/launcher2/CellLayout$ViewCluster;->shift(II)V

    goto/16 :goto_2

    .line 1918
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1922
    .restart local v17    # "v":Landroid/view/View;
    iget-object v3, v11, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_8

    .line 1923
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1924
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1925
    .local v15, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v3, v15, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_a

    .line 1927
    const/4 v13, 0x1

    .line 1928
    goto :goto_6

    .line 1930
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1931
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1934
    .restart local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v4, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    .line 1954
    .end local v10    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v15    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v17    # "v":Landroid/view/View;
    .restart local v14    # "foundSolution":Z
    :cond_b
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->restore()V

    goto/16 :goto_3
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 14
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 2127
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2175
    :goto_0
    return v2

    .line 2129
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2130
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2133
    if-eqz p6, :cond_2

    .line 2134
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2135
    .local v8, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v8, :cond_2

    .line 2136
    iput p1, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2137
    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2140
    .end local v8    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    move/from16 v0, p2

    invoke-direct {v11, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2141
    .local v11, "r0":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2142
    .local v12, "r1":Landroid/graphics/Rect;
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2158
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 2159
    if-eqz v2, :cond_6

    .line 2160
    const/4 v2, 0x1

    goto :goto_0

    .line 2142
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2143
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    .line 2144
    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2145
    .restart local v8    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2146
    .local v10, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v8, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2147
    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2148
    iget-boolean v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_5

    .line 2149
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2151
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2164
    .end local v8    # "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v2

    .line 2165
    if-eqz v2, :cond_7

    .line 2166
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2170
    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2175
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2170
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 2171
    .local v13, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v13, v3, v0, v1}, Lcom/android/launcher2/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2172
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3045
    sget v5, Lcom/android/launcher/R$dimen;->workspace_cell_width:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3046
    .local v1, "actualWidth":I
    sget v5, Lcom/android/launcher/R$dimen;->workspace_cell_height:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3047
    .local v0, "actualHeight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3050
    .local v2, "smallerSize":I
    int-to-float v5, p1

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 3051
    .local v3, "spanX":I
    int-to-float v5, p2

    int-to-float v6, v2

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 3053
    .local v4, "spanY":I
    if-nez p3, :cond_0

    .line 3054
    const/4 v5, 0x2

    new-array p3, v5, [I

    .end local p3    # "result":[I
    aput v3, p3, v7

    aput v4, p3, v8

    .line 3058
    :goto_0
    return-object p3

    .line 3056
    .restart local p3    # "result":[I
    :cond_0
    aput v3, p3, v7

    .line 3057
    aput v4, p3, v8

    goto :goto_0
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1400
    .local p1, "used":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    return-void

    .line 1401
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "numCells"    # I

    .prologue
    .line 298
    sget v2, Lcom/android/launcher/R$dimen;->workspace_cell_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 299
    .local v0, "cellWidth":I
    sget v2, Lcom/android/launcher/R$dimen;->workspace_width_gap:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 300
    sget v3, Lcom/android/launcher/R$dimen;->workspace_height_gap:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 299
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 302
    .local v1, "minGap":I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher2/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    .line 617
    move-object v2, p4

    .line 632
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 633
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/android/launcher/R$integer;->myiconback:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 634
    instance-of v4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 635
    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 637
    .local v0, "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    sget v4, Lcom/android/launcher/R$color;->workspace_icon_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BubbleTextView;->setTextColor(I)V

    .line 673
    .end local v0    # "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 674
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 678
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v4, :cond_9

    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_9

    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v4, :cond_9

    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_9

    .line 681
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 682
    :cond_1
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 684
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 686
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 688
    if-eqz p5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 690
    :cond_3
    const/4 v4, 0x1

    .line 692
    :goto_1
    return v4

    .line 641
    :cond_4
    instance-of v4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v4, :cond_7

    move-object v0, p1

    .line 642
    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 644
    .restart local v0    # "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    iget-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    if-eqz v4, :cond_5

    .line 645
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 658
    :goto_2
    sget v4, Lcom/android/launcher/R$color;->workspace_icon_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BubbleTextView;->setTextColor(I)V

    goto :goto_0

    .line 651
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher/R$bool;->icon_focusable:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 652
    .local v1, "icon_focusable":Z
    if-eqz v1, :cond_6

    .line 653
    sget v4, Lcom/android/launcher/R$drawable;->pageviewchild_bg:I

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BubbleTextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 655
    :cond_6
    sget v4, Lcom/android/launcher/R$drawable;->icon_back:I

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BubbleTextView;->setBackgroundResource(I)V

    goto :goto_2

    .line 660
    .end local v0    # "bubbleChild":Lcom/android/launcher2/BubbleTextView;
    .end local v1    # "icon_focusable":Z
    :cond_7
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/launcher/R$bool;->icon_focusable:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 664
    .restart local v1    # "icon_focusable":Z
    if-eqz v1, :cond_8

    .line 665
    sget v4, Lcom/android/launcher/R$drawable;->pageviewchild_bg:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 667
    :cond_8
    sget v4, Lcom/android/launcher/R$drawable;->icon_back:I

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 692
    .end local v1    # "icon_focusable":Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 1146
    .local v9, "clc":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 1147
    .local v11, "occupied":[[Z
    if-nez p6, :cond_0

    .line 1148
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 1151
    :cond_0
    invoke-virtual {v9, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1153
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 1156
    .local v10, "info":Lcom/android/launcher2/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1157
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1158
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    :cond_1
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1162
    .local v4, "oldX":I
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1163
    .local v6, "oldY":I
    if-eqz p7, :cond_2

    .line 1164
    iget v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aget-object v1, v11, v1

    iget v2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/4 v8, 0x0

    aput-boolean v8, v1, v2

    .line 1165
    aget-object v1, v11, p2

    const/4 v2, 0x1

    aput-boolean v2, v1, p3

    .line 1167
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1168
    if-eqz p6, :cond_3

    .line 1169
    iput p2, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1170
    move/from16 v0, p3

    iput v0, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1175
    :goto_0
    invoke-virtual {v9, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1176
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1177
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1178
    .local v5, "newX":I
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1180
    .local v7, "newY":I
    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1181
    iput v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1184
    if-ne v4, v5, :cond_4

    if-ne v6, v7, :cond_4

    .line 1185
    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1186
    const/4 v1, 0x1

    .line 1224
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4    # "oldX":I
    .end local v5    # "newX":I
    .end local v6    # "oldY":I
    .end local v7    # "newY":I
    .end local v10    # "info":Lcom/android/launcher2/ItemInfo;
    :goto_1
    return v1

    .line 1172
    .restart local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v4    # "oldX":I
    .restart local v6    # "oldY":I
    .restart local v10    # "info":Lcom/android/launcher2/ItemInfo;
    :cond_3
    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 1173
    move/from16 v0, p3

    iput v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_0

    .line 1189
    .restart local v5    # "newX":I
    .restart local v7    # "newY":I
    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 1190
    .local v12, "va":Landroid/animation/ValueAnimator;
    move/from16 v0, p4

    int-to-long v1, v0

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1191
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    new-instance v1, Lcom/android/launcher2/CellLayout$3;

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1202
    new-instance v1, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1220
    move/from16 v0, p5

    int-to-long v1, v0

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1221
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 1222
    const/4 v1, 0x1

    goto :goto_1

    .line 1224
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4    # "oldX":I
    .end local v5    # "newX":I
    .end local v6    # "oldY":I
    .end local v7    # "newY":I
    .end local v10    # "info":Lcom/android/launcher2/ItemInfo;
    .end local v12    # "va":Landroid/animation/ValueAnimator;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1189
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->buildLayer()V

    .line 326
    return-void
.end method

.method public calculateSpans(Lcom/android/launcher2/ItemInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    const/4 v4, 0x1

    .line 3075
    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 3076
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .local v1, "minWidth":I
    move-object v3, p1

    .line 3077
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    .line 3086
    .local v0, "minHeight":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v2

    .line 3087
    .local v2, "spans":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3088
    aget v3, v2, v4

    iput v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3089
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    .end local v2    # "spans":[I
    :goto_1
    return-void

    .line 3078
    :cond_0
    instance-of v3, p1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 3079
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .restart local v1    # "minWidth":I
    move-object v3, p1

    .line 3080
    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v0, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    .line 3081
    .restart local v0    # "minHeight":I
    goto :goto_0

    .line 3083
    .end local v0    # "minHeight":I
    .end local v1    # "minWidth":I
    :cond_1
    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 589
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 592
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 593
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 597
    return-void

    .line 594
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 595
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public cellSpansToSize(II)[I
    .locals 5
    .param p1, "hSpans"    # I
    .param p2, "vSpans"    # I

    .prologue
    .line 3062
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3063
    .local v0, "size":[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3064
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3065
    return-object v0
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v3, 0x1

    .line 906
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 907
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 891
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 893
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 894
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 895
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3013
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 3014
    .local v2, "cellWidth":I
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 3015
    .local v1, "cellHeight":I
    iget v8, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 3016
    .local v8, "widthGap":I
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 3018
    .local v5, "heightGap":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    .line 3019
    .local v3, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v6

    .line 3021
    .local v6, "vStartPadding":I
    mul-int v11, p3, v2

    add-int/lit8 v12, p3, -0x1

    mul-int/2addr v12, v8

    add-int v7, v11, v12

    .line 3022
    .local v7, "width":I
    mul-int v11, p4, v1

    add-int/lit8 v12, p4, -0x1

    mul-int/2addr v12, v5

    add-int v4, v11, v12

    .line 3024
    .local v4, "height":I
    add-int v11, v2, v8

    mul-int/2addr v11, p1

    add-int v9, v3, v11

    .line 3025
    .local v9, "x":I
    add-int v11, v1, v5

    mul-int/2addr v11, p2

    add-int v10, v6, v11

    .line 3027
    .local v10, "y":I
    add-int v11, v9, v7

    add-int v12, v10, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3028
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3195
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 6

    .prologue
    .line 1326
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1327
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1328
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 1329
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 568
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 569
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 570
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 571
    return-void
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 17
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .prologue
    .line 2635
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p8

    .line 2637
    if-nez p9, :cond_0

    .line 2638
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 p9, v0

    .line 2644
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p10

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_a

    .line 2645
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, -0x64

    if-eq v2, v3, :cond_a

    .line 2646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2649
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_3

    .line 2650
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    const/16 v4, -0x64

    aput v4, v2, v3

    .line 2660
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v11, 0x1

    new-instance v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    .line 2659
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v16

    .line 2664
    .local v16, "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    new-instance v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 2663
    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v15

    .line 2666
    .local v15, "noShuffleSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    const/4 v13, 0x0

    .line 2667
    .local v13, "finalSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_b

    .line 2668
    move-object/from16 v13, v16

    .line 2673
    :cond_4
    :goto_1
    const/4 v14, 0x1

    .line 2675
    .local v14, "foundSolution":Z
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2678
    if-eqz v13, :cond_e

    .line 2679
    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    aput v3, p8, v2

    .line 2680
    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    aput v3, p8, v2

    .line 2681
    const/4 v2, 0x0

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v3, p9, v2

    .line 2682
    const/4 v2, 0x1

    iget v3, v13, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v3, p9, v2

    .line 2687
    if-eqz p10, :cond_5

    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_7

    .line 2689
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1}, Lcom/android/launcher2/CellLayout;->copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2691
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2692
    const/4 v2, 0x1

    move/from16 v0, p10

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellLayout;->animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2695
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_d

    .line 2696
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitTempPlacement()V

    .line 2697
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2698
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2709
    :cond_7
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, p10

    if-eq v0, v2, :cond_8

    if-nez v14, :cond_9

    .line 2710
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2713
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2714
    return-object p8

    .line 2654
    .end local v13    # "finalSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .end local v14    # "foundSolution":Z
    .end local v15    # "noShuffleSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .end local v16    # "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 2656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_0

    .line 2669
    .restart local v13    # "finalSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .restart local v15    # "noShuffleSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .restart local v16    # "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :cond_b
    iget-boolean v2, v15, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_4

    .line 2670
    move-object v13, v15

    goto/16 :goto_1

    .line 2692
    .restart local v14    # "foundSolution":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 2701
    :cond_d
    const/16 v2, 0x96

    .line 2700
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher2/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_3

    .line 2705
    :cond_e
    const/4 v14, 0x0

    .line 2706
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, p9, v5

    aput v6, p9, v4

    aput v6, p8, v3

    aput v6, p8, v2

    goto :goto_3
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 22
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .prologue
    .line 2603
    const/4 v4, 0x2

    new-array v9, v4, [I

    .local v9, "pixelXY":[I
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 2604
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2607
    const/4 v4, 0x0

    aget v11, v9, v4

    const/4 v4, 0x1

    aget v12, v9, v4

    .line 2608
    const/16 v19, 0x1

    new-instance v20, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V

    move-object/from16 v10, p0

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p5

    .line 2607
    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v21

    .line 2610
    .local v21, "swapSolution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2611
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_0

    .line 2615
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2616
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2617
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2619
    if-eqz p7, :cond_1

    .line 2620
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitTempPlacement()V

    .line 2621
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2622
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2627
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2629
    :cond_0
    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    return v4

    .line 2625
    :cond_1
    const/16 v4, 0x96

    .line 2624
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 322
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 541
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 543
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 544
    .local v0, "p":Landroid/graphics/Paint;
    sget-object v1, Lcom/android/launcher2/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 545
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 546
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 548
    .end local v0    # "p":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 318
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .param p1, "originX"    # I
    .param p2, "originY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1237
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1238
    .local v1, "countX":I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1242
    .local v2, "countY":I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1245
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1246
    .local v3, "rightOverhang":I
    if-lez v3, :cond_0

    .line 1247
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1249
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1250
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1251
    .local v0, "bottomOverhang":I
    if-lez v0, :cond_1

    .line 1252
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1254
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1255
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2841
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    const/4 v4, -0x1

    .line 2858
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "ignoreView"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 2872
    .line 2873
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    .line 2872
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 8
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I

    .prologue
    .line 2890
    .line 2891
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2890
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z
    .locals 13
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "occupied"    # [[Z

    .prologue
    .line 2900
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 2902
    const/4 v4, 0x0

    .line 2904
    .local v4, "foundCell":Z
    :goto_0
    const/4 v7, 0x0

    .line 2905
    .local v7, "startX":I
    if-ltz p4, :cond_0

    .line 2906
    add-int/lit8 v11, p2, -0x1

    sub-int v11, p4, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2908
    :cond_0
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v12, p2, -0x1

    sub-int v2, v11, v12

    .line 2909
    .local v2, "endX":I
    if-ltz p4, :cond_1

    .line 2910
    add-int/lit8 v11, p2, -0x1

    add-int v12, p4, v11

    const/4 v11, 0x1

    if-ne p2, v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    add-int/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2912
    :cond_1
    const/4 v8, 0x0

    .line 2913
    .local v8, "startY":I
    if-ltz p5, :cond_2

    .line 2914
    add-int/lit8 v11, p3, -0x1

    sub-int v11, p5, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2916
    :cond_2
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v12, p3, -0x1

    sub-int v3, v11, v12

    .line 2917
    .local v3, "endY":I
    if-ltz p5, :cond_3

    .line 2918
    add-int/lit8 v11, p3, -0x1

    add-int v12, p5, v11

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    add-int/2addr v11, v12

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2921
    :cond_3
    move v10, v8

    .local v10, "y":I
    :goto_3
    if-ge v10, v3, :cond_4

    if-eqz v4, :cond_7

    .line 2942
    :cond_4
    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_d

    const/4 v11, -0x1

    move/from16 v0, p5

    if-ne v0, v11, :cond_d

    .line 2954
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 2955
    return v4

    .line 2910
    .end local v3    # "endY":I
    .end local v8    # "startY":I
    .end local v10    # "y":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 2918
    .restart local v3    # "endY":I
    .restart local v8    # "startY":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2923
    .restart local v10    # "y":I
    :cond_7
    move v9, v7

    .local v9, "x":I
    :goto_4
    if-lt v9, v2, :cond_8

    .line 2921
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2924
    :cond_8
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    if-lt v5, p2, :cond_a

    .line 2934
    if-eqz p1, :cond_9

    .line 2935
    const/4 v11, 0x0

    aput v9, p1, v11

    .line 2936
    const/4 v11, 0x1

    aput v10, p1, v11

    .line 2938
    :cond_9
    const/4 v4, 0x1

    .line 2939
    goto :goto_5

    .line 2925
    :cond_a
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7
    move/from16 v0, p3

    if-lt v6, v0, :cond_b

    .line 2924
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2926
    :cond_b
    add-int v11, v9, v5

    aget-object v11, p7, v11

    add-int v12, v10, v6

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_c

    .line 2929
    add-int/2addr v9, v5

    .line 2923
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2925
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2947
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v9    # "x":I
    :cond_d
    const/16 p4, -0x1

    .line 2948
    const/16 p5, -0x1

    .line 2903
    goto/16 :goto_0
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .locals 11
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 2485
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 2486
    .local v9, "result":[I
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 2487
    .local v10, "resultSpan":[I
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    .line 2489
    const/4 v1, 0x0

    aget v1, v9, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v9, v1

    if-ltz v1, :cond_0

    .line 2490
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V

    .line 2491
    const/4 v1, 0x0

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2492
    const/4 v1, 0x1

    aget v1, v9, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2493
    const/4 v1, 0x0

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2494
    const/4 v1, 0x1

    aget v1, v10, v1

    move-object/from16 v0, p8

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2495
    const/4 v1, 0x1

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2499
    :goto_0
    return-object p8

    .line 2497
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p8

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 32
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreView"    # Landroid/view/View;
    .param p8, "ignoreOccupied"    # Z
    .param p9, "result"    # [I
    .param p10, "resultSpan"    # [I
    .param p11, "occupied"    # [[Z

    .prologue
    .line 1424
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->lazyInitTempRectStack()V

    .line 1426
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 1431
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p5, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p1, v0

    .line 1432
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int/lit8 v28, p6, -0x1

    mul-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    sub-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1435
    if-eqz p9, :cond_1

    move-object/from16 v7, p9

    .line 1436
    .local v7, "bestXY":[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1437
    .local v4, "bestDistance":D
    new-instance v6, Landroid/graphics/Rect;

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1438
    .local v6, "bestRect":Landroid/graphics/Rect;
    new-instance v21, Ljava/util/Stack;

    invoke-direct/range {v21 .. v21}, Ljava/util/Stack;-><init>()V

    .line 1440
    .local v21, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1441
    .local v10, "countX":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1443
    .local v11, "countY":I
    if-lez p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    if-lez p6, :cond_0

    .line 1444
    move/from16 v0, p5

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    move/from16 v0, p6

    move/from16 v1, p4

    if-ge v0, v1, :cond_2

    .line 1542
    :cond_0
    :goto_1
    return-object v7

    .line 1435
    .end local v4    # "bestDistance":D
    .end local v6    # "bestRect":Landroid/graphics/Rect;
    .end local v7    # "bestXY":[I
    .end local v10    # "countX":I
    .end local v11    # "countY":I
    .end local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_1
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v7, v0, [I

    goto :goto_0

    .line 1448
    .restart local v4    # "bestDistance":D
    .restart local v6    # "bestRect":Landroid/graphics/Rect;
    .restart local v7    # "bestXY":[I
    .restart local v10    # "countX":I
    .restart local v11    # "countY":I
    .restart local v21    # "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :cond_2
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_2
    add-int/lit8 v26, p4, -0x1

    sub-int v26, v11, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 1537
    const-wide v26, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v26, v4, v26

    if-nez v26, :cond_3

    .line 1538
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1539
    const/16 v26, 0x1

    const/16 v27, -0x1

    aput v27, v7, v26

    .line 1541
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    goto :goto_1

    .line 1450
    :cond_4
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_3
    add-int/lit8 v26, p3, -0x1

    sub-int v26, v10, v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_5

    .line 1448
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1451
    :cond_5
    const/16 v25, -0x1

    .line 1452
    .local v25, "ySize":I
    const/16 v23, -0x1

    .line 1453
    .local v23, "xSize":I
    if-eqz p8, :cond_6

    .line 1455
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_c

    .line 1462
    move/from16 v23, p3

    .line 1463
    move/from16 v25, p4

    .line 1468
    const/16 v18, 0x1

    .line 1469
    .local v18, "incX":Z
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_e

    const/4 v15, 0x1

    .line 1470
    .local v15, "hitMaxX":Z
    :goto_5
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_f

    const/16 v16, 0x1

    .line 1471
    .local v16, "hitMaxY":Z
    :goto_6
    if-eqz v15, :cond_10

    if-eqz v16, :cond_10

    .line 1497
    const/16 v18, 0x1

    .line 1498
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_1c

    const/4 v15, 0x1

    .line 1499
    :goto_7
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_6

    .line 1501
    .end local v15    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 1502
    .local v8, "cellXY":[I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 1508
    .local v12, "currentRect":Landroid/graphics/Rect;
    add-int v26, v22, v23

    add-int v27, v24, v25

    move/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1509
    const/4 v9, 0x0

    .line 1510
    .local v9, "contained":Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_1d

    .line 1516
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const/16 v26, 0x0

    aget v26, v8, v26

    sub-int v26, v26, p1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    .line 1518
    const/16 v28, 0x1

    aget v28, v8, v28

    sub-int v28, v28, p2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v28

    .line 1517
    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 1520
    .local v13, "distance":D
    cmpg-double v26, v13, v4

    if-gtz v26, :cond_8

    if-eqz v9, :cond_9

    .line 1521
    :cond_8
    invoke-virtual {v12, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1522
    :cond_9
    move-wide v4, v13

    .line 1523
    const/16 v26, 0x0

    aput v22, v7, v26

    .line 1524
    const/16 v26, 0x1

    aput v24, v7, v26

    .line 1525
    if-eqz p10, :cond_a

    .line 1526
    const/16 v26, 0x0

    aput v23, p10, v26

    .line 1527
    const/16 v26, 0x1

    aput v25, p10, v26

    .line 1529
    :cond_a
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1450
    .end local v8    # "cellXY":[I
    .end local v9    # "contained":Z
    .end local v12    # "currentRect":Landroid/graphics/Rect;
    .end local v13    # "distance":D
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 1456
    .restart local v17    # "i":I
    :cond_c
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, p4

    if-lt v0, v1, :cond_d

    .line 1455
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 1457
    :cond_d
    add-int v26, v22, v17

    aget-object v26, p11, v26

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-nez v26, :cond_b

    .line 1456
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 1469
    .end local v19    # "j":I
    .restart local v18    # "incX":Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 1470
    .restart local v15    # "hitMaxX":Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 1472
    .restart local v16    # "hitMaxY":Z
    :cond_10
    if-eqz v18, :cond_15

    if-nez v15, :cond_15

    .line 1473
    const/16 v19, 0x0

    .restart local v19    # "j":I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_12

    .line 1479
    if-nez v15, :cond_11

    .line 1480
    add-int/lit8 v23, v23, 0x1

    .line 1493
    .end local v19    # "j":I
    :cond_11
    :goto_b
    move/from16 v0, v23

    move/from16 v1, p5

    if-lt v0, v1, :cond_19

    const/16 v26, 0x1

    :goto_c
    or-int v15, v15, v26

    .line 1494
    move/from16 v0, v25

    move/from16 v1, p6

    if-lt v0, v1, :cond_1a

    const/16 v26, 0x1

    :goto_d
    or-int v16, v16, v26

    .line 1495
    if-eqz v18, :cond_1b

    const/16 v18, 0x0

    :goto_e
    goto/16 :goto_6

    .line 1474
    .restart local v19    # "j":I
    :cond_12
    add-int v26, v22, v23

    add-int/lit8 v27, v10, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_13

    add-int v26, v22, v23

    aget-object v26, p11, v26

    add-int v27, v24, v19

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_14

    .line 1476
    :cond_13
    const/4 v15, 0x1

    .line 1473
    :cond_14
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 1482
    .end local v19    # "j":I
    :cond_15
    if-nez v16, :cond_11

    .line 1483
    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_16

    .line 1489
    if-nez v16, :cond_11

    .line 1490
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 1484
    :cond_16
    add-int v26, v24, v25

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_17

    add-int v26, v22, v17

    aget-object v26, p11, v26

    add-int v27, v24, v25

    aget-boolean v26, v26, v27

    if-eqz v26, :cond_18

    .line 1486
    :cond_17
    const/16 v16, 0x1

    .line 1483
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 1493
    :cond_19
    const/16 v26, 0x0

    goto :goto_c

    .line 1494
    :cond_1a
    const/16 v26, 0x0

    goto :goto_d

    .line 1495
    :cond_1b
    const/16 v18, 0x1

    goto :goto_e

    .line 1498
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1510
    .end local v15    # "hitMaxX":Z
    .end local v16    # "hitMaxY":Z
    .end local v17    # "i":I
    .end local v18    # "incX":Z
    .restart local v8    # "cellXY":[I
    .restart local v9    # "contained":Z
    .restart local v12    # "currentRect":Landroid/graphics/Rect;
    :cond_1d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 1511
    .local v20, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1512
    const/4 v9, 0x1

    .line 1513
    goto/16 :goto_8
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "ignoreView"    # Landroid/view/View;
    .param p6, "ignoreOccupied"    # Z
    .param p7, "result"    # [I

    .prologue
    .line 1386
    .line 1387
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1386
    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 2837
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .prologue
    .line 2818
    const/4 v8, 0x1

    .line 2819
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 2818
    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .prologue
    .line 1366
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "ignoreView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2798
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 1346
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3190
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3200
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1104
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 954
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 950
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenScale()F
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 967
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "r":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 969
    .restart local p1    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 970
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 971
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 972
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 973
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 974
    return-object p1
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 3176
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3177
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v1, v2

    .line 3176
    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 3171
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 3172
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v1, v2

    .line 3171
    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 943
    aget v1, p3, v4

    aget v2, p3, v7

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 944
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 945
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    aget v3, v3, v7

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 944
    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 946
    .local v0, "distance":F
    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 1136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 846
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .param p1, "vacant"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 3102
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    return v0
.end method

.method public hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 559
    return-void
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .prologue
    .line 2578
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 2579
    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    .line 2580
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2579
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2581
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOccupied(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3181
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 3182
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 3184
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 3379
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    .line 3144
    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3149
    :cond_0
    :goto_0
    return-void

    .line 3147
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3148
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    .line 3153
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "occupied"    # [[Z

    .prologue
    .line 3155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    .line 3158
    :cond_0
    :goto_0
    return-void

    .line 3156
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3157
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 749
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 750
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 751
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2965
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 2966
    return-void
.end method

.method onDragExit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2972
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2976
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 2977
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 2981
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    aput v3, v0, v4

    .line 2982
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 2983
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 2984
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2985
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2986
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 438
    .local v6, "bg":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x437f0000    # 255.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 440
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 443
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 444
    .local v14, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_4

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v13

    .line 459
    .local v13, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 460
    .local v5, "b":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    sub-int v18, v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    sub-int v19, v19, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 464
    const/16 v20, 0x0

    .line 461
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 485
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v13    # "padding":I
    :cond_1
    sget v15, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 488
    .local v15, "previewOffset":I
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v12, v0, :cond_6

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    if-ltz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    if-ltz v18, :cond_2

    .line 522
    sget-object v9, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 523
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 524
    .local v17, "width":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 526
    .local v11, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 528
    .local v7, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v8, v18, v19

    .line 530
    .local v8, "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 531
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v8, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 532
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 533
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 536
    .end local v7    # "centerX":I
    .end local v8    # "centerY":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v11    # "height":I
    .end local v17    # "width":I
    :cond_2
    return-void

    .line 435
    .end local v12    # "i":I
    .end local v14    # "paint":Landroid/graphics/Paint;
    .end local v15    # "previewOffset":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .restart local v6    # "bg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 445
    .end local v6    # "bg":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "i":I
    .restart local v14    # "paint":Landroid/graphics/Paint;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v18, v0

    aget v4, v18, v12

    .line 446
    .local v4, "alpha":F
    const/16 v18, 0x0

    cmpl-float v18, v4, v18

    if-lez v18, :cond_5

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v16, v18, v12

    .line 448
    .local v16, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->scaleRectAboutCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 450
    .restart local v5    # "b":Landroid/graphics/Bitmap;
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v4

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 451
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 444
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v16    # "r":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 489
    .end local v4    # "alpha":F
    .restart local v15    # "previewOffset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 492
    .local v10, "fra":Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    sget-object v9, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 493
    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 494
    .restart local v17    # "width":I
    move/from16 v11, v17

    .line 495
    .restart local v11    # "height":I
    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v18, v0

    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 498
    .restart local v7    # "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v8, v18, v19

    .line 500
    .restart local v8    # "centerY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 501
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v11, 0x2

    sub-int v19, v8, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 502
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 503
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 507
    sget-object v9, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-virtual {v10}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 509
    move/from16 v11, v17

    .line 510
    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    move/from16 v18, v0

    iget v0, v10, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    div-int/lit8 v19, v15, 0x2

    add-int v8, v18, v19

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 515
    div-int/lit8 v18, v17, 0x2

    sub-int v18, v7, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, v17, 0x2

    sub-int v19, v8, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 516
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 517
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 488
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2996
    if-eqz p1, :cond_0

    .line 2997
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2998
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 2999
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3001
    .end local v0    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 820
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const/4 v1, 0x1

    .line 832
    :goto_0
    return v1

    .line 828
    :cond_1
    if-nez v0, :cond_2

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 832
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 1078
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1083
    return-void

    .line 1079
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    .line 1081
    sub-int v5, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1080
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1078
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1026
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1027
    .local v17, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1029
    .local v18, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1030
    .local v8, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 1032
    .local v9, "heightSpecSize":I
    if-eqz v17, :cond_0

    if-nez v8, :cond_1

    .line 1033
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1036
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 1037
    .local v14, "numWidthGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1039
    .local v13, "numHeightGaps":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 1040
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v20

    sub-int v7, v19, v20

    .line 1041
    .local v7, "hSpace":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v9, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v20

    sub-int v16, v19, v20

    .line 1042
    .local v16, "vSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v6, v7, v19

    .line 1043
    .local v6, "hFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v15, v16, v19

    .line 1044
    .local v15, "vFreeSpace":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v14, :cond_4

    div-int v19, v6, v14

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 1045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    move/from16 v20, v0

    if-lez v13, :cond_5

    div-int v19, v15, v13

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 1053
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :goto_2
    move/from16 v12, v18

    .line 1054
    .local v12, "newWidth":I
    move v11, v9

    .line 1055
    .local v11, "newHeight":I
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    .line 1056
    add-int v12, v19, v20

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    .line 1058
    add-int v11, v19, v20

    .line 1060
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 1063
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v5

    .line 1064
    .local v5, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-lt v10, v5, :cond_7

    .line 1072
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 1073
    return-void

    .line 1044
    .end local v5    # "count":I
    .end local v10    # "i":I
    .end local v11    # "newHeight":I
    .end local v12    # "newWidth":I
    .restart local v6    # "hFreeSpace":I
    .restart local v7    # "hSpace":I
    .restart local v15    # "vFreeSpace":I
    .restart local v16    # "vSpace":I
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1045
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1048
    .end local v6    # "hFreeSpace":I
    .end local v7    # "hSpace":I
    .end local v15    # "vFreeSpace":I
    .end local v16    # "vSpace":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 1049
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    goto/16 :goto_2

    .line 1065
    .restart local v5    # "count":I
    .restart local v10    # "i":I
    .restart local v11    # "newHeight":I
    .restart local v12    # "newWidth":I
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1066
    .local v2, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    sub-int v19, v12, v19

    .line 1067
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v20

    .line 1066
    sub-int v19, v19, v20

    .line 1067
    const/high16 v20, 0x40000000    # 2.0f

    .line 1066
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1068
    .local v3, "childWidthMeasureSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    sub-int v19, v11, v19

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v20

    .line 1068
    sub-int v19, v19, v20

    .line 1069
    const/high16 v20, 0x40000000    # 2.0f

    .line 1068
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1070
    .local v4, "childheightMeasureSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1064
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method public onMove(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newCellX"    # I
    .param p3, "newCellY"    # I
    .param p4, "newSpanX"    # I
    .param p5, "newSpanY"    # I

    .prologue
    .line 3138
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 3139
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 3140
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 1087
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1088
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1089
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 1090
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    sub-int v4, p2, v4

    .line 1089
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1091
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 857
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 859
    .local v1, "vStartPadding":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 860
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 862
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 863
    .local v2, "xAxis":I
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 865
    .local v3, "yAxis":I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 866
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 867
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 868
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 869
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    .line 878
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 879
    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2503
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 2504
    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "result"    # [I

    .prologue
    .line 3039
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 919
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 920
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    .line 921
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 920
    aput v3, p5, v2

    .line 922
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    .line 923
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v4, p4

    add-int/lit8 v5, p4, -0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 922
    aput v3, p5, v2

    .line 924
    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # Landroid/graphics/Rect;

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 935
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 936
    .local v3, "vStartPadding":I
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int v1, v0, v4

    .line 937
    .local v1, "left":I
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int v2, v3, v4

    .line 938
    .local v2, "top":I
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v4, p3

    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 939
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v5, p4

    add-int/lit8 v6, p4, -0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    .line 938
    invoke-virtual {p5, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 940
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 698
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 699
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 705
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 707
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 716
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 722
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 723
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 728
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 711
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 733
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 737
    return-void

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 741
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 745
    return-void

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected resetOverscrollTransforms()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 393
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 396
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 397
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 400
    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
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
    .line 580
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method revertTempState()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 2585
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2599
    :goto_0
    return-void

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    .line 2587
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-lt v9, v8, :cond_1

    .line 2597
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2598
    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2589
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2590
    .local v10, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_2

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_3

    .line 2591
    :cond_2
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 2592
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 2593
    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2587
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public scaleRect(Landroid/graphics/Rect;F)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "scale"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 403
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 404
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 405
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 406
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 407
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 409
    :cond_0
    return-void
.end method

.method scaleRectAboutCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 4
    .param p1, "in"    # Landroid/graphics/Rect;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F

    .prologue
    .line 413
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 414
    .local v0, "cx":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 415
    .local v1, "cy":I
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 416
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 417
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->scaleRect(Landroid/graphics/Rect;F)V

    .line 418
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 419
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1119
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1120
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 1121
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1123
    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1
    .param p1, "multiplier"    # F

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1109
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 1110
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1112
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    .line 1096
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1101
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 565
    return-void
.end method

.method public setGridSize(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 334
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 335
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 336
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 337
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 339
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .param p1, "isDragOverlapping"    # Z

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 376
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 379
    :cond_0
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 0
    .param p1, "isHotseat"    # Z

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    .line 613
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 2718
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    .line 2719
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 601
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 350
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 356
    :cond_0
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 357
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 359
    return-void

    .line 352
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 387
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher2/BubbleTextView;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 365
    .local v0, "oldIcon":Lcom/android/launcher2/BubbleTextView;
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 372
    :cond_1
    return-void
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1127
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1130
    return-void

    .line 1128
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 15
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 755
    .local v0, "cellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 756
    .local v5, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollX()I

    move-result v11

    add-int v9, p1, v11

    .line 757
    .local v9, "x":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollY()I

    move-result v11

    add-int v10, p2, v11

    .line 758
    .local v10, "y":I
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v11}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 760
    .local v3, "count":I
    const/4 v4, 0x0

    .line 761
    .local v4, "found":Z
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_0
    if-gez v6, :cond_1

    .line 791
    :goto_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 793
    if-nez v4, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 795
    .local v1, "cellXY":[I
    invoke-virtual {p0, v9, v10, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 797
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 798
    const/4 v11, 0x0

    aget v11, v1, v11

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 799
    const/4 v11, 0x1

    aget v11, v1, v11

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 800
    const/4 v11, 0x1

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 801
    const/4 v11, 0x1

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 803
    .end local v1    # "cellXY":[I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 804
    return-void

    .line 762
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v11, v6}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 763
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 765
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 766
    :cond_2
    iget-boolean v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v11, :cond_3

    .line 767
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 769
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v8

    .line 770
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v13

    .line 771
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 770
    invoke-direct {v5, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 775
    .restart local v5    # "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 776
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    .line 777
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 776
    invoke-virtual {v5, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 779
    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 780
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 781
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 782
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 783
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 784
    iget v11, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 785
    const/4 v4, 0x1

    .line 786
    goto/16 :goto_1

    .line 761
    .end local v8    # "scale":F
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0
.end method

.method public setUseTempCoords(Z)V
    .locals 4
    .param p1, "useTempCoords"    # Z

    .prologue
    .line 2476
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2477
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 2481
    return-void

    .line 2478
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2479
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean p1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return v0
.end method

.method public showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1
    .param p1, "fra"    # Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .locals 20
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z
    .param p10, "solution"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .prologue
    .line 2206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V

    .line 2209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/CellLayout;->copyOccupiedArray([[Z)V

    .line 2213
    const/4 v2, 0x2

    new-array v7, v2, [I

    .local v7, "result":[I
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    .line 2214
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    .line 2216
    const/16 v19, 0x0

    .line 2219
    .local v19, "success":Z
    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v8, p0

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v19

    .line 2222
    if-nez v19, :cond_3

    .line 2225
    move/from16 v0, p5

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    if-eqz p9, :cond_1

    .line 2226
    :cond_0
    add-int/lit8 v13, p5, -0x1

    .line 2227
    const/16 v17, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    .line 2226
    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object p10

    .line 2240
    .end local p10    # "solution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :goto_0
    return-object p10

    .line 2228
    .restart local p10    # "solution":Lcom/android/launcher2/CellLayout$ItemConfiguration;
    :cond_1
    move/from16 v0, p6

    move/from16 v1, p4

    if-le v0, v1, :cond_2

    .line 2229
    add-int/lit8 v14, p6, -0x1

    .line 2230
    const/16 v17, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v18, p10

    .line 2229
    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object p10

    goto :goto_0

    .line 2232
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2234
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p10

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2235
    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2236
    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p10

    iput v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2237
    move/from16 v0, p5

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2238
    move/from16 v0, p6

    move-object/from16 v1, p10

    iput v0, v1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    goto :goto_0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragOutline"    # Landroid/graphics/Bitmap;
    .param p3, "originX"    # I
    .param p4, "originY"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "resize"    # Z
    .param p10, "dragOffset"    # Landroid/graphics/Point;
    .param p11, "dragRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 1259
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 1260
    .local v10, "oldDragCellX":I
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aget v11, v2, v3

    .line 1262
    .local v11, "oldDragCellY":I
    if-eqz p1, :cond_1

    if-nez p10, :cond_1

    .line 1263
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v4, v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1268
    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 1323
    :cond_0
    :goto_1
    return-void

    .line 1265
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1272
    :cond_2
    move/from16 v0, p5

    if-ne v0, v10, :cond_3

    move/from16 v0, p6

    if-eq v0, v11, :cond_0

    .line 1273
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x0

    aput p5, v2, v3

    .line 1274
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v3, 0x1

    aput p6, v2, v3

    .line 1276
    iget-object v14, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 1277
    .local v14, "topLeft":[I
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {p0, v0, v1, v14}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1279
    const/4 v2, 0x0

    aget v8, v14, v2

    .line 1280
    .local v8, "left":I
    const/4 v2, 0x1

    aget v13, v14, v2

    .line 1282
    .local v13, "top":I
    if-eqz p1, :cond_5

    if-nez p10, :cond_5

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1286
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v2

    .line 1287
    iget v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v2

    .line 1292
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v13, v2

    .line 1294
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p7

    add-int/lit8 v3, p7, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1294
    sub-int/2addr v2, v3

    .line 1295
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .line 1311
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_2
    iget v12, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1312
    .local v12, "oldIndex":I
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1313
    add-int/lit8 v2, v12, 0x1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1314
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v7, v2, v3

    .line 1315
    .local v7, "r":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v13

    invoke-virtual {v7, v8, v13, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1316
    if-eqz p9, :cond_4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1317
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1320
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1321
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    goto/16 :goto_1

    .line 1297
    .end local v7    # "r":Landroid/graphics/Rect;
    .end local v12    # "oldIndex":I
    :cond_5
    if-eqz p10, :cond_6

    if-eqz p11, :cond_6

    .line 1300
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v3, v3, p7

    add-int/lit8 v4, p7, -0x1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1301
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v8, v2

    .line 1302
    move-object/from16 v0, p10

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v13, v2

    .line 1303
    goto :goto_2

    .line 1305
    :cond_6
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v2, v2, p7

    add-int/lit8 v3, p7, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1305
    sub-int/2addr v2, v3

    .line 1306
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v8, v2

    .line 1307
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int v2, v2, p8

    add-int/lit8 v3, p8, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1307
    sub-int/2addr v2, v3

    .line 1308
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v13, v2

    goto/16 :goto_2
.end method
