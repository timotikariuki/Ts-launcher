.class public Lcom/android/launcher2/TsAnalogClock;
.super Landroid/view/View;
.source "TsAnalogClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[wcb]TsAnalogClock"


# instance fields
.field private mAttached:Z

.field private mCalendar:Landroid/text/format/Time;

.field private mChanged:Z

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mDot:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMarginLeft:I

.field private mMarginTop:I

.field private mMinutes:F

.field private mMinutesHand:Landroid/graphics/drawable/Drawable;

.field private mSecond:F

.field private mSecondHand:Landroid/graphics/drawable/Drawable;

.field private timeUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mHandler:Landroid/os/Handler;

    .line 29
    iput-boolean v2, p0, Lcom/android/launcher2/TsAnalogClock;->mChanged:Z

    .line 42
    iput v2, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginLeft:I

    .line 43
    iput v2, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginTop:I

    .line 167
    new-instance v1, Lcom/android/launcher2/TsAnalogClock$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/TsAnalogClock$1;-><init>(Lcom/android/launcher2/TsAnalogClock;)V

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->timeUpdate:Ljava/lang/Runnable;

    .line 187
    new-instance v1, Lcom/android/launcher2/TsAnalogClock$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/TsAnalogClock$2;-><init>(Lcom/android/launcher2/TsAnalogClock;)V

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    sget-object v1, Lcom/android/launcher/R$styleable;->TsAnalogClock:[I

    .line 47
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 50
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mDot:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string v2, "The dial attribute is required and must refered."

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mMinutesHand:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mMinutesHand:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 59
    const-string v2, "The minuteshand attribute is required and must refered."

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string v2, "The hourhand attribute is required and must refered."

    .line 63
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginLeft:I

    .line 67
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginTop:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/TsAnalogClock;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/launcher2/TsAnalogClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher2/TsAnalogClock;Landroid/text/format/Time;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/launcher2/TsAnalogClock;->mCalendar:Landroid/text/format/Time;

    return-void
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/launcher2/TsAnalogClock;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 201
    iget-object v3, p0, Lcom/android/launcher2/TsAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 202
    .local v0, "hour":I
    iget-object v3, p0, Lcom/android/launcher2/TsAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 203
    .local v1, "minute":I
    iget-object v3, p0, Lcom/android/launcher2/TsAnalogClock;->mCalendar:Landroid/text/format/Time;

    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 205
    .local v2, "second":I
    mul-int/lit8 v3, v2, 0x6

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher2/TsAnalogClock;->mSecond:F

    .line 206
    mul-int/lit8 v3, v1, 0x6

    int-to-float v3, v3

    int-to-float v4, v2

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/TsAnalogClock;->mMinutes:F

    .line 207
    rem-int/lit8 v3, v0, 0xc

    mul-int/lit8 v3, v3, 0x1e

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher2/TsAnalogClock;->mHour:F

    .line 208
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/TsAnalogClock;->mChanged:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->invalidate()V

    .line 210
    return-void
.end method

.method private setBound(Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, -0x1

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getLeft()I

    move-result v8

    sub-int v1, v7, v8

    .line 74
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getTop()I

    move-result v8

    sub-int v0, v7, v8

    .line 76
    .local v0, "availableHeight":I
    div-int/lit8 v5, v1, 0x2

    .line 77
    .local v5, "x":I
    div-int/lit8 v6, v0, 0x2

    .line 79
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 80
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 82
    .local v3, "height":I
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v5, v7

    div-int/lit8 v8, v3, 0x2

    sub-int v8, v6, v8

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v5

    div-int/lit8 v10, v3, 0x2

    add-int/2addr v10, v6

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    .local v2, "bound":Landroid/graphics/Rect;
    iget v7, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginLeft:I

    if-eq v7, v11, :cond_0

    .line 86
    iget v7, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginLeft:I

    iput v7, v2, Landroid/graphics/Rect;->left:I

    .line 87
    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    iput v7, v2, Landroid/graphics/Rect;->right:I

    .line 90
    :cond_0
    iget v7, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginTop:I

    if-eq v7, v11, :cond_1

    .line 92
    iget v7, p0, Lcom/android/launcher2/TsAnalogClock;->mMarginTop:I

    iput v7, v2, Landroid/graphics/Rect;->top:I

    .line 93
    iget v7, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v2, Landroid/graphics/Rect;->bottom:I

    .line 96
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 147
    const-string v1, "TAG"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 149
    iget-boolean v1, p0, Lcom/android/launcher2/TsAnalogClock;->mAttached:Z

    if-nez v1, :cond_0

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/TsAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 157
    iget-object v4, p0, Lcom/android/launcher2/TsAnalogClock;->mHandler:Landroid/os/Handler;

    .line 156
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->timeUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/TsAnalogClock;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mCalendar:Landroid/text/format/Time;

    .line 164
    invoke-direct {p0}, Lcom/android/launcher2/TsAnalogClock;->onTimeChanged()V

    .line 165
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "TAG"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 180
    iget-boolean v0, p0, Lcom/android/launcher2/TsAnalogClock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/TsAnalogClock;->timeUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/TsAnalogClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/TsAnalogClock;->mAttached:Z

    .line 185
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    iget-boolean v2, p0, Lcom/android/launcher2/TsAnalogClock;->mChanged:Z

    .line 104
    .local v2, "changed":Z
    if-eqz v2, :cond_0

    .line 105
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/TsAnalogClock;->mChanged:Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getLeft()I

    move-result v6

    sub-int v1, v5, v6

    .line 108
    .local v1, "availableWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/TsAnalogClock;->getTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 110
    .local v0, "availableHeight":I
    div-int/lit8 v3, v1, 0x2

    .line 111
    .local v3, "x":I
    div-int/lit8 v4, v0, 0x2

    .line 113
    .local v4, "y":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/TsAnalogClock;->setBound(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mDial:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 118
    iget v5, p0, Lcom/android/launcher2/TsAnalogClock;->mHour:F

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 119
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/TsAnalogClock;->setBound(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget v5, p0, Lcom/android/launcher2/TsAnalogClock;->mMinutes:F

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 125
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mMinutesHand:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/TsAnalogClock;->setBound(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mMinutesHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 131
    iget v5, p0, Lcom/android/launcher2/TsAnalogClock;->mSecond:F

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 132
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/TsAnalogClock;->setBound(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mSecondHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mDot:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mDot:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/launcher2/TsAnalogClock;->setBound(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v5, p0, Lcom/android/launcher2/TsAnalogClock;->mDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    :cond_2
    return-void
.end method
