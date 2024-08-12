.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field private final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field private final synthetic val$modifiedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$modifiedFinal:Ljava/util/ArrayList;

    .line 2142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2144
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->access$0(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    .line 2145
    .local v0, "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    if-ne v1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 2146
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;->val$modifiedFinal:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsUpdated(Ljava/util/ArrayList;)V

    .line 2148
    :cond_0
    return-void

    .line 2144
    .end local v0    # "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
