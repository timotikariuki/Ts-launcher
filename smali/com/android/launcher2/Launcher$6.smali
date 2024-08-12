.class Lcom/android/launcher2/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field private final synthetic val$appWidgetId:I

.field private final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    iput p2, p0, Lcom/android/launcher2/Launcher$6;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher2/Launcher$6;->val$layout:Landroid/appwidget/AppWidgetHostView;

    iput p4, p0, Lcom/android/launcher2/Launcher$6;->val$resultCode:I

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1023
    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    iget v1, p0, Lcom/android/launcher2/Launcher$6;->val$appWidgetId:I

    iget-object v2, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$5(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1024
    iget-object v4, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$5(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher2/ItemInfo;->screen:I

    iget-object v5, p0, Lcom/android/launcher2/Launcher$6;->val$layout:Landroid/appwidget/AppWidgetHostView;

    .line 1023
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->access$13(Lcom/android/launcher2/Launcher;IJILandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1025
    iget-object v1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    iget v0, p0, Lcom/android/launcher2/Launcher$6;->val$resultCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0, v7, v6}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    .line 1027
    return-void

    :cond_0
    move v0, v7

    .line 1025
    goto :goto_0
.end method
