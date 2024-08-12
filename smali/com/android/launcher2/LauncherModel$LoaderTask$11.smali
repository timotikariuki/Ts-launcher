.class Lcom/android/launcher2/LauncherModel$LoaderTask$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private final synthetic val$added:Ljava/util/ArrayList;

.field private final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field private final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$first:Z

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    .line 2001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2003
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2004
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v2, :cond_1

    .line 2005
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$first:Z

    if-eqz v2, :cond_0

    .line 2006
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    .line 2017
    :goto_0
    return-void

    .line 2008
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2015
    :cond_1
    const-string v2, "Launcher.Model"

    const-string v3, "not binding apps: no Launcher activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
