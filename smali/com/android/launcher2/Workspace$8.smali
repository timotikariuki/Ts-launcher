.class Lcom/android/launcher2/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    .line 3182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    .line 3186
    return-void
.end method
