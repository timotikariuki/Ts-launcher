.class Lcom/android/launcher2/Launcher$20;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field private final synthetic val$successfulDrop:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;ZLjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher2/Launcher$20;->val$successfulDrop:Z

    iput-object p3, p0, Lcom/android/launcher2/Launcher$20;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 3646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3649
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$20;->val$successfulDrop:Z

    if-eqz v0, :cond_0

    .line 3653
    iget-object v0, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$4(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setVisibility(I)V

    .line 3654
    iget-object v0, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/Launcher$20;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 3658
    :goto_0
    return-void

    .line 3656
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    goto :goto_0
.end method
