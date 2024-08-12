.class Lcom/android/launcher2/AppsCustomizePagedView$7;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field private final synthetic val$cellHeight:I

.field private final synthetic val$cellWidth:I

.field private final synthetic val$immediate:Z

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$layout:Lcom/android/launcher2/PagedViewGridLayout;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;IILcom/android/launcher2/PagedViewGridLayout;ZILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$cellWidth:I

    iput p3, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$cellHeight:I

    iput-object p4, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher2/PagedViewGridLayout;

    iput-boolean p5, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$immediate:Z

    iput p6, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$page:I

    iput-object p7, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$items:Ljava/util/ArrayList;

    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1485
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$cellWidth:I

    .line 1486
    .local v3, "maxPreviewWidth":I
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$cellHeight:I

    .line 1487
    .local v4, "maxPreviewHeight":I
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    .line 1489
    .local v12, "w":Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v12}, Lcom/android/launcher2/PagedViewWidget;->getPreviewSize()[I

    move-result-object v11

    .line 1490
    .local v11, "maxSize":[I
    aget v3, v11, v2

    .line 1491
    const/4 v1, 0x1

    aget v4, v11, v1

    .line 1493
    .end local v11    # "maxSize":[I
    .end local v12    # "w":Lcom/android/launcher2/PagedViewWidget;
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$immediate:Z

    if-eqz v1, :cond_1

    .line 1494
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$page:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$items:Ljava/util/ArrayList;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 1496
    .local v0, "data":Lcom/android/launcher2/AsyncTaskPageData;
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v1, v5, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$1(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 1497
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$2(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V

    .line 1506
    .end local v0    # "data":Lcom/android/launcher2/AsyncTaskPageData;
    :goto_0
    return-void

    .line 1499
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->access$3(Lcom/android/launcher2/AppsCustomizePagedView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1500
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->access$4(Lcom/android/launcher2/AppsCustomizePagedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1502
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$page:I

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->val$items:Ljava/util/ArrayList;

    .line 1503
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->access$5(Lcom/android/launcher2/AppsCustomizePagedView;)I

    move-result v10

    move v8, v3

    move v9, v4

    .line 1502
    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/AppsCustomizePagedView;->access$6(Lcom/android/launcher2/AppsCustomizePagedView;ILjava/util/ArrayList;III)V

    goto :goto_0
.end method
