.class Lcom/android/launcher2/Workspace$9;
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

.field private final synthetic val$container:J

.field private final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field private final synthetic val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

.field private final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;Lcom/android/launcher2/ItemInfo;JI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$9;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-wide p4, p0, Lcom/android/launcher2/Workspace$9;->val$container:J

    iput p6, p0, Lcom/android/launcher2/Workspace$9;->val$screen:I

    .line 3243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v7, 0x0

    .line 3248
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget v0, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 3261
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3262
    iget-object v2, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget v2, v2, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3261
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3250
    :pswitch_1
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 3251
    .local v6, "span":[I
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$9;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    aput v1, v6, v0

    .line 3252
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Workspace$9;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    aput v1, v6, v0

    .line 3253
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 3254
    iget-wide v2, p0, Lcom/android/launcher2/Workspace$9;->val$container:J

    iget v4, p0, Lcom/android/launcher2/Workspace$9;->val$screen:I

    iget-object v5, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$6(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    .line 3253
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I[I)V

    .line 3264
    .end local v6    # "span":[I
    :goto_0
    return-void

    .line 3257
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$0(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v8

    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget-object v9, v0, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 3258
    iget-wide v10, p0, Lcom/android/launcher2/Workspace$9;->val$container:J

    iget v12, p0, Lcom/android/launcher2/Workspace$9;->val$screen:I

    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$6(Lcom/android/launcher2/Workspace;)[I

    move-result-object v13

    move-object v14, v7

    .line 3257
    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    goto :goto_0

    .line 3248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
