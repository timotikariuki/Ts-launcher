.class Lcom/android/launcher2/FolderIcon$FolderRingAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$2;->this$1:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 216
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$2;->this$1:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$2;->this$1:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$2(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    :cond_0
    return-void
.end method
