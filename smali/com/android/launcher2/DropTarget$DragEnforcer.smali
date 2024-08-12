.class public Lcom/android/launcher2/DropTarget$DragEnforcer;
.super Ljava/lang/Object;
.source "DropTarget.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragEnforcer"
.end annotation


# instance fields
.field dragParity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 75
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragExit: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method onDragEnter()V
    .locals 3

    .prologue
    .line 79
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    .line 80
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 81
    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragEnter: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method onDragExit()V
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    .line 87
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragExit: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "source"    # Lcom/android/launcher2/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "DropTarget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDragEnter: Drag contract violated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method
