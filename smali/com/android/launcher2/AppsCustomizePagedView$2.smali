.class Lcom/android/launcher2/AppsCustomizePagedView$2;
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

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;Landroid/os/Bundle;Lcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->val$options:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 666
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 669
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->val$options:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v1, v1, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 670
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 671
    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput v4, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->access$0(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v1, v1, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->val$info:Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->val$options:Landroid/os/Bundle;

    .line 675
    invoke-virtual {v0, v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    .line 676
    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$2;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iput v4, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    goto :goto_0
.end method
