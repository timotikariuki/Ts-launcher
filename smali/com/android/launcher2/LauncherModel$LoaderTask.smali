.class Lcom/android/launcher2/LauncherModel$LoaderTask;
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
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mIsLoadingAndBindingWorkspace:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isLaunching"    # Z

    .prologue
    .line 951
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 953
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 954
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    .line 955
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V
    .locals 0

    .prologue
    .line 947
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V
    .locals 0

    .prologue
    .line 945
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return-void
.end method

.method private bindWorkspace(I)V
    .locals 26
    .param p1, "synchronizeBindPage"    # I

    .prologue
    .line 1719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 1724
    .local v23, "t":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1725
    .local v11, "oldCallbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v11, :cond_0

    .line 1727
    const-string v4, "Launcher.Model"

    const-string v10, "LoaderTask running with no launcher"

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :goto_0
    return-void

    .line 1731
    :cond_0
    const/4 v4, -0x1

    move/from16 v0, p1

    if-le v0, v4, :cond_2

    const/16 v21, 0x1

    .line 1732
    .local v21, "isLoadingSynchronously":Z
    :goto_1
    if-eqz v21, :cond_3

    move/from16 v5, p1

    .line 1737
    .local v5, "currentScreen":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()V

    .line 1738
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .local v25, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    .local v20, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1742
    .local v7, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1743
    .local v6, "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1744
    :try_start_0
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1745
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1746
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1747
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1743
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1751
    .local v12, "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .local v16, "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    .local v13, "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    .local v17, "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1757
    .local v8, "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1760
    .local v9, "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v12, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1762
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v5, v1, v13, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentAppWidgets(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v4, p0

    .line 1764
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->filterCurrentFolders(ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 1766
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 1767
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 1770
    new-instance v22, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 1778
    .local v22, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0, v10}, Lcom/android/launcher2/LauncherModel;->access$15(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    .line 1782
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v14, v8

    .line 1781
    invoke-direct/range {v10 .. v15}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1783
    if-eqz v21, :cond_1

    .line 1784
    new-instance v22, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    .end local v22    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;I)V

    .line 1792
    .restart local v22    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0, v10}, Lcom/android/launcher2/LauncherModel;->access$15(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    .line 1797
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1799
    if-eqz v21, :cond_4

    sget-object v19, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    :goto_3
    move-object/from16 v14, p0

    move-object v15, v11

    move-object/from16 v18, v9

    .line 1798
    invoke-direct/range {v14 .. v19}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 1802
    new-instance v22, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    .end local v22    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;J)V

    .line 1818
    .restart local v22    # "r":Ljava/lang/Runnable;
    if-eqz v21, :cond_5

    .line 1819
    sget-object v4, Lcom/android/launcher2/LauncherModel;->mDeferredBindRunnables:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1731
    .end local v5    # "currentScreen":I
    .end local v6    # "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    .end local v7    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .end local v8    # "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .end local v9    # "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .end local v12    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .end local v13    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .end local v16    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .end local v17    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .end local v20    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .end local v21    # "isLoadingSynchronously":Z
    .end local v22    # "r":Ljava/lang/Runnable;
    .end local v25    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1733
    .restart local v21    # "isLoadingSynchronously":Z
    :cond_3
    invoke-interface {v11}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v5

    goto/16 :goto_2

    .line 1743
    .restart local v5    # "currentScreen":I
    .restart local v6    # "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    .restart local v7    # "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .restart local v20    # "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .restart local v25    # "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1799
    .restart local v8    # "currentFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .restart local v9    # "otherFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .restart local v12    # "currentWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .restart local v13    # "currentAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .restart local v16    # "otherWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .restart local v17    # "otherAppWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .restart local v22    # "r":Ljava/lang/Runnable;
    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    .line 1821
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    move-object/from16 v0, v22

    invoke-static {v4, v0, v10}, Lcom/android/launcher2/LauncherModel;->access$15(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto/16 :goto_0
.end method

.method private bindWorkspaceItems(Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "oldCallbacks"    # Lcom/android/launcher2/LauncherModel$Callbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1652
    .local p2, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .local p3, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .local p4, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .local p5, "deferredBindRunnables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    if-eqz p5, :cond_1

    const/4 v8, 0x1

    .line 1655
    .local v8, "postOnMainThread":Z
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1656
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v6, :cond_2

    .line 1676
    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1677
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    invoke-direct {v0, p0, p1, p4}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/HashMap;)V

    .line 1685
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_5

    .line 1686
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1694
    const/4 v7, 0x0

    :goto_3
    if-lt v7, v6, :cond_6

    .line 1713
    return-void

    .line 1652
    .end local v6    # "N":I
    .end local v7    # "i":I
    .end local v8    # "postOnMainThread":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1657
    .restart local v6    # "N":I
    .restart local v7    # "i":I
    .restart local v8    # "postOnMainThread":Z
    :cond_2
    move v4, v7

    .line 1658
    .local v4, "start":I
    add-int/lit8 v1, v7, 0x6

    if-gt v1, v6, :cond_3

    const/4 v5, 0x6

    .line 1659
    .local v5, "chunkSize":I
    :goto_4
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    .line 1668
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_4

    .line 1669
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    :goto_5
    add-int/lit8 v7, v7, 0x6

    goto :goto_1

    .line 1658
    .end local v0    # "r":Ljava/lang/Runnable;
    .end local v5    # "chunkSize":I
    :cond_3
    sub-int v5, v6, v7

    goto :goto_4

    .line 1671
    .restart local v0    # "r":Ljava/lang/Runnable;
    .restart local v5    # "chunkSize":I
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/LauncherModel;->access$15(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_5

    .line 1688
    .end local v4    # "start":I
    .end local v5    # "chunkSize":I
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/LauncherModel;->access$15(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_2

    .line 1695
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_6
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1697
    .local v9, "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    const-string v1, "hdd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LauncherModel cellX = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---cellY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1698
    iget v3, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---spanX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---spanY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1697
    invoke-static {v1, v2}, Lcom/android/launcher2/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    invoke-direct {v0, p0, p1, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 1707
    .restart local v0    # "r":Ljava/lang/Runnable;
    if-eqz v8, :cond_7

    .line 1708
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1710
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/launcher2/LauncherModel;->access$15(Lcom/android/launcher2/LauncherModel;Ljava/lang/Runnable;I)V

    goto :goto_6
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z
    .locals 10
    .param p1, "occupied"    # [[[Lcom/android/launcher2/ItemInfo;
    .param p2, "item"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1175
    iget v0, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1176
    .local v0, "containerIndex":I
    iget-wide v6, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 1178
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherModel$Callbacks;

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-interface {v3, v6}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsButtonRank(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1217
    :goto_0
    return v3

    .line 1184
    :cond_1
    sget v3, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    aget-object v3, p1, v3

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v3, v3, v6

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 1185
    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error loading shortcut into hotseat "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1186
    const-string v6, " into position ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1187
    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    aget-object v6, p1, v6

    iget v7, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1185
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1188
    goto :goto_0

    .line 1190
    :cond_2
    sget v3, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    aget-object v3, p1, v3

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v3, v3, v6

    aput-object p2, v3, v4

    move v3, v5

    .line 1191
    goto :goto_0

    .line 1193
    :cond_3
    iget-wide v6, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    move v3, v5

    .line 1195
    goto :goto_0

    .line 1199
    :cond_4
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .local v1, "x":I
    :goto_1
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v3, v6

    if-lt v1, v3, :cond_5

    .line 1211
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    :goto_2
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_8

    move v3, v5

    .line 1217
    goto/16 :goto_0

    .line 1200
    :cond_5
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .local v2, "y":I
    :goto_3
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v3, v6

    if-lt v2, v3, :cond_6

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1201
    :cond_6
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_7

    .line 1202
    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error loading shortcut "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1203
    const-string v6, " into cell ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1204
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1205
    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1206
    aget-object v6, p1, v0

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1202
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1207
    goto/16 :goto_0

    .line 1200
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1212
    .end local v2    # "y":I
    :cond_8
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .restart local v2    # "y":I
    :goto_4
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v4, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_9

    .line 1211
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1213
    :cond_9
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aput-object p2, v3, v2

    .line 1212
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private filterCurrentAppWidgets(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1586
    .local p2, "appWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .local p3, "currentScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    .local p4, "otherScreenWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    if-gez p1, :cond_0

    .line 1587
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1590
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1599
    return-void

    .line 1590
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1591
    .local v0, "widget":Lcom/android/launcher2/LauncherAppWidgetInfo;
    if-eqz v0, :cond_1

    .line 1592
    iget-wide v2, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1593
    iget v2, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    if-ne v2, p1, :cond_3

    .line 1594
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1596
    :cond_3
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private filterCurrentFolders(ILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1609
    .local p2, "itemsIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/ItemInfo;>;"
    .local p3, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .local p4, "currentScreenFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    .local p5, "otherScreenFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    if-gez p1, :cond_0

    .line 1610
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1613
    :cond_0
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1624
    return-void

    .line 1613
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1614
    .local v1, "id":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ItemInfo;

    .line 1615
    .local v3, "info":Lcom/android/launcher2/ItemInfo;
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1616
    .local v0, "folder":Lcom/android/launcher2/FolderInfo;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 1617
    iget-wide v6, v3, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 1618
    iget v4, v3, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v4, p1, :cond_3

    .line 1619
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p4, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1621
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "currentScreen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p2, "allWorkspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .local p3, "currentScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    .local p4, "otherScreenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1534
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/ItemInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1543
    if-gez p1, :cond_1

    .line 1544
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1550
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1551
    .local v2, "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-static {p2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1557
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1577
    return-void

    .line 1535
    .end local v2    # "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 1536
    .local v0, "i":Lcom/android/launcher2/ItemInfo;
    if-nez v0, :cond_0

    .line 1537
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1557
    .end local v0    # "i":Lcom/android/launcher2/ItemInfo;
    .restart local v2    # "itemsOnScreen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 1558
    .local v1, "info":Lcom/android/launcher2/ItemInfo;
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    .line 1559
    iget v5, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v5, p1, :cond_4

    .line 1560
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1563
    :cond_4
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1565
    :cond_5
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    .line 1566
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1569
    :cond_6
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1570
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    iget-wide v5, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1573
    :cond_7
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private loadAllAppsByBatch()V
    .locals 42

    .prologue
    .line 1877
    const-wide/16 v33, 0x0

    .line 1881
    .local v33, "t":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1882
    .local v23, "oldCallbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v23, :cond_1

    .line 1884
    const-string v37, "Launcher.Model"

    const-string v38, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_0
    return-void

    .line 1888
    :cond_1
    new-instance v21, Landroid/content/Intent;

    const-string v37, "android.intent.action.MAIN"

    const/16 v38, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1889
    .local v21, "mainIntent":Landroid/content/Intent;
    const-string v37, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 1892
    .local v24, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 1894
    .local v7, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v5, 0x7fffffff

    .line 1897
    .local v5, "N":I
    const/16 v17, 0x0

    .line 1898
    .local v17, "i":I
    const/4 v8, -0x1

    .line 1901
    .local v8, "batchSize":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 1903
    .local v31, "startTime":J
    :cond_2
    :goto_0
    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v37, v0

    if-nez v37, :cond_0

    .line 1905
    if-nez v17, :cond_6

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 1907
    sget-object v37, Lcom/android/launcher2/LibWorkspace;->mAllAppsFavo:Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_3
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_8

    .line 1921
    const-wide/16 v25, 0x0

    .line 1922
    .local v25, "qiaTime":J
    const/16 v37, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 1925
    const-string v38, "icon_black_list"

    const-string v39, "array"

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v40

    .line 1924
    invoke-virtual/range {v37 .. v40}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1927
    .local v18, "id":I
    if-eqz v18, :cond_5

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    .line 1929
    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 1930
    .local v11, "blackStrings":[Ljava/lang/String;
    if-eqz v11, :cond_5

    array-length v0, v11

    move/from16 v37, v0

    if-lez v37, :cond_5

    .line 1931
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 1932
    .local v10, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    .local v9, "blackApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_4
    :goto_2
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-nez v38, :cond_9

    .line 1945
    invoke-interface {v7, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1953
    .end local v9    # "blackApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "blackStrings":[Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_0

    .line 1956
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1960
    if-eqz v5, :cond_0

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$20(Lcom/android/launcher2/LauncherModel;)I

    move-result v37

    if-nez v37, :cond_a

    .line 1965
    move v8, v5

    .line 1970
    :goto_3
    const-wide/16 v28, 0x0

    .line 1972
    .local v28, "sortTime":J
    new-instance v37, Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    .line 1971
    move-object/from16 v0, v37

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1981
    .end local v18    # "id":I
    .end local v25    # "qiaTime":J
    .end local v28    # "sortTime":J
    :cond_6
    const-wide/16 v35, 0x0

    .line 1983
    .local v35, "t2":J
    move/from16 v30, v17

    .line 1984
    .local v30, "startIndex":I
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v5, :cond_7

    move/from16 v0, v20

    if-lt v0, v8, :cond_b

    .line 1993
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1994
    .local v13, "endTime":J
    const-string v37, "hdddd"

    new-instance v38, Ljava/lang/StringBuilder;

    const-string v39, "LauncherModel loadAndBindAllApps time = "

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v39, v13, v31

    invoke-virtual/range {v38 .. v40}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    move/from16 v0, v17

    if-gt v0, v8, :cond_c

    const/16 v16, 0x1

    .line 1997
    .local v16, "first":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v12

    .line 1998
    .local v12, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v37

    move-object/from16 v0, v37

    iget-object v6, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1999
    .local v6, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v37

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v37

    new-instance v38, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v12, v2, v6}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v37 .. v38}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$21(Lcom/android/launcher2/LauncherModel;)I

    move-result v37

    if-lez v37, :cond_2

    move/from16 v0, v17

    if-ge v0, v5, :cond_2

    .line 2030
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$21(Lcom/android/launcher2/LauncherModel;)I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2031
    :catch_0
    move-exception v37

    goto/16 :goto_0

    .line 1907
    .end local v6    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v12    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v13    # "endTime":J
    .end local v16    # "first":Z
    .end local v20    # "j":I
    .end local v30    # "startIndex":I
    .end local v35    # "t2":J
    :cond_8
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    .line 1909
    .local v15, "fa":Lcom/android/launcher2/DefaultWorkspace$Favorite;
    iget-object v0, v15, Lcom/android/launcher2/DefaultWorkspace$Favorite;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "favorite"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_3

    .line 1910
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1911
    .local v19, "intent":Landroid/content/Intent;
    new-instance v38, Landroid/content/ComponentName;

    iget-object v0, v15, Lcom/android/launcher2/DefaultWorkspace$Favorite;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    iget-object v0, v15, Lcom/android/launcher2/DefaultWorkspace$Favorite;->className:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-direct/range {v38 .. v40}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1912
    const/16 v38, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .line 1913
    .local v22, "myapp":Landroid/content/pm/ResolveInfo;
    if-eqz v22, :cond_3

    .line 1914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v38

    new-instance v39, Lcom/android/launcher2/ApplicationInfo;

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/launcher2/LauncherModel;->access$19(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    .line 1914
    invoke-virtual/range {v38 .. v39}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    goto/16 :goto_1

    .line 1933
    .end local v15    # "fa":Lcom/android/launcher2/DefaultWorkspace$Favorite;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "myapp":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "blackApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "blackStrings":[Ljava/lang/String;
    .restart local v18    # "id":I
    .restart local v25    # "qiaTime":J
    :cond_9
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ResolveInfo;

    .line 1941
    .local v27, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 1942
    move-object/from16 v0, v27

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1967
    .end local v9    # "blackApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "blackStrings":[Ljava/lang/String;
    .end local v27    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$20(Lcom/android/launcher2/LauncherModel;)I

    move-result v8

    goto/16 :goto_3

    .line 1986
    .end local v18    # "id":I
    .end local v25    # "qiaTime":J
    .restart local v20    # "j":I
    .restart local v30    # "startIndex":I
    .restart local v35    # "t2":J
    :cond_b
    const-string v37, "hdddd"

    const-string v38, "loadAndBindAllApps load other "

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v38

    new-instance v39, Lcom/android/launcher2/ApplicationInfo;

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/ResolveInfo;

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/android/launcher2/LauncherModel;->access$19(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    move-object/from16 v2, v37

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    .line 1987
    invoke-virtual/range {v38 .. v39}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 1989
    add-int/lit8 v17, v17, 0x1

    .line 1984
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 1996
    .restart local v13    # "endTime":J
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_5
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$3(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1831
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 1832
    monitor-enter p0

    .line 1833
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1834
    monitor-exit p0

    .line 1841
    :goto_0
    return-void

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$16(Lcom/android/launcher2/LauncherModel;Z)V

    .line 1832
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1839
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 966
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    .line 973
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$0(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 975
    monitor-enter p0

    .line 976
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 977
    monitor-exit p0

    .line 985
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$1(Lcom/android/launcher2/LauncherModel;Z)V

    .line 975
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V

    goto :goto_0

    .line 975
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadWorkspace()V
    .locals 51

    .prologue
    .line 1221
    const-wide/16 v47, 0x0

    .line 1223
    .local v47, "t":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1224
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1225
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v40

    .line 1226
    .local v40, "manager":Landroid/content/pm/PackageManager;
    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v49

    .line 1227
    .local v49, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v40 .. v40}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v35

    .line 1230
    .local v35, "isSafeMode":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$10(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherProvider;->loadDefaultFavoritesIfNecessary(I)V

    .line 1232
    sget-object v50, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v50

    .line 1233
    :try_start_0
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1234
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1235
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1236
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1237
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1239
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    .local v38, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1241
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1245
    .local v8, "c":Landroid/database/Cursor;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "wcb workspace has "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icons"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1247
    const-string v4, "Launcher.Model"

    const-string v5, "wcb workspace is empty reload default"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$10(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->loadDefaultForce()V

    .line 1250
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1249
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8    # "c":Landroid/database/Cursor;
    move-result-object v8

    .line 1259
    .restart local v8    # "c":Landroid/database/Cursor;
    :cond_0
    sget v4, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$11()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$12()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/android/launcher2/ItemInfo;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [[[Lcom/android/launcher2/ItemInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1262
    .local v42, "occupied":[[[Lcom/android/launcher2/ItemInfo;
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 1264
    .local v31, "idIndex":I
    const-string v4, "intent"

    .line 1263
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1266
    .local v34, "intentIndex":I
    const-string v4, "title"

    .line 1265
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1268
    .local v10, "titleIndex":I
    const-string v4, "iconType"

    .line 1267
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1269
    .local v14, "iconTypeIndex":I
    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1271
    .local v9, "iconIndex":I
    const-string v4, "iconPackage"

    .line 1270
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1273
    .local v15, "iconPackageIndex":I
    const-string v4, "iconResource"

    .line 1272
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1275
    .local v16, "iconResourceIndex":I
    const-string v4, "container"

    .line 1274
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1277
    .local v26, "containerIndex":I
    const-string v4, "itemType"

    .line 1276
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1279
    .local v37, "itemTypeIndex":I
    const-string v4, "appWidgetId"

    .line 1278
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1281
    .local v20, "appWidgetIdIndex":I
    const-string v4, "screen"

    .line 1280
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 1283
    .local v44, "screenIndex":I
    const-string v4, "cellX"

    .line 1282
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1285
    .local v22, "cellXIndex":I
    const-string v4, "cellY"

    .line 1284
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1287
    .local v23, "cellYIndex":I
    const-string v4, "spanX"

    .line 1286
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1289
    .local v45, "spanXIndex":I
    const-string v4, "spanY"

    .line 1288
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1301
    .local v46, "spanYIndex":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_4

    .line 1486
    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1489
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1491
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 1490
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v24

    .line 1493
    .local v24, "client":Landroid/content/ContentProviderClient;
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1232
    .end local v24    # "client":Landroid/content/ContentProviderClient;
    :cond_3
    monitor-exit v50
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1524
    return-void

    .line 1303
    :cond_4
    :try_start_3
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 1305
    .local v36, "itemType":I
    packed-switch v36, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1308
    :pswitch_1
    move/from16 v0, v34

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v33

    .line 1310
    .local v33, "intentDescription":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, v33

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 1315
    .local v6, "intent":Landroid/content/Intent;
    if-nez v36, :cond_6

    .line 1316
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    .line 1317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v5, v40

    move-object v7, v13

    .line 1316
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v32

    .line 1336
    .local v32, "info":Lcom/android/launcher2/ShortcutInfo;
    :cond_5
    :goto_2
    if-eqz v32, :cond_7

    .line 1337
    move-object/from16 v0, v32

    iput-object v6, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1338
    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/launcher2/ShortcutInfo;->id:J

    .line 1339
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1340
    .local v25, "container":I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v32

    iput-wide v4, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 1341
    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/launcher2/ShortcutInfo;->screen:I

    .line 1342
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 1343
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 1346
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1350
    packed-switch v25, :pswitch_data_1

    .line 1358
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move/from16 v0, v25

    int-to-long v11, v0

    invoke-static {v4, v11, v12}, Lcom/android/launcher2/LauncherModel;->access$14(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v28

    .line 1359
    .local v28, "folderInfo":Lcom/android/launcher2/FolderInfo;
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 1362
    .end local v28    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    :goto_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v32

    iget-wide v11, v0, Lcom/android/launcher2/ShortcutInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v4, v5, v0, v8, v9}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1481
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v25    # "container":I
    .end local v32    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v33    # "intentDescription":Ljava/lang/String;
    .end local v36    # "itemType":I
    :catch_0
    move-exception v27

    .line 1482
    .local v27, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1485
    .end local v9    # "iconIndex":I
    .end local v10    # "titleIndex":I
    .end local v14    # "iconTypeIndex":I
    .end local v15    # "iconPackageIndex":I
    .end local v16    # "iconResourceIndex":I
    .end local v20    # "appWidgetIdIndex":I
    .end local v22    # "cellXIndex":I
    .end local v23    # "cellYIndex":I
    .end local v26    # "containerIndex":I
    .end local v27    # "e":Ljava/lang/Exception;
    .end local v31    # "idIndex":I
    .end local v34    # "intentIndex":I
    .end local v37    # "itemTypeIndex":I
    .end local v44    # "screenIndex":I
    .end local v45    # "spanXIndex":I
    .end local v46    # "spanYIndex":I
    :catchall_0
    move-exception v4

    .line 1486
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1487
    throw v4

    .line 1232
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v38    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v42    # "occupied":[[[Lcom/android/launcher2/ItemInfo;
    :catchall_1
    move-exception v4

    monitor-exit v50
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 1311
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "iconIndex":I
    .restart local v10    # "titleIndex":I
    .restart local v14    # "iconTypeIndex":I
    .restart local v15    # "iconPackageIndex":I
    .restart local v16    # "iconResourceIndex":I
    .restart local v20    # "appWidgetIdIndex":I
    .restart local v22    # "cellXIndex":I
    .restart local v23    # "cellYIndex":I
    .restart local v26    # "containerIndex":I
    .restart local v31    # "idIndex":I
    .restart local v33    # "intentDescription":Ljava/lang/String;
    .restart local v34    # "intentIndex":I
    .restart local v36    # "itemType":I
    .restart local v37    # "itemTypeIndex":I
    .restart local v38    # "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v42    # "occupied":[[[Lcom/android/launcher2/ItemInfo;
    .restart local v44    # "screenIndex":I
    .restart local v45    # "spanXIndex":I
    .restart local v46    # "spanYIndex":I
    :catch_1
    move-exception v27

    .local v27, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1319
    .end local v27    # "e":Ljava/net/URISyntaxException;
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v12, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/android/launcher2/LauncherModel;->access$13(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v32

    .line 1326
    .restart local v32    # "info":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1327
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1328
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1329
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1331
    const/high16 v4, 0x10200000

    .line 1330
    invoke-virtual {v6, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1353
    .restart local v25    # "container":I
    :pswitch_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1372
    .end local v25    # "container":I
    :cond_7
    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1373
    .local v29, "id":J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Error loading shortcut "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const/4 v4, 0x0

    .line 1374
    move-wide/from16 v0, v29

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    .line 1375
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1374
    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1380
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v29    # "id":J
    .end local v32    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v33    # "intentDescription":Ljava/lang/String;
    :pswitch_3
    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1381
    .restart local v29    # "id":J
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v29

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$14(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v28

    .line 1383
    .restart local v28    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1384
    move-wide/from16 v0, v29

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/android/launcher2/FolderInfo;->id:J

    .line 1385
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1386
    .restart local v25    # "container":I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v28

    iput-wide v4, v0, Lcom/android/launcher2/FolderInfo;->container:J

    .line 1387
    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/FolderInfo;->screen:I

    .line 1388
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/FolderInfo;->cellX:I

    .line 1389
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/launcher2/FolderInfo;->cellY:I

    .line 1392
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1395
    packed-switch v25, :pswitch_data_2

    .line 1402
    :goto_4
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-wide v11, v0, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-wide v11, v0, Lcom/android/launcher2/FolderInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1398
    :pswitch_4
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1408
    .end local v25    # "container":I
    .end local v28    # "folderInfo":Lcom/android/launcher2/FolderInfo;
    .end local v29    # "id":J
    :pswitch_5
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1409
    .local v19, "appWidgetId":I
    move/from16 v0, v31

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1411
    .restart local v29    # "id":J
    const/4 v4, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_9

    .line 1412
    new-instance v21, Lcom/android/launcher2/LauncherAppWidgetInfo;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1413
    .local v21, "appWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-wide/from16 v0, v29

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 1414
    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    .line 1415
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    .line 1416
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    .line 1417
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1418
    move/from16 v0, v46

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1419
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanX:I

    .line 1420
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanY:I

    .line 1422
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1423
    .restart local v25    # "container":I
    const/16 v4, -0x64

    move/from16 v0, v25

    if-eq v0, v4, :cond_8

    .line 1424
    const/16 v4, -0x65

    move/from16 v0, v25

    if-eq v0, v4, :cond_8

    .line 1425
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1429
    :cond_8
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    .line 1432
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1435
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1440
    .end local v21    # "appWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v25    # "container":I
    :cond_9
    move-object/from16 v0, v49

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v43

    .line 1442
    .local v43, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v35, :cond_b

    if-eqz v43, :cond_a

    move-object/from16 v0, v43

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_a

    .line 1443
    move-object/from16 v0, v43

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 1444
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleting widget that isn\'t installed anymore: id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1445
    move-wide/from16 v0, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1444
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 1446
    .local v39, "log":Ljava/lang/String;
    const-string v4, "Launcher.Model"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    sget-object v4, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1450
    .end local v39    # "log":Ljava/lang/String;
    :cond_b
    new-instance v21, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1451
    move-object/from16 v0, v43

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1450
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1452
    .restart local v21    # "appWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-wide/from16 v0, v29

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 1453
    move/from16 v0, v44

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screen:I

    .line 1454
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellX:I

    .line 1455
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->cellY:I

    .line 1456
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    .line 1457
    move/from16 v0, v46

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanY:I

    .line 1458
    move-object/from16 v0, v43

    invoke-static {v13, v0}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v41

    .line 1459
    .local v41, "minSpan":[I
    const/4 v4, 0x0

    aget v4, v41, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanX:I

    .line 1460
    const/4 v4, 0x1

    aget v4, v41, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minSpanY:I

    .line 1462
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1463
    .restart local v25    # "container":I
    const/16 v4, -0x64

    move/from16 v0, v25

    if-eq v0, v4, :cond_c

    .line 1464
    const/16 v4, -0x65

    move/from16 v0, v25

    if-eq v0, v4, :cond_c

    .line 1465
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1469
    :cond_c
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    .line 1472
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1475
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1493
    .end local v19    # "appWidgetId":I
    .end local v21    # "appWidgetInfo":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v25    # "container":I
    .end local v29    # "id":J
    .end local v36    # "itemType":I
    .end local v41    # "minSpan":[I
    .end local v43    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v24    # "client":Landroid/content/ContentProviderClient;
    :cond_d
    :try_start_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v29

    .line 1499
    .restart local v29    # "id":J
    const/4 v4, 0x0

    :try_start_a
    move-wide/from16 v0, v29

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    .line 1500
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1499
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7, v11}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1501
    :catch_2
    move-exception v27

    .line 1502
    .local v27, "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v4, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Could not remove id = "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v29

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1350
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1395
    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 6

    .prologue
    .line 1844
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1845
    .local v2, "oldCallbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 1847
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :goto_0
    return-void

    .line 1854
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$17(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1855
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1868
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$18()Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x0

    .line 1869
    .local v0, "isRunningOnMainThread":Z
    :goto_1
    invoke-interface {v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 1870
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1868
    .end local v0    # "isRunningOnMainThread":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1872
    .restart local v0    # "isRunningOnMainThread":Z
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1630
    .local p1, "workspaceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1644
    return-void
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 991
    monitor-enter p0

    .line 992
    const-wide/16 v0, 0x0

    .line 994
    .local v0, "workspaceWaitTime":J
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1006
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    if-eqz v2, :cond_1

    .line 991
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    return-void

    .line 1008
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v2

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    .prologue
    .line 2043
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2044
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mContext="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mIsLaunching="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mStopped="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mItems size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    monitor-exit v1

    .line 2050
    return-void

    .line 2043
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method isLoadingWorkspace()Z
    .locals 1

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLoadingAndBindingWorkspace:Z

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1058
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v6}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1059
    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/LauncherModel;->access$6(Lcom/android/launcher2/LauncherModel;Z)V

    .line 1058
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v6}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1065
    .local v1, "cbk":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    .line 1070
    .local v3, "loadWorkspaceFirst":Z
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v6}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1073
    :try_start_1
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v7, :cond_2

    :goto_0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1070
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1076
    if-eqz v3, :cond_3

    .line 1078
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 1084
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_4

    .line 1116
    :goto_2
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1117
    :try_start_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1120
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1116
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1125
    iput-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 1127
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1129
    :try_start_3
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$8(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 1130
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher2/LauncherModel;->access$9(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    .line 1132
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher2/LauncherModel;->access$6(Lcom/android/launcher2/LauncherModel;Z)V

    .line 1127
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1134
    return-void

    .line 1058
    .end local v1    # "cbk":Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v3    # "loadWorkspaceFirst":Z
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v1    # "cbk":Lcom/android/launcher2/LauncherModel$Callbacks;
    .restart local v3    # "loadWorkspaceFirst":Z
    :cond_2
    move v4, v5

    .line 1074
    goto :goto_0

    .line 1070
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 1081
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_1

    .line 1090
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1091
    :try_start_6
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v4, :cond_5

    .line 1093
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1090
    :cond_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1096
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1099
    if-eqz v3, :cond_6

    .line 1101
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1108
    :goto_4
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1109
    const/4 v4, 0x0

    :try_start_7
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1108
    monitor-exit v5

    goto :goto_2

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 1090
    :catchall_3
    move-exception v4

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4

    .line 1104
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_4

    .line 1117
    :cond_7
    :try_start_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1118
    .local v2, "key":Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sBgDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v8, v9, v4, v5}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;[B)V

    goto :goto_3

    .line 1116
    .end local v2    # "key":Ljava/lang/Object;
    :catchall_4
    move-exception v4

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v4

    .line 1127
    :catchall_5
    move-exception v4

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v4
.end method

.method runBindSynchronousPage(I)V
    .locals 3
    .param p1, "synchronousBindPage"    # I

    .prologue
    .line 1022
    if-gez p1, :cond_0

    .line 1024
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not call runBindSynchronousPage() without valid page index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$3(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$0(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1030
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$5(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$2(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DeferredHandler;->flush()V

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V

    .line 1054
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V

    .line 1055
    return-void
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 1137
    monitor-enter p0

    .line 1138
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1137
    monitor-exit p0

    .line 1141
    return-void

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/android/launcher2/LauncherModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 1151
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$4(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1152
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 1153
    monitor-exit v2

    move-object v0, v1

    .line 1169
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1157
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1160
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$7(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1161
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 1162
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1164
    :cond_2
    if-nez v0, :cond_3

    .line 1165
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1169
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 1151
    .end local v0    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
