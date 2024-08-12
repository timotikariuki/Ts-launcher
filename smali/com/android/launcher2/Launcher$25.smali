.class Lcom/android/launcher2/Launcher$25;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->bindAllApplications(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field private final synthetic val$apps:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$25;->val$apps:Ljava/util/ArrayList;

    .line 4381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4383
    iget-object v1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 4384
    iget-object v1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$25;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setApps(Ljava/util/ArrayList;)V

    .line 4388
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher/R$bool;->need_get_applist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 4389
    .local v0, "need_get_applist":Z
    if-eqz v0, :cond_1

    .line 4390
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAllApplications apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$25;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindAllApplications apps.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/Launcher$25;->val$apps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    iget-object v1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher2/FirstView;->setList(Ljava/util/ArrayList;Z)V

    .line 4393
    iget-object v1, p0, Lcom/android/launcher2/Launcher$25;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mAppsCustomizeContent:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getApps()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/MyWorkspace;->setList(Ljava/util/ArrayList;)V

    .line 4395
    :cond_1
    return-void
.end method
