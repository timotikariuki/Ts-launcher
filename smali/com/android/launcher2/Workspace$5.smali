.class Lcom/android/launcher2/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field private final synthetic val$cellLayout:Lcom/android/launcher2/CellLayout;

.field private final synthetic val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field private final synthetic val$info:Lcom/android/launcher2/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$5;->val$info:Lcom/android/launcher2/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$5;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$5;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    .line 2452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2454
    iget-object v1, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 2455
    .local v0, "dragLayer":Lcom/android/launcher2/DragLayer;
    iget-object v1, p0, Lcom/android/launcher2/Workspace$5;->val$info:Lcom/android/launcher2/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$5;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/DragLayer;->addResizeFrame(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2456
    return-void
.end method
