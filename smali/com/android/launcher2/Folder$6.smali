.class Lcom/android/launcher2/Folder$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->animateClosed()V
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
    iput-object p1, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    .line 484
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$7(Lcom/android/launcher2/Folder;)V

    .line 488
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 489
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0, v2}, Lcom/android/launcher2/Folder;->access$4(Lcom/android/launcher2/Folder;I)V

    .line 490
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    const/16 v1, 0x20

    .line 494
    iget-object v2, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher/R$string;->folder_closed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Folder;->access$3(Lcom/android/launcher2/Folder;ILjava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/launcher2/Folder$6;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/Folder;->access$4(Lcom/android/launcher2/Folder;I)V

    .line 496
    return-void
.end method
