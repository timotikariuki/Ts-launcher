.class Lcom/android/launcher2/AppsCustomizePagedView$3;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizePagedView;->preloadWidget(Lcom/android/launcher2/PendingAddWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;

.field private final synthetic val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

.field private final synthetic val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 687
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v3, v3, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    if-eq v3, v8, :cond_0

    .line 706
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v3

    .line 691
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v5, v5, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 692
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    iput-object v0, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 693
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 694
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 695
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v4, v4, Lcom/android/launcher2/PendingAddWidgetInfo;->spanX:I

    .line 696
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v5, v5, Lcom/android/launcher2/PendingAddWidgetInfo;->spanY:I

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 695
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v2

    .line 700
    .local v2, "unScaledSize":[I
    new-instance v1, Lcom/android/launcher2/DragLayer$LayoutParams;

    aget v3, v2, v7

    .line 701
    aget v4, v2, v8

    .line 700
    invoke-direct {v1, v3, v4}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 702
    .local v1, "lp":Lcom/android/launcher2/DragLayer$LayoutParams;
    iput v7, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iput v7, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 703
    iput-boolean v8, v1, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 704
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
