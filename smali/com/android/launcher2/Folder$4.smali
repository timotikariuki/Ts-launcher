.class Lcom/android/launcher2/Folder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    .line 426
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/launcher2/Folder;->access$4(Lcom/android/launcher2/Folder;I)V

    .line 437
    iget-object v1, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 438
    iget-object v1, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->showFirstRunFoldersCling()Lcom/android/launcher2/Cling;

    move-result-object v0

    .line 439
    .local v0, "cling":Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->bringToFront()V

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$5(Lcom/android/launcher2/Folder;)V

    .line 443
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x1

    .line 429
    iget-object v0, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    const/16 v1, 0x20

    .line 430
    iget-object v2, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher/R$string;->folder_opened:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 431
    iget-object v5, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 430
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Folder;->access$3(Lcom/android/launcher2/Folder;ILjava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/launcher2/Folder$4;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0, v6}, Lcom/android/launcher2/Folder;->access$4(Lcom/android/launcher2/Folder;I)V

    .line 433
    return-void
.end method
