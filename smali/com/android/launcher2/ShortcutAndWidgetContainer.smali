.class public Lcom/android/launcher2/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mHeightGap:I

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 44
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 45
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 161
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 165
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 83
    .local v0, "debug":Z
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 56
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 65
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 60
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_2

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_2

    .line 61
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_2

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-lt p2, v4, :cond_0

    .line 56
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 103
    iget v1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 104
    .local v1, "cellWidth":I
    iget v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 105
    .local v0, "cellHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 107
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v6, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 108
    iget v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 109
    .local v2, "childWidthMeasureSpec":I
    iget v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 111
    .local v3, "childheightMeasureSpec":I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 112
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 117
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v11, :cond_0

    .line 138
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, v12}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 119
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 120
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 122
    .local v13, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 123
    .local v9, "childLeft":I
    iget v10, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 124
    .local v10, "childTop":I
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 126
    iget-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 129
    iget-object v7, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 130
    .local v7, "cellXY":[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 131
    iget-object v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 132
    const-string v2, "android.home.drop"

    .line 133
    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 134
    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 131
    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 117
    .end local v7    # "cellXY":[I
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v13    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    .line 89
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 94
    .local v4, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 95
    .local v2, "heightSpecSize":I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    .line 96
    return-void

    .line 90
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecSize":I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 150
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 153
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 49
    iput p2, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 50
    iput p3, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWidthGap:I

    .line 51
    iput p4, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mHeightGap:I

    .line 52
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 170
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 178
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 172
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 175
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 170
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 183
    return-void
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 4
    .param p1, "lp"    # Lcom/android/launcher2/CellLayout$LayoutParams;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWidthGap:I

    iget v3, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 100
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method
