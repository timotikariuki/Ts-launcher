.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    .local v0, "count":I
    add-int v1, p1, p2

    .line 601
    .local v1, "newI":I
    :goto_0
    if-ltz v1, :cond_0

    if-lt v1, v0, :cond_2

    .line 614
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    .line 602
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 603
    .local v2, "newV":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/launcher2/FolderIcon;

    if-nez v3, :cond_1

    .line 605
    instance-of v3, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v3, :cond_1

    .line 612
    add-int/2addr v1, p2

    goto :goto_0
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0    # "p":Landroid/view/ViewParent;
    return-object v0

    .line 80
    .restart local v0    # "p":Landroid/view/ViewParent;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "index"    # I

    .prologue
    .line 125
    check-cast p0, Lcom/android/launcher2/PagedView;

    .end local p0    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 126
    .local v0, "page":Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "page":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    .restart local v0    # "page":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 563
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 574
    .local v0, "cellCountX":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 575
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 579
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 589
    return-object v3

    .line 577
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "lineDelta"    # I

    .prologue
    .line 634
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 635
    .local v14, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 636
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 637
    .local v2, "cellCountY":I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 638
    .local v10, "row":I
    add-int v8, v10, p3

    .line 639
    .local v8, "newRow":I
    if-ltz v8, :cond_8

    if-ge v8, v2, :cond_8

    .line 640
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 641
    .local v3, "closestDistance":F
    const/4 v4, -0x1

    .line 642
    .local v4, "closestIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 643
    .local v6, "index":I
    if-gez p3, :cond_0

    const/4 v5, -0x1

    .line 644
    .local v5, "endIndex":I
    :goto_0
    if-ne v6, v5, :cond_1

    .line 663
    const/4 v15, -0x1

    if-le v4, v15, :cond_8

    .line 664
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 667
    .end local v3    # "closestDistance":F
    .end local v4    # "closestIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "index":I
    :goto_1
    return-object v15

    .line 643
    .restart local v3    # "closestDistance":F
    .restart local v4    # "closestIndex":I
    .restart local v6    # "index":I
    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 645
    .restart local v5    # "endIndex":I
    :cond_1
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 646
    .local v9, "newV":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 647
    .local v13, "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_5

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_4

    const/4 v11, 0x1

    .line 648
    .local v11, "satisfiesRow":Z
    :goto_2
    if-eqz v11, :cond_3

    .line 649
    instance-of v15, v9, Lcom/android/launcher2/BubbleTextView;

    if-nez v15, :cond_2

    instance-of v15, v9, Lcom/android/launcher2/FolderIcon;

    if-eqz v15, :cond_3

    .line 650
    :cond_2
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    .line 651
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    .line 650
    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    .line 652
    .local v12, "tmpDistance":F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_3

    .line 653
    move v4, v6

    .line 654
    move v3, v12

    .line 657
    .end local v12    # "tmpDistance":F
    :cond_3
    if-gt v6, v5, :cond_7

    .line 658
    add-int/lit8 v6, v6, 0x1

    .line 659
    goto :goto_0

    .line 647
    .end local v11    # "satisfiesRow":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_6

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 660
    .restart local v11    # "satisfiesRow":Z
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 667
    .end local v3    # "closestDistance":F
    .end local v4    # "closestIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "index":I
    .end local v9    # "newV":Landroid/view/View;
    .end local v11    # "satisfiesRow":Z
    .end local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_8
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I
    .param p3, "delta"    # I

    .prologue
    .line 618
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "delta"    # I

    .prologue
    .line 623
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 624
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 289
    .local v10, "itemContainer":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .local v16, "parentLayout":Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 290
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v6

    .local v6, "countX":I
    move-object/from16 v22, v16

    .line 291
    check-cast v22, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v7

    .line 300
    .local v7, "countY":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView;

    .line 301
    .local v5, "container":Lcom/android/launcher2/PagedView;
    invoke-static {v5}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 302
    .local v17, "tabHost":Landroid/widget/TabHost;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v18

    .line 303
    .local v18, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 304
    .local v9, "iconIndex":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 305
    .local v11, "itemCount":I
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v15

    .line 306
    .local v15, "pageIndex":I
    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v14

    .line 308
    .local v14, "pageCount":I
    rem-int v20, v9, v6

    .line 309
    .local v20, "x":I
    div-int v21, v9, v6

    .line 311
    .local v21, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 312
    .local v2, "action":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    const/4 v8, 0x1

    .line 313
    .local v8, "handleKeyEvent":Z
    :goto_1
    const/4 v12, 0x0

    .line 316
    .local v12, "newParent":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .line 317
    .local v3, "child":Landroid/view/View;
    const/16 v19, 0x0

    .line 318
    .local v19, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 436
    :goto_2
    return v19

    .line 293
    .end local v2    # "action":I
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "container":Lcom/android/launcher2/PagedView;
    .end local v6    # "countX":I
    .end local v7    # "countY":I
    .end local v8    # "handleKeyEvent":Z
    .end local v9    # "iconIndex":I
    .end local v10    # "itemContainer":Landroid/view/ViewGroup;
    .end local v11    # "itemCount":I
    .end local v12    # "newParent":Landroid/view/ViewGroup;
    .end local v14    # "pageCount":I
    .end local v15    # "pageIndex":I
    .end local v16    # "parentLayout":Landroid/view/ViewGroup;
    .end local v17    # "tabHost":Landroid/widget/TabHost;
    .end local v18    # "tabs":Landroid/widget/TabWidget;
    .end local v19    # "wasHandled":Z
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .restart local v16    # "parentLayout":Landroid/view/ViewGroup;
    move-object/from16 v10, v16

    .restart local v10    # "itemContainer":Landroid/view/ViewGroup;
    move-object/from16 v22, v16

    .line 294
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v6

    .restart local v6    # "countX":I
    move-object/from16 v22, v16

    .line 295
    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v7

    .restart local v7    # "countY":I
    goto :goto_0

    .line 312
    .restart local v2    # "action":I
    .restart local v5    # "container":Lcom/android/launcher2/PagedView;
    .restart local v9    # "iconIndex":I
    .restart local v11    # "itemCount":I
    .restart local v14    # "pageCount":I
    .restart local v15    # "pageIndex":I
    .restart local v17    # "tabHost":Landroid/widget/TabHost;
    .restart local v18    # "tabs":Landroid/widget/TabWidget;
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 320
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "handleKeyEvent":Z
    .restart local v12    # "newParent":Landroid/view/ViewGroup;
    .restart local v19    # "wasHandled":Z
    :sswitch_0
    if-eqz v8, :cond_2

    .line 322
    if-lez v9, :cond_3

    .line 323
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 335
    :cond_2
    :goto_3
    const/16 v19, 0x1

    .line 336
    goto :goto_2

    .line 325
    :cond_3
    if-lez v15, :cond_2

    .line 326
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 327
    if-eqz v12, :cond_2

    .line 328
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 329
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 330
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 338
    :sswitch_1
    if-eqz v8, :cond_4

    .line 340
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 341
    add-int/lit8 v22, v9, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 353
    :cond_4
    :goto_4
    const/16 v19, 0x1

    .line 354
    goto :goto_2

    .line 343
    :cond_5
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    .line 344
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 345
    if-eqz v12, :cond_4

    .line 346
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 347
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 348
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 356
    :sswitch_2
    if-eqz v8, :cond_6

    .line 358
    if-lez v21, :cond_7

    .line 359
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v6

    add-int v13, v22, v20

    .line 360
    .local v13, "newiconIndex":I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 365
    .end local v13    # "newiconIndex":I
    :cond_6
    :goto_5
    const/16 v19, 0x1

    .line 366
    goto/16 :goto_2

    .line 362
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_5

    .line 368
    :sswitch_3
    if-eqz v8, :cond_8

    .line 370
    add-int/lit8 v22, v7, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 371
    add-int/lit8 v22, v11, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v6

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 372
    .restart local v13    # "newiconIndex":I
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 375
    .end local v13    # "newiconIndex":I
    :cond_8
    const/16 v19, 0x1

    .line 376
    goto/16 :goto_2

    .line 379
    :sswitch_4
    if-eqz v8, :cond_9

    move-object v4, v5

    .line 381
    check-cast v4, Landroid/view/View$OnClickListener;

    .line 382
    .local v4, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 384
    .end local v4    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_9
    const/16 v19, 0x1

    .line 385
    goto/16 :goto_2

    .line 387
    :sswitch_5
    if-eqz v8, :cond_a

    .line 390
    if-lez v15, :cond_b

    .line 391
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 392
    if-eqz v12, :cond_a

    .line 393
    add-int/lit8 v22, v15, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 394
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 395
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 401
    :cond_a
    :goto_6
    const/16 v19, 0x1

    .line 402
    goto/16 :goto_2

    .line 398
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 404
    :sswitch_6
    if-eqz v8, :cond_c

    .line 407
    add-int/lit8 v22, v14, -0x1

    move/from16 v0, v22

    if-ge v15, v0, :cond_d

    .line 408
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v12

    .line 409
    if-eqz v12, :cond_c

    .line 410
    add-int/lit8 v22, v15, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 411
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 412
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 418
    :cond_c
    :goto_7
    const/16 v19, 0x1

    .line 419
    goto/16 :goto_2

    .line 415
    :cond_d
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 421
    :sswitch_7
    if-eqz v8, :cond_e

    .line 423
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 425
    :cond_e
    const/16 v19, 0x1

    .line 426
    goto/16 :goto_2

    .line 428
    :sswitch_8
    if-eqz v8, :cond_f

    .line 430
    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 432
    :cond_f
    const/16 v19, 0x1

    .line 433
    goto/16 :goto_2

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v4

    .line 91
    .local v4, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 92
    .local v1, "contents":Landroid/view/ViewGroup;
    sget v6, Lcom/android/launcher/R$id;->market_button:I

    invoke-virtual {v4, v6}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 94
    .local v3, "shop":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 95
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 96
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v5, 0x0

    .line 97
    .local v5, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_1
    :pswitch_0
    return v5

    .line 95
    .end local v2    # "handleKeyEvent":Z
    .end local v5    # "wasHandled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 99
    .restart local v2    # "handleKeyEvent":Z
    .restart local v5    # "wasHandled":Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 101
    if-eq p0, v3, :cond_2

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 105
    :cond_2
    const/4 v5, 0x1

    .line 106
    goto :goto_1

    .line 108
    :pswitch_2
    if-eqz v2, :cond_0

    .line 110
    if-ne p0, v3, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 112
    const/4 v5, 0x1

    .line 115
    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 891
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 892
    .local v5, "parent":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 893
    .local v3, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 894
    .local v1, "folder":Lcom/android/launcher2/Folder;
    iget-object v6, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 896
    .local v6, "title":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 897
    .local v0, "action":I
    if-eq v0, v8, :cond_0

    move v2, v8

    .line 898
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v7, 0x0

    .line 899
    .local v7, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 967
    :goto_1
    return v7

    .line 897
    .end local v2    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 901
    .restart local v2    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :sswitch_0
    if-eqz v2, :cond_1

    .line 903
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 904
    .local v4, "newIcon":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 905
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 908
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    .line 909
    goto :goto_1

    .line 911
    :sswitch_1
    if-eqz v2, :cond_2

    .line 913
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 914
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 915
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 920
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v7, 0x1

    .line 921
    goto :goto_1

    .line 917
    .restart local v4    # "newIcon":Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 923
    .end local v4    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v2, :cond_4

    .line 925
    invoke-static {v3, v5, p0, v9}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 926
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 927
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 930
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_4
    const/4 v7, 0x1

    .line 931
    goto :goto_1

    .line 933
    :sswitch_3
    if-eqz v2, :cond_5

    .line 935
    invoke-static {v3, v5, p0, v8}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 936
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_6

    .line 937
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 942
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 943
    goto :goto_1

    .line 939
    .restart local v4    # "newIcon":Landroid/view/View;
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 945
    .end local v4    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v2, :cond_7

    .line 947
    invoke-static {v3, v5, v9, v8}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 948
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_7

    .line 949
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 952
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_7
    const/4 v7, 0x1

    .line 953
    goto :goto_1

    .line 955
    :sswitch_5
    if-eqz v2, :cond_8

    .line 958
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    .line 957
    invoke-static {v3, v5, v8, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v4

    .line 959
    .restart local v4    # "newIcon":Landroid/view/View;
    if-eqz v4, :cond_8

    .line 960
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 963
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_8
    const/4 v7, 0x1

    .line 964
    goto :goto_1

    .line 899
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 498
    .local v9, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 499
    .local v5, "launcher":Landroid/view/ViewGroup;
    sget v12, Lcom/android/launcher/R$id;->workspace:I

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 500
    .local v11, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v9, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 501
    .local v2, "buttonIndex":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 502
    .local v1, "buttonCount":I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 508
    .local v8, "pageIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 509
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v4, 0x1

    .line 510
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v10, 0x0

    .line 511
    .local v10, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 554
    :goto_1
    return v10

    .line 509
    .end local v4    # "handleKeyEvent":Z
    .end local v10    # "wasHandled":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 513
    .restart local v4    # "handleKeyEvent":Z
    .restart local v10    # "wasHandled":Z
    :pswitch_0
    if-eqz v4, :cond_1

    .line 515
    if-lez v2, :cond_2

    .line 516
    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 521
    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 522
    goto :goto_1

    .line 518
    :cond_2
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 524
    :pswitch_1
    if-eqz v4, :cond_3

    .line 526
    add-int/lit8 v12, v1, -0x1

    if-ge v2, v12, :cond_4

    .line 527
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 532
    :cond_3
    :goto_3
    const/4 v10, 0x1

    .line 533
    goto :goto_1

    .line 529
    :cond_4
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 535
    :pswitch_2
    if-eqz v4, :cond_5

    .line 537
    invoke-virtual {v11, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 538
    .local v6, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 539
    .local v3, "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v3, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 540
    .local v7, "newIcon":Landroid/view/View;
    if-eqz v7, :cond_6

    .line 541
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 546
    .end local v3    # "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v6    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_5
    :goto_4
    const/4 v10, 0x1

    .line 547
    goto :goto_1

    .line 543
    .restart local v3    # "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .restart local v6    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v7    # "newIcon":Landroid/view/View;
    :cond_6
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_4

    .line 550
    .end local v3    # "children":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v6    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v7    # "newIcon":Landroid/view/View;
    :pswitch_3
    const/4 v10, 0x1

    .line 551
    goto :goto_1

    .line 511
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 675
    .local v8, "parent":Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 676
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Workspace;

    .line 677
    .local v11, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 678
    .local v3, "launcher":Landroid/view/ViewGroup;
    sget v12, Lcom/android/launcher/R$id;->qsb_bar:I

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 679
    .local v9, "tabs":Landroid/view/ViewGroup;
    sget v12, Lcom/android/launcher/R$id;->hotseat:I

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 680
    .local v2, "hotseat":Landroid/view/ViewGroup;
    invoke-virtual {v11, v4}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 681
    .local v7, "pageIndex":I
    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 683
    .local v6, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 684
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v1, 0x1

    .line 685
    .local v1, "handleKeyEvent":Z
    :goto_0
    const/4 v10, 0x0

    .line 686
    .local v10, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 884
    :goto_1
    return v10

    .line 684
    .end local v1    # "handleKeyEvent":Z
    .end local v10    # "wasHandled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 688
    .restart local v1    # "handleKeyEvent":Z
    .restart local v10    # "wasHandled":Z
    :sswitch_0
    if-eqz v1, :cond_1

    .line 690
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 691
    .local v5, "newIcon":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 692
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 707
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_1
    :goto_2
    const/4 v10, 0x1

    .line 708
    goto :goto_1

    .line 694
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_2
    if-lez v7, :cond_1

    .line 695
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 697
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 696
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 698
    if-eqz v5, :cond_3

    .line 699
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 702
    :cond_3
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 710
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_1
    if-eqz v1, :cond_4

    .line 712
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 713
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_5

    .line 714
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 728
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_4
    :goto_3
    const/4 v10, 0x1

    .line 729
    goto :goto_1

    .line 716
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_5
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_4

    .line 717
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 718
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 719
    if-eqz v5, :cond_6

    .line 720
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 723
    :cond_6
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3

    .line 742
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v1, :cond_7

    .line 744
    const/4 v12, -0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 745
    .restart local v5    # "newIcon":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->hasFocus()Z

    .line 748
    if-eqz v5, :cond_8

    .line 749
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 765
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_7
    :goto_4
    const/4 v10, 0x1

    .line 767
    goto :goto_1

    .line 751
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_8
    if-lez v7, :cond_7

    .line 752
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 754
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 753
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 755
    if-eqz v5, :cond_9

    .line 756
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 758
    :cond_9
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_4

    .line 781
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_3
    if-eqz v1, :cond_a

    .line 783
    const/4 v12, 0x1

    invoke-static {v4, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 784
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_b

    .line 785
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 803
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_a
    :goto_5
    const/4 v10, 0x1

    .line 805
    goto/16 :goto_1

    .line 788
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_b
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_d

    .line 789
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 790
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 791
    if-eqz v5, :cond_c

    .line 792
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 794
    :cond_c
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_5

    .line 799
    :cond_d
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_5

    .line 807
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v1, :cond_e

    .line 810
    if-lez v7, :cond_10

    .line 811
    add-int/lit8 v12, v7, -0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 812
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 813
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_f

    .line 814
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 826
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_e
    :goto_6
    const/4 v10, 0x1

    .line 827
    goto/16 :goto_1

    .line 817
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_f
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_6

    .line 820
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_10
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 821
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_e

    .line 822
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 829
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_5
    if-eqz v1, :cond_11

    .line 832
    add-int/lit8 v12, v6, -0x1

    if-ge v7, v12, :cond_13

    .line 833
    add-int/lit8 v12, v7, 0x1

    invoke-static {v11, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 834
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 835
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_12

    .line 836
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 849
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_11
    :goto_7
    const/4 v10, 0x1

    .line 850
    goto/16 :goto_1

    .line 839
    .restart local v5    # "newIcon":Landroid/view/View;
    :cond_12
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_7

    .line 843
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_13
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 842
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 844
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_11

    .line 845
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 852
    .end local v5    # "newIcon":Landroid/view/View;
    :sswitch_6
    if-eqz v1, :cond_14

    .line 854
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 855
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_14

    .line 856
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 859
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_14
    const/4 v10, 0x1

    .line 860
    goto/16 :goto_1

    .line 862
    :sswitch_7
    if-eqz v1, :cond_15

    .line 865
    invoke-virtual {v8}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    .line 864
    invoke-static {v4, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 866
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_15

    .line 867
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 870
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_15
    const/4 v10, 0x1

    .line 871
    goto/16 :goto_1

    .line 686
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_4
        0x5d -> :sswitch_5
        0x7a -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch
.end method

.method static handlePagedViewGridLayoutWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 23
    .param p0, "w"    # Lcom/android/launcher2/PagedViewWidget;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/PagedViewGridLayout;

    .line 140
    .local v13, "parent":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedView;

    .line 141
    .local v7, "container":Lcom/android/launcher2/PagedView;
    invoke-static {v7}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v14

    .line 142
    .local v14, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v14}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v15

    .line 143
    .local v15, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 144
    .local v18, "widgetIndex":I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v17

    .line 145
    .local v17, "widgetCount":I
    invoke-virtual {v7, v13}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v12

    .line 146
    .local v12, "pageIndex":I
    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    .line 147
    .local v11, "pageCount":I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 148
    .local v3, "cellCountX":I
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 149
    .local v4, "cellCountY":I
    rem-int v19, v18, v3

    .line 150
    .local v19, "x":I
    div-int v20, v18, v3

    .line 152
    .local v20, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 153
    .local v2, "action":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_0

    const/4 v8, 0x1

    .line 154
    .local v8, "handleKeyEvent":Z
    :goto_0
    const/4 v9, 0x0

    .line 157
    .local v9, "newParent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 158
    .local v5, "child":Landroid/view/View;
    const/16 v16, 0x0

    .line 159
    .local v16, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 276
    :goto_1
    return v16

    .line 153
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "handleKeyEvent":Z
    .end local v9    # "newParent":Landroid/view/ViewGroup;
    .end local v16    # "wasHandled":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 161
    .restart local v5    # "child":Landroid/view/View;
    .restart local v8    # "handleKeyEvent":Z
    .restart local v9    # "newParent":Landroid/view/ViewGroup;
    .restart local v16    # "wasHandled":Z
    :sswitch_0
    if-eqz v8, :cond_1

    .line 163
    if-lez v18, :cond_2

    .line 164
    add-int/lit8 v21, v18, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 175
    :cond_1
    :goto_2
    const/16 v16, 0x1

    .line 176
    goto :goto_1

    .line 166
    :cond_2
    if-lez v12, :cond_1

    .line 167
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 168
    if-eqz v9, :cond_1

    .line 169
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 170
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 178
    :sswitch_1
    if-eqz v8, :cond_3

    .line 180
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 181
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 192
    :cond_3
    :goto_3
    const/16 v16, 0x1

    .line 193
    goto :goto_1

    .line 183
    :cond_4
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 184
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 185
    if-eqz v9, :cond_3

    .line 186
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 187
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 195
    :sswitch_2
    if-eqz v8, :cond_5

    .line 197
    if-lez v20, :cond_6

    .line 198
    add-int/lit8 v21, v20, -0x1

    mul-int v21, v21, v3

    add-int v10, v21, v19

    .line 199
    .local v10, "newWidgetIndex":I
    invoke-virtual {v13, v10}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 200
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 205
    .end local v10    # "newWidgetIndex":I
    :cond_5
    :goto_4
    const/16 v16, 0x1

    .line 206
    goto :goto_1

    .line 202
    :cond_6
    invoke-virtual {v15}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_4

    .line 208
    :sswitch_3
    if-eqz v8, :cond_7

    .line 210
    add-int/lit8 v21, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 211
    add-int/lit8 v21, v17, -0x1

    add-int/lit8 v22, v20, 0x1

    mul-int v22, v22, v3

    add-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 212
    .restart local v10    # "newWidgetIndex":I
    invoke-virtual {v13, v10}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 213
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 216
    .end local v10    # "newWidgetIndex":I
    :cond_7
    const/16 v16, 0x1

    .line 217
    goto/16 :goto_1

    .line 220
    :sswitch_4
    if-eqz v8, :cond_8

    move-object v6, v7

    .line 222
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 223
    .local v6, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 225
    .end local v6    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_8
    const/16 v16, 0x1

    .line 226
    goto/16 :goto_1

    .line 228
    :sswitch_5
    if-eqz v8, :cond_a

    .line 231
    if-lez v12, :cond_b

    .line 232
    add-int/lit8 v21, v12, -0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 233
    if-eqz v9, :cond_9

    .line 234
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 239
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 241
    :cond_a
    const/16 v16, 0x1

    .line 242
    goto/16 :goto_1

    .line 237
    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 244
    :sswitch_6
    if-eqz v8, :cond_d

    .line 247
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v12, v0, :cond_e

    .line 248
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    invoke-static {v7, v0}, Lcom/android/launcher2/FocusHelper;->getAppsCustomizePage(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v9

    .line 249
    if-eqz v9, :cond_c

    .line 250
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 255
    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 257
    :cond_d
    const/16 v16, 0x1

    .line 258
    goto/16 :goto_1

    .line 253
    :cond_e
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 260
    :sswitch_7
    if-eqz v8, :cond_f

    .line 262
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 263
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 265
    :cond_f
    const/16 v16, 0x1

    .line 266
    goto/16 :goto_1

    .line 268
    :sswitch_8
    if-eqz v8, :cond_10

    .line 270
    add-int/lit8 v21, v17, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 272
    :cond_10
    const/16 v16, 0x1

    .line 273
    goto/16 :goto_1

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Lcom/android/launcher2/AccessibleTabView;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 443
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 490
    :goto_0
    return v7

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 446
    .local v3, "parent":Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 447
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 448
    .local v1, "contents":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 449
    .local v4, "tabCount":I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 451
    .local v6, "tabIndex":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 452
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 453
    .local v2, "handleKeyEvent":Z
    :goto_1
    const/4 v7, 0x0

    .line 454
    .local v7, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 479
    :pswitch_0
    const/4 v7, 0x1

    .line 480
    goto :goto_0

    .end local v2    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_1
    move v2, v7

    .line 452
    goto :goto_1

    .line 456
    .restart local v2    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :pswitch_1
    if-eqz v2, :cond_2

    .line 458
    if-lez v6, :cond_2

    .line 459
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 462
    :cond_2
    const/4 v7, 0x1

    .line 463
    goto :goto_0

    .line 465
    :pswitch_2
    if-eqz v2, :cond_3

    .line 467
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 468
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 475
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 476
    goto :goto_0

    .line 470
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 482
    :pswitch_3
    if-eqz v2, :cond_5

    .line 484
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 486
    :cond_5
    const/4 v7, 0x1

    .line 487
    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
