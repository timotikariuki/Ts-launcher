.class Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout$ViewCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellLayout$ViewCluster;

.field whichEdge:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout$ViewCluster;)V
    .locals 1

    .prologue
    .line 1846
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher2/CellLayout$ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1847
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 1849
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher2/CellLayout$ViewCluster;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1850
    .local v0, "l":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher2/CellLayout$ViewCluster;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1851
    .local v1, "r":Lcom/android/launcher2/CellLayout$CellAndSpan;
    iget v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    packed-switch v2, :pswitch_data_0

    .line 1860
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, v3

    :goto_0
    return v2

    .line 1853
    :pswitch_0
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0

    .line 1855
    :pswitch_1
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 1857
    :pswitch_2
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0

    .line 1851
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
