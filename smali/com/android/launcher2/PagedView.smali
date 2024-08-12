.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$PageSwitchListener;,
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final MAX_PAGE_SNAP_DURATION:I = 0x2ee

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field static allappState:I = 0x0

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field protected finalPage:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCanLoop:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field private mContext:Landroid/content/Context;

.field protected mCurPosY:F

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mNoScrollPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field protected mPageWidth:I

.field private mPagingTouchSlop:I

.field protected mPosY:F

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mScrollingPaused:Z

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mbLooping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1513
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/PagedView;->allappState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 97
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 107
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 118
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 119
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 123
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 136
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 137
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 139
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 141
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    .line 150
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 154
    iput v4, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 161
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 168
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 184
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 192
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNoScrollPage:I

    .line 193
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mCanLoop:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 195
    iput v2, p0, Lcom/android/launcher2/PagedView;->finalPage:I

    .line 196
    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageWidth:I

    .line 2026
    new-instance v1, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 217
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    .line 220
    sget-object v1, Lcom/android/launcher/R$styleable;->PagedView:[I

    .line 219
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 222
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    .line 225
    const/4 v1, 0x3

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    .line 227
    const/4 v1, 0x4

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    .line 229
    const/4 v1, 0x5

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    .line 230
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    .line 232
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    .line 235
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 234
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 237
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 236
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    .line 238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 242
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/PagedView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1623
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1626
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1638
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1639
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1643
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1644
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1645
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1646
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1647
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1648
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1649
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1652
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1214
    sub-float/2addr p1, v1

    .line 1215
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1633
    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2122
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2115
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2116
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2117
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 2119
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    .line 2120
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2125
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 2128
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2129
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2130
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2131
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2132
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 2133
    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 2132
    sub-int/2addr v10, v11

    .line 2133
    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    .line 2132
    sub-int v3, v10, v11

    .line 2135
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2136
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2137
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2138
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2139
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    .line 2140
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2141
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2147
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 2144
    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2145
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1219
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1223
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1225
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1241
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1229
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1232
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1233
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1234
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1235
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1240
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1237
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1238
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
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
    .line 942
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 943
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 945
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 946
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 947
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 954
    :cond_1
    :goto_0
    return-void

    .line 949
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 950
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 951
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1864
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1177
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1182
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1183
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1187
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2065
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 500
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 457
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 461
    iget v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 462
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 494
    :cond_2
    :goto_0
    return v2

    .line 466
    :cond_3
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v6, :cond_6

    .line 467
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 468
    iput v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 472
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v4, :cond_4

    .line 473
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 474
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 479
    :cond_4
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v3, :cond_5

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 485
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 486
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    const/16 v3, 0x1000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 489
    .local v1, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_6
    move v2, v3

    .line 494
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1246
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1248
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1252
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1253
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1256
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1257
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1258
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1259
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1264
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1261
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1262
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1131
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1132
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1143
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mNoScrollPage:I

    if-ne v10, v11, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    iget v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1147
    .local v0, "pointerIndex":I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    .line 1150
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1151
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1152
    .local v6, "y":F
    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1153
    .local v3, "xDiff":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1155
    .local v7, "yDiff":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1156
    .local v1, "touchSlop":I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1157
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1158
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1160
    .local v8, "yMoved":Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1161
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_4

    .line 1163
    :goto_3
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1164
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1165
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1166
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1168
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1169
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1172
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v8

    .line 1156
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v8

    .line 1157
    goto :goto_2

    .line 1161
    .restart local v4    # "xMoved":Z
    .restart local v8    # "yMoved":Z
    :cond_7
    if-eqz v4, :cond_4

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 841
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v13

    div-int/lit8 v4, v13, 0x2

    .line 844
    .local v4, "halfScreenSize":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    add-int v10, v13, v4

    .line 847
    .local v10, "screenCenter":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-ne v10, v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    if-eqz v13, :cond_1

    .line 850
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 851
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 852
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 856
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v8

    .line 857
    .local v8, "pageCount":I
    if-lez v8, :cond_2

    .line 858
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v14, 0x0

    aget v6, v13, v14

    .line 860
    .local v6, "leftScreen":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v14, 0x1

    aget v9, v13, v14

    .line 861
    .local v9, "rightScreen":I
    const/4 v13, -0x1

    if-eq v6, v13, :cond_2

    const/4 v13, -0x1

    if-eq v9, v13, :cond_2

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v2

    .line 864
    .local v2, "drawingTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getRight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getBottom()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    .line 865
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 868
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mCanLoop:Z

    if-eqz v13, :cond_4

    if-ne v9, v6, :cond_4

    .line 869
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    float-to-int v12, v13

    .line 870
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mPageWidth:I

    mul-int v7, v8, v13

    .line 871
    .local v7, "offset":I
    if-nez v6, :cond_3

    .line 872
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 873
    neg-int v13, v7

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 875
    int-to-float v13, v7

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 894
    .end local v7    # "offset":I
    .end local v12    # "width":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 897
    .end local v2    # "drawingTime":J
    .end local v6    # "leftScreen":I
    .end local v9    # "rightScreen":I
    :cond_2
    return-void

    .line 878
    .restart local v2    # "drawingTime":J
    .restart local v6    # "leftScreen":I
    .restart local v7    # "offset":I
    .restart local v9    # "rightScreen":I
    .restart local v12    # "width":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 879
    int-to-float v13, v7

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 880
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 881
    neg-int v13, v7

    int-to-float v13, v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 885
    .end local v7    # "offset":I
    .end local v12    # "width":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v5, v13, -0x1

    .local v5, "i":I
    :goto_1
    if-gez v5, :cond_5

    .line 892
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    goto :goto_0

    .line 886
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 887
    .local v11, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v13, :cond_6

    .line 888
    if-gt v6, v5, :cond_7

    if-gt v5, v9, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 889
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2, v3}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 885
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 926
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 928
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 937
    :goto_0
    return v0

    .line 931
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 932
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 933
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 937
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1725
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1726
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1727
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2034
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 2035
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2036
    return-void

    .line 2034
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 965
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 966
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 968
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 969
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 979
    :cond_0
    return-void

    .line 972
    :cond_1
    if-eq v2, p0, :cond_0

    .line 975
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 976
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 977
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 978
    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 1943
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 1946
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1947
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .param p1, "relativeOffset"    # I

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1669
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1676
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 1670
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1671
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1672
    .local v3, "right":I
    if-gt v2, p1, :cond_2

    if-le p1, v3, :cond_0

    .line 1669
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 743
    iget v3, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 746
    .local v0, "childOffsets":[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 747
    aget v2, v0, p1

    .line 759
    :cond_0
    :goto_1
    return v2

    .line 744
    .end local v0    # "childOffsets":[I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 749
    .restart local v0    # "childOffsets":[I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 753
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, p1, :cond_3

    .line 756
    if-eqz v0, :cond_0

    .line 757
    aput v2, v0, p1

    goto :goto_1

    .line 754
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1682
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1683
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 1684
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2203
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher/R$string;->default_scroll_format:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2204
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2203
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1847
    const/4 v2, -0x1

    .line 1848
    .local v2, "result":I
    if-eqz p1, :cond_0

    .line 1849
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1850
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1851
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    move v1, v2

    .line 1857
    :cond_1
    return v1

    .line 1852
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 1851
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1688
    const v7, 0x7fffffff

    .line 1689
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1690
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1691
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1692
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 1703
    return v8

    .line 1693
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1694
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1695
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1696
    .local v4, "halfChildWidth":I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1697
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1698
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_1

    .line 1699
    move v7, v3

    .line 1700
    move v8, v5

    .line 1692
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 766
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 768
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 776
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 771
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v2

    .line 772
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 771
    add-int v0, v2, v3

    .line 773
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 785
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 787
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 788
    .local v2, "minWidth":I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 789
    .local v0, "maxWidth":I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_0
    move v0, v1

    .line 788
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1190
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1192
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1193
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v4

    .line 1194
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 1193
    sub-int v0, p1, v4

    .line 1196
    .local v0, "delta":I
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mCanLoop:Z

    if-eqz v4, :cond_0

    .line 1197
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p3, v4, :cond_1

    .line 1198
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageWidth:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1205
    :cond_0
    :goto_0
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1206
    .local v2, "scrollProgress":F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1207
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1208
    return v2

    .line 1200
    .end local v2    # "scrollProgress":F
    :cond_1
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    if-nez p3, :cond_0

    .line 1201
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageWidth:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    goto :goto_0
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2009
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2010
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2011
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2012
    sget v1, Lcom/android/launcher/R$id;->paged_view_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    .line 2013
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 2014
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_0

    .line 2015
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2019
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v1

    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    move v1, v2

    .line 2013
    goto :goto_0
.end method

.method protected getVisiblePages([I)V
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 793
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    .line 795
    .local v2, "pageCount":I
    if-lez v2, :cond_4

    .line 796
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 797
    .local v4, "screenWidth":I
    const/4 v1, 0x0

    .line 798
    .local v1, "leftScreen":I
    const/4 v3, 0x0

    .line 799
    .local v3, "rightScreen":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 800
    .local v0, "currPage":Landroid/view/View;
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_0

    .line 801
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 802
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    .line 801
    sub-float/2addr v5, v6

    .line 802
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    .line 800
    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 806
    :cond_0
    move v3, v1

    .line 807
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 808
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    .line 809
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    .line 808
    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 813
    :cond_1
    aput v1, p1, v7

    .line 814
    aput v3, p1, v8

    .line 819
    .end local v0    # "currPage":Landroid/view/View;
    .end local v1    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :goto_2
    return-void

    .line 803
    .restart local v0    # "currPage":Landroid/view/View;
    .restart local v1    # "leftScreen":I
    .restart local v3    # "rightScreen":I
    .restart local v4    # "screenWidth":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 804
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 811
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 816
    .end local v0    # "currPage":Landroid/view/View;
    .end local v1    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :cond_4
    aput v5, p1, v7

    .line 817
    aput v5, p1, v8

    goto :goto_2
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2108
    const/4 v0, 0x1

    return v0
.end method

.method public hideScrollIndicatorTrack()V
    .locals 0

    .prologue
    .line 2154
    return-void
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2069
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 2071
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2075
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2077
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 2078
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2079
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    if-eqz v0, :cond_3

    .line 2080
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2081
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2083
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2084
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2085
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2098
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1002
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 305
    return p1
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 249
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 250
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 251
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 252
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 255
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 256
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 257
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    .line 260
    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    .line 261
    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMinFlingVelocity:I

    .line 262
    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMinSnapVelocity:I

    .line 263
    invoke-virtual {p0, p0}, Lcom/android/launcher2/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 264
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 724
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 725
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 726
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 727
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 728
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 740
    :cond_0
    return-void

    .line 732
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 733
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 734
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 735
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 736
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 737
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 738
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 735
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 1965
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1966
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1969
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 7
    .param p1, "currentPage"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1971
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 2004
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 1977
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1978
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1981
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 1985
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1986
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1985
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 1989
    if-le p1, v4, :cond_2

    .line 1990
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1994
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1995
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1996
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 2001
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2002
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0

    .line 1997
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 2023
    const/4 v0, 0x1

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 1906
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1907
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 9
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1909
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v5, :cond_0

    .line 1910
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1911
    .local v0, "count":I
    if-ge p1, v0, :cond_0

    .line 1912
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v3

    .line 1913
    .local v3, "lowerPageBound":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v4

    .line 1917
    .local v4, "upperPageBound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1927
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_5

    .line 1940
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "lowerPageBound":I
    .end local v4    # "upperPageBound":I
    :cond_0
    return-void

    .line 1918
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "lowerPageBound":I
    .restart local v4    # "upperPageBound":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    .line 1919
    .local v2, "layout":Lcom/android/launcher2/Page;
    if-lt v1, v3, :cond_2

    if-le v1, v4, :cond_4

    .line 1920
    :cond_2
    invoke-interface {v2}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 1921
    invoke-interface {v2}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 1923
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1917
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1928
    .end local v2    # "layout":Lcom/android/launcher2/Page;
    :cond_5
    if-eq v1, p1, :cond_7

    if-eqz p2, :cond_7

    .line 1927
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1931
    :cond_7
    if-gt v3, v1, :cond_6

    if-gt v1, v4, :cond_6

    .line 1932
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1933
    if-ne v1, p1, :cond_8

    if-eqz p2, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {p0, v1, v5}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 1934
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move v5, v7

    .line 1933
    goto :goto_3
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1274
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1275
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1276
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 371
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 715
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 716
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 717
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 721
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1618
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1600
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1601
    const/4 v1, 0x0

    .line 1602
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1607
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1608
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1609
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 1613
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1604
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1605
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 1611
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1595
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2209
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2171
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2172
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2173
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2174
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2175
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2176
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2178
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2159
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2160
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2161
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2162
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2164
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 2165
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2167
    :cond_1
    return-void

    .line 2160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1027
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1127
    :cond_0
    :goto_0
    return v5

    .line 1041
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1042
    .local v0, "action":I
    if-ne v0, v9, :cond_2

    .line 1043
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 1047
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1127
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 1053
    :pswitch_1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_4

    .line 1054
    sget v7, Lcom/android/launcher2/DefaultWorkspace;->noscroll:I

    if-nez v7, :cond_3

    .line 1055
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1066
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1067
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1069
    .local v4, "y":F
    iput v2, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 1070
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1071
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1072
    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1073
    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1074
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1075
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1082
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1083
    .local v3, "xDist":I
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-lt v3, v7, :cond_6

    move v1, v6

    .line 1084
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 1085
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1086
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1087
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    if-eqz v7, :cond_5

    .line 1088
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 1089
    iget v7, p0, Lcom/android/launcher2/PagedView;->finalPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1097
    :cond_5
    :goto_3
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 1098
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1099
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1100
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_6
    move v1, v5

    .line 1083
    goto :goto_2

    .line 1092
    .restart local v1    # "finishedScrolling":Z
    :cond_7
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1101
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1102
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto/16 :goto_1

    .line 1111
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "x":F
    .end local v3    # "xDist":I
    .end local v4    # "y":F
    :pswitch_3
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1112
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1113
    iput v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1114
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1118
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1119
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1047
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 657
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v8, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v9

    add-int v7, v8, v9

    .line 663
    .local v7, "verticalPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 664
    .local v1, "childCount":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 666
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v1, :cond_2

    .line 683
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 684
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 686
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 687
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    goto :goto_0

    .line 667
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 668
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    .line 669
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 670
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 671
    .local v2, "childHeight":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v4

    .line 672
    .local v4, "childTop":I
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    if-eqz v8, :cond_3

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    .line 678
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    add-int v9, v4, v2

    .line 677
    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 679
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 666
    .end local v2    # "childHeight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidth":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 505
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 603
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 510
    .local v17, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 511
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 512
    .local v8, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 513
    .local v9, "heightSize":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 514
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 518
    :cond_1
    if-lez v18, :cond_2

    if-gtz v9, :cond_3

    .line 519
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 528
    :cond_3
    const/4 v13, 0x0

    .line 530
    .local v13, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v20

    add-int v16, v19, v20

    .line 531
    .local v16, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v20

    add-int v10, v19, v20

    .line 537
    .local v10, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 538
    .local v3, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-lt v11, v3, :cond_6

    .line 568
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    .line 569
    add-int v9, v13, v16

    .line 572
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 579
    if-lez v3, :cond_5

    .line 584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 589
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v14

    .line 590
    .local v14, "offset":I
    sub-int v19, v18, v14

    .line 591
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v19, v19, v20

    .line 590
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 592
    .local v15, "spacing":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 596
    .end local v14    # "offset":I
    .end local v15    # "spacing":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 598
    if-lez v3, :cond_9

    .line 599
    add-int/lit8 v19, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v19

    add-int/lit8 v20, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 540
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 541
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 544
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 545
    const/high16 v7, -0x80000000

    .line 551
    .local v7, "childWidthMode":I
    :goto_2
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 552
    const/high16 v5, -0x80000000

    .line 558
    .local v5, "childHeightMode":I
    :goto_3
    sub-int v19, v18, v10

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 560
    .local v6, "childWidthMeasureSpec":I
    sub-int v19, v9, v16

    move/from16 v0, v19

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 562
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 563
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 538
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 547
    .end local v4    # "childHeightMeasureSpec":I
    .end local v5    # "childHeightMode":I
    .end local v6    # "childWidthMeasureSpec":I
    .end local v7    # "childWidthMode":I
    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childWidthMode":I
    goto :goto_2

    .line 554
    :cond_8
    const/high16 v5, 0x40000000    # 2.0f

    .restart local v5    # "childHeightMode":I
    goto :goto_3

    .line 601
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "childHeightMode":I
    .end local v7    # "childWidthMode":I
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 399
    iget v0, p0, Lcom/android/launcher2/PagedView;->finalPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 401
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 912
    iget v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 913
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 917
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 918
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 919
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 921
    :goto_1
    return v2

    .line 915
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 921
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    if-gtz v13, :cond_0

    .line 1303
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1509
    :goto_0
    return v13

    .line 1307
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1309
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1311
    .local v1, "action":I
    and-int/lit16 v13, v1, 0xff

    packed-switch v13, :pswitch_data_0

    .line 1509
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v13, 0x1

    goto :goto_0

    .line 1317
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->isFinished()Z

    move-result v13

    if-nez v13, :cond_2

    .line 1318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    if-eqz v13, :cond_2

    .line 1320
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 1321
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1326
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 1327
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1328
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1329
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1330
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1336
    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 1338
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 1339
    .local v8, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 1340
    .local v12, "x":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v13, v14

    sub-float v3, v13, v12

    .line 1342
    .local v3, "deltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1349
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_4

    .line 1350
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v13, v3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1351
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    long-to-float v13, v13

    const v14, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v13, :cond_3

    .line 1353
    float-to-int v13, v3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1359
    :goto_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1360
    float-to-int v13, v3

    int-to-float v13, v13

    sub-float v13, v3, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1357
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_2

    .line 1362
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1365
    .end local v3    # "deltaX":F
    .end local v8    # "pointerIndex":I
    .end local v12    # "x":F
    :cond_5
    sget v13, Lcom/android/launcher2/DefaultWorkspace;->noscroll:I

    if-nez v13, :cond_1

    .line 1366
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1371
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_13

    .line 1372
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1373
    .local v2, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 1374
    .restart local v8    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 1375
    .restart local v12    # "x":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1376
    .local v10, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v10, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1378
    invoke-virtual {v10, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    float-to-int v11, v13

    .line 1379
    .local v11, "velocityX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    sub-float v13, v12, v13

    float-to-int v3, v13

    .line 1380
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v7

    .line 1381
    .local v7, "pageWidth":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v7

    .line 1382
    const v15, 0x3ecccccd    # 0.4f

    mul-float/2addr v14, v15

    .line 1381
    cmpl-float v13, v13, v14

    if-lez v13, :cond_9

    const/4 v5, 0x1

    .line 1384
    .local v5, "isSignificantMove":Z
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v14, v15

    .line 1385
    sub-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1387
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/high16 v14, 0x41c80000    # 25.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    .line 1388
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    .line 1387
    if-le v13, v14, :cond_a

    const/4 v4, 0x1

    .line 1396
    .local v4, "isFling":Z
    :goto_4
    const/4 v9, 0x0

    .line 1397
    .local v9, "returnToOriginalPage":Z
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v7

    .line 1398
    const v15, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 1399
    int-to-float v13, v11

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    int-to-float v14, v3

    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_6

    .line 1400
    if-eqz v4, :cond_6

    .line 1401
    const/4 v9, 0x1

    .line 1411
    :cond_6
    if-eqz v5, :cond_7

    if-lez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    if-eqz v4, :cond_d

    if-lez v11, :cond_d

    .line 1413
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mCanLoop:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-gtz v13, :cond_b

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    .line 1419
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 1455
    .end local v2    # "activePointerId":I
    .end local v3    # "deltaX":I
    .end local v4    # "isFling":Z
    .end local v5    # "isSignificantMove":Z
    .end local v7    # "pageWidth":I
    .end local v8    # "pointerIndex":I
    .end local v9    # "returnToOriginalPage":Z
    .end local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v11    # "velocityX":I
    .end local v12    # "x":F
    :goto_6
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1456
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1457
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1381
    .restart local v2    # "activePointerId":I
    .restart local v3    # "deltaX":I
    .restart local v7    # "pageWidth":I
    .restart local v8    # "pointerIndex":I
    .restart local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v11    # "velocityX":I
    .restart local v12    # "x":F
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1387
    .restart local v5    # "isSignificantMove":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 1416
    .restart local v4    # "isFling":Z
    .restart local v9    # "returnToOriginalPage":Z
    :cond_b
    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    :goto_7
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    goto :goto_5

    .line 1417
    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 1420
    :cond_d
    if-eqz v5, :cond_e

    if-gez v3, :cond_e

    if-eqz v4, :cond_f

    :cond_e
    if-eqz v4, :cond_12

    if-gez v11, :cond_12

    .line 1422
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PagedView;->mCanLoop:Z

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_10

    .line 1423
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    .line 1428
    :goto_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1425
    :cond_10
    if-eqz v9, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    :goto_9
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->finalPage:I

    goto :goto_8

    .line 1426
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1430
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1432
    .end local v2    # "activePointerId":I
    .end local v3    # "deltaX":I
    .end local v4    # "isFling":Z
    .end local v5    # "isSignificantMove":Z
    .end local v7    # "pageWidth":I
    .end local v8    # "pointerIndex":I
    .end local v9    # "returnToOriginalPage":Z
    .end local v10    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v11    # "velocityX":I
    .end local v12    # "x":F
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_15

    .line 1436
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v14, v14, -0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1437
    .local v6, "nextPage":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v6, v13, :cond_14

    .line 1438
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1440
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1442
    .end local v6    # "nextPage":I
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_17

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1447
    .restart local v6    # "nextPage":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v6, v13, :cond_16

    .line 1448
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1450
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1453
    .end local v6    # "nextPage":I
    :cond_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1462
    :pswitch_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1465
    :cond_18
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1466
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1467
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1471
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1654
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1268
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1269
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 378
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 385
    :cond_0
    return-void
.end method

.method pauseScrolling()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 332
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 334
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 335
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2182
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2199
    :goto_0
    return v0

    .line 2185
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2187
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2188
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    goto :goto_0

    .line 2193
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 2194
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_0

    .line 2185
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1658
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1659
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1660
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1661
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1663
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 902
    .local v0, "page":I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 903
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 904
    const/4 v1, 0x1

    .line 906
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 989
    if-eqz p1, :cond_0

    .line 992
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 993
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 995
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 996
    return-void
.end method

.method resumeScrolling()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 343
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 7
    .param p1, "screenCenter"    # I

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 695
    :cond_0
    iget v5, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-gt v5, v6, :cond_2

    const/4 v3, 0x0

    .line 697
    .local v3, "isInOverscroll":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    .line 698
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 706
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 708
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 695
    .end local v3    # "isInOverscroll":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 699
    .restart local v2    # "i":I
    .restart local v3    # "isInOverscroll":Z
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 701
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 702
    .local v4, "scrollProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v0, v5, v6

    .line 703
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 698
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 419
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 420
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1832
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 424
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 426
    if-gez p1, :cond_0

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 435
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 451
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 452
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 453
    return-void

    .line 429
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_1

    .line 430
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    goto :goto_0

    .line 433
    :cond_1
    iput p1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    goto :goto_0
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 7
    .param p1, "newCurrentPage"    # I

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 607
    .local v2, "newX":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v5

    sub-int v0, v2, v5

    .line 609
    .local v0, "delta":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 610
    .local v4, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 615
    return-void

    .line 611
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 612
    .local v3, "page":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 1872
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1873
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 359
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->finalPage:I

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 362
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 279
    return-void
.end method

.method public setLayoutScale(F)V
    .locals 11
    .param p1, "childrenScale"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 621
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 626
    .local v1, "childCount":I
    new-array v2, v1, [F

    .line 627
    .local v2, "childrenX":[F
    new-array v3, v1, [F

    .line 628
    .local v3, "childrenY":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v1, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 635
    .local v6, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 636
    .local v4, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    .line 637
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 638
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getBottom()I

    move-result v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/launcher2/PagedView;->layout(IIII)V

    .line 639
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v1, :cond_1

    .line 647
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    .line 648
    return-void

    .line 629
    .end local v4    # "heightSpec":I
    .end local v6    # "widthSpec":I
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 630
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    .line 631
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v3, v5

    .line 628
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "child":Landroid/view/View;
    .restart local v4    # "heightSpec":I
    .restart local v6    # "widthSpec":I
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 641
    .restart local v0    # "child":Landroid/view/View;
    aget v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 642
    aget v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 639
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 412
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 415
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 651
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 652
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 653
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/launcher2/PagedView$PageSwitchListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 271
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showScrollIndicatorTrack()V
    .locals 0

    .prologue
    .line 2151
    return-void
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5
    .param p1, "immediately"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2039
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 2040
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2041
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 2045
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2046
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2048
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 2049
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2050
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2051
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    if-eqz v0, :cond_3

    .line 2052
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2054
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2055
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2056
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1708
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1780
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1781
    return-void
.end method

.method protected snapToPage(II)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1784
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1789
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1790
    .local v1, "newX":I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 1791
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1792
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1793
    return-void
.end method

.method protected snapToPage(III)V
    .locals 7
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1796
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1798
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1799
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    .line 1800
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1801
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1804
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1805
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 1806
    if-nez p3, :cond_1

    .line 1807
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1810
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1811
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1812
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    if-eqz v0, :cond_2

    .line 1813
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 1814
    iget v0, p0, Lcom/android/launcher2/PagedView;->finalPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1817
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1821
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_3

    .line 1822
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1826
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1827
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1828
    return-void

    .line 1824
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1731
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1732
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1737
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1738
    .local v5, "newX":I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1739
    .local v0, "delta":I
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mCanLoop:Z

    if-eqz v6, :cond_0

    .line 1740
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_1

    .line 1741
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 1742
    iget v6, p0, Lcom/android/launcher2/PagedView;->mPageWidth:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int/2addr v0, v6

    .line 1749
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 1751
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_2

    .line 1755
    const/16 v6, 0x226

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1777
    :goto_1
    return-void

    .line 1744
    .end local v3    # "duration":I
    :cond_1
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_0

    if-nez p1, :cond_0

    .line 1745
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mbLooping:Z

    .line 1746
    iget v6, p0, Lcom/android/launcher2/PagedView;->mPageWidth:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v0, v6

    goto :goto_0

    .line 1763
    .restart local v3    # "duration":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1764
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    .line 1765
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    .line 1764
    add-float v1, v6, v7

    .line 1767
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1768
    iget v6, p0, Lcom/android/launcher2/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1773
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1774
    const/16 v6, 0x2ee

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1776
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_1
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "newX":I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 317
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    .line 318
    .local v1, "offset":I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 319
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 321
    .end local v1    # "offset":I
    .end local v2    # "relOffset":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 322
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 323
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 324
    return-void
.end method
