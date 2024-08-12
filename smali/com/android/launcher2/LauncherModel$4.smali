.class Lcom/android/launcher2/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field private final synthetic val$itemId:J

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field private final synthetic val$uri:Landroid/net/Uri;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$4;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/android/launcher2/LauncherModel$4;->val$itemId:J

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-object p7, p0, Lcom/android/launcher2/LauncherModel$4;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, -0x64

    const-wide/16 v7, -0x65

    const/4 v5, 0x0

    .line 332
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$4;->val$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 335
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 336
    :try_start_0
    iget-wide v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$itemId:J

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$4;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v4, v5, v2, v6}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 338
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v2, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v2, v4, v9

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v2, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v2, v4, v7

    if-eqz v2, :cond_0

    .line 341
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "item: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " container being set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 345
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v4, v4, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", not in the list of folders"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "Launcher.Model"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/android/launcher2/Launcher;->dumpDebugLogsToConsole()V

    .line 354
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/android/launcher2/LauncherModel$4;->val$itemId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 355
    .local v0, "modelItem":Lcom/android/launcher2/ItemInfo;
    iget-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v2, v4, v9

    if-eqz v2, :cond_1

    .line 356
    iget-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v2, v4, v7

    if-nez v2, :cond_3

    .line 357
    :cond_1
    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 335
    :cond_2
    :goto_0
    monitor-exit v3

    .line 372
    return-void

    .line 361
    :pswitch_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v0    # "modelItem":Lcom/android/launcher2/ItemInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 369
    .restart local v0    # "modelItem":Lcom/android/launcher2/ItemInfo;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
