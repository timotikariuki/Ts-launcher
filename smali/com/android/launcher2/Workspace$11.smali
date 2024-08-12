.class Lcom/android/launcher2/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field private final synthetic val$layout:Landroid/view/ViewGroup;

.field private final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field private final synthetic val$packageNames:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$11;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    .line 3820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 3822
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3823
    .local v5, "childrenToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3826
    .local v4, "childCount":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    if-lt v11, v4, :cond_1

    .line 3875
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3876
    const/4 v11, 0x0

    :goto_1
    if-lt v11, v4, :cond_7

    .line 3886
    if-lez v4, :cond_0

    .line 3887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->invalidate()V

    .line 3890
    :cond_0
    return-void

    .line 3827
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 3828
    .local v16, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 3830
    .local v15, "tag":Ljava/lang/Object;
    instance-of v0, v15, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v8, v15

    .line 3831
    check-cast v8, Lcom/android/launcher2/ShortcutInfo;

    .line 3832
    .local v8, "info":Lcom/android/launcher2/ShortcutInfo;
    iget-object v9, v8, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3833
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 3835
    .local v13, "name":Landroid/content/ComponentName;
    if-eqz v13, :cond_2

    .line 3836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3838
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3826
    .end local v8    # "info":Lcom/android/launcher2/ShortcutInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "name":Landroid/content/ComponentName;
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3841
    :cond_3
    instance-of v0, v15, Lcom/android/launcher2/FolderInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object v8, v15

    .line 3842
    check-cast v8, Lcom/android/launcher2/FolderInfo;

    .line 3843
    .local v8, "info":Lcom/android/launcher2/FolderInfo;
    iget-object v6, v8, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3844
    .local v6, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3846
    .local v7, "contentsCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3848
    .local v2, "appsToRemoveFromFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_3
    if-lt v12, v7, :cond_4

    .line 3859
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 3860
    .local v10, "item":Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v8, v10}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 3861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_4

    .line 3849
    .end local v10    # "item":Lcom/android/launcher2/ShortcutInfo;
    :cond_4
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 3850
    .local v1, "appInfo":Lcom/android/launcher2/ShortcutInfo;
    iget-object v9, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3851
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 3853
    .restart local v13    # "name":Landroid/content/ComponentName;
    if-eqz v13, :cond_5

    .line 3854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3855
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3848
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3863
    .end local v1    # "appInfo":Lcom/android/launcher2/ShortcutInfo;
    .end local v2    # "appsToRemoveFromFolder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v6    # "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v7    # "contentsCount":I
    .end local v8    # "info":Lcom/android/launcher2/FolderInfo;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "k":I
    .end local v13    # "name":Landroid/content/ComponentName;
    :cond_6
    instance-of v0, v15, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object v8, v15

    .line 3864
    check-cast v8, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 3865
    .local v8, "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v14, v8, Lcom/android/launcher2/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 3866
    .local v14, "provider":Landroid/content/ComponentName;
    if-eqz v14, :cond_2

    .line 3867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3869
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3877
    .end local v8    # "info":Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v14    # "provider":Landroid/content/ComponentName;
    .end local v15    # "tag":Ljava/lang/Object;
    .end local v16    # "view":Landroid/view/View;
    :cond_7
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3880
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3881
    instance-of v0, v3, Lcom/android/launcher2/DropTarget;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 3882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$17(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v17

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3    # "child":Landroid/view/View;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3876
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method
