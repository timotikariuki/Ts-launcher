.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .prologue
    .line 2068
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2069
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 2070
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2071
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2074
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$10(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    .line 2076
    .local v4, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2077
    .local v8, "packages":[Ljava/lang/String;
    array-length v0, v8

    .line 2078
    .local v0, "N":I
    iget v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v11, :pswitch_data_0

    .line 2100
    :cond_0
    const/4 v1, 0x0

    .line 2101
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v6, 0x0

    .line 2103
    .local v6, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 2104
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2105
    .restart local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2107
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 2108
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2109
    .restart local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2114
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2115
    .local v10, "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 2116
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2118
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v0, :cond_4

    .line 2123
    .end local v5    # "i":I
    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v3, v11

    .line 2124
    .local v3, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_1
    if-nez v3, :cond_6

    .line 2125
    const-string v11, "Launcher.Model"

    const-string v12, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :goto_2
    return-void

    .line 2080
    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v3    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v10    # "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_0
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v0, :cond_0

    .line 2082
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v4, v12}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 2080
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2086
    .end local v5    # "i":I
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v0, :cond_0

    .line 2088
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v4, v12}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 2086
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2093
    .end local v5    # "i":I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v0, :cond_0

    .line 2095
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 2093
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2119
    .restart local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v6    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v10    # "removedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2118
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2123
    .end local v5    # "i":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 2129
    .restart local v3    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_6
    if-eqz v1, :cond_7

    .line 2130
    move-object v2, v1

    .line 2131
    .local v2, "addedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    invoke-direct {v12, p0, v3, v2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2140
    .end local v2    # "addedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_7
    if-eqz v6, :cond_8

    .line 2141
    move-object v7, v6

    .line 2142
    .local v7, "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v12, p0, v3, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2151
    .end local v7    # "modifiedFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 2152
    iget v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_a

    const/4 v9, 0x1

    .line 2153
    .local v9, "permanent":Z
    :goto_6
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    invoke-direct {v12, p0, v3, v10, v9}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2163
    .end local v9    # "permanent":Z
    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    invoke-direct {v12, p0, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 2152
    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    .line 2078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
