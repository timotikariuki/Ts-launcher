.class Lcom/android/launcher2/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V
    .locals 1
    .param p3, "config"    # Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1659
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1652
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$1(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    .line 1653
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$1(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    .line 1654
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$2(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    .line 1655
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$2(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1845
    new-instance v0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher2/CellLayout$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    .line 1660
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1661
    iput-object p3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .line 1662
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    .line 1663
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    .line 1785
    return-void
.end method

.method computeEdge(I[I)V
    .locals 10
    .param p1, "which"    # I
    .param p2, "edge"    # [I

    .prologue
    .line 1682
    iget-object v8, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1683
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1720
    return-void

    .line 1684
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1685
    .local v2, "cs":Lcom/android/launcher2/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1683
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1687
    :pswitch_0
    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1688
    .local v5, "left":I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .local v4, "j":I
    :goto_1
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1689
    aget v8, p2, v4

    if-lt v5, v8, :cond_2

    aget v8, p2, v4

    if-gez v8, :cond_3

    .line 1690
    :cond_2
    aput v5, p2, v4

    .line 1688
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1695
    .end local v4    # "j":I
    .end local v5    # "left":I
    :pswitch_1
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    .line 1696
    .local v6, "right":I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .restart local v4    # "j":I
    :goto_2
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1697
    aget v8, p2, v4

    if-le v6, v8, :cond_4

    .line 1698
    aput v6, p2, v4

    .line 1696
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1703
    .end local v4    # "j":I
    .end local v6    # "right":I
    :pswitch_2
    iget v7, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 1704
    .local v7, "top":I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_3
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1705
    aget v8, p2, v4

    if-lt v7, v8, :cond_5

    aget v8, p2, v4

    if-gez v8, :cond_6

    .line 1706
    :cond_5
    aput v7, p2, v4

    .line 1704
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1711
    .end local v4    # "j":I
    .end local v7    # "top":I
    :pswitch_3
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    .line 1712
    .local v0, "bottom":I
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_4
    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1713
    aget v8, p2, v4

    if-le v0, v8, :cond_7

    .line 1714
    aput v0, p2, v4

    .line 1712
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .locals 2

    .prologue
    .line 1839
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1840
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 1788
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v3, :cond_0

    .line 1789
    const/4 v1, 0x1

    .line 1790
    .local v1, "first":Z
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1800
    .end local v1    # "first":Z
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v3

    .line 1790
    .restart local v1    # "first":Z
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1791
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1792
    .local v0, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    if-eqz v1, :cond_2

    .line 1793
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1794
    const/4 v1, 0x0

    .line 1795
    goto :goto_0

    .line 1796
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0
.end method

.method public getEdge(I)[I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1804
    packed-switch p1, :pswitch_data_0

    .line 1813
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 1806
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1808
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1810
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .locals 2

    .prologue
    .line 1818
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1819
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .locals 2

    .prologue
    .line 1825
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1826
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .locals 2

    .prologue
    .line 1832
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1833
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichEdge"    # I

    .prologue
    const/4 v3, 0x1

    .line 1723
    iget-object v4, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1725
    .local v0, "cs":Lcom/android/launcher2/CellLayout$CellAndSpan;
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object v1

    .line 1727
    .local v1, "edge":[I
    packed-switch p2, :pswitch_data_0

    .line 1757
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    .line 1729
    :pswitch_0
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .local v2, "i":I
    :goto_0
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1730
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1736
    .end local v2    # "i":I
    :pswitch_1
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .restart local v2    # "i":I
    :goto_1
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1737
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    if-eq v4, v5, :cond_1

    .line 1736
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1743
    .end local v2    # "i":I
    :pswitch_2
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_2
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1744
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1743
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1750
    .end local v2    # "i":I
    :pswitch_3
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_3
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1751
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    if-eq v4, v5, :cond_1

    .line 1750
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1666
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$2(Lcom/android/launcher2/CellLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1670
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$1(Lcom/android/launcher2/CellLayout;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1674
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1675
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1676
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1677
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1678
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1679
    return-void

    .line 1667
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    .line 1668
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    .line 1666
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1671
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1672
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    .line 1670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method shift(II)V
    .locals 4
    .param p1, "whichEdge"    # I
    .param p2, "delta"    # I

    .prologue
    .line 1761
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1779
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    .line 1780
    return-void

    .line 1761
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1762
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1763
    .local v0, "c":Lcom/android/launcher2/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1775
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1765
    :pswitch_0
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1768
    :pswitch_1
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1771
    :pswitch_2
    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1867
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1868
    return-void
.end method
