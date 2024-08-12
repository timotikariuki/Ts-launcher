.class Lcom/android/launcher2/NaviBarService$1;
.super Ljava/lang/Object;
.source "NaviBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/NaviBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bMultiWindow:Z

.field final synthetic this$0:Lcom/android/launcher2/NaviBarService;


# direct methods
.method constructor <init>(Lcom/android/launcher2/NaviBarService;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/NaviBarService$1;->bMultiWindow:Z

    return-void
.end method

.method private checkUpdate()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-boolean v0, v0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "lyf"

    const-string v1, "isEmpty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v0, v0, Lcom/android/launcher2/NaviBarService;->mPb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v0, v0, Lcom/android/launcher2/NaviBarService;->mPb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/launcher2/NaviBarService$1;->checkUpdate()V

    .line 198
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-virtual {v1}, Lcom/android/launcher2/NaviBarService;->getMultiWindowState()Z

    move-result v0

    .line 199
    .local v0, "multiWindow":Z
    iget-boolean v1, p0, Lcom/android/launcher2/NaviBarService$1;->bMultiWindow:Z

    if-eq v1, v0, :cond_0

    .line 200
    iput-boolean v0, p0, Lcom/android/launcher2/NaviBarService$1;->bMultiWindow:Z

    .line 201
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-boolean v2, p0, Lcom/android/launcher2/NaviBarService$1;->bMultiWindow:Z

    invoke-static {v1, v2}, Lcom/android/launcher2/NaviBarService;->access$0(Lcom/android/launcher2/NaviBarService;Z)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v1, v1, Lcom/android/launcher2/NaviBarService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/NaviBarService$1;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-static {v2}, Lcom/android/launcher2/NaviBarService;->access$1(Lcom/android/launcher2/NaviBarService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method
