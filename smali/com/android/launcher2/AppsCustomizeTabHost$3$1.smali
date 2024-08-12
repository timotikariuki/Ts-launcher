.class Lcom/android/launcher2/AppsCustomizeTabHost$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsCustomizeTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppsCustomizeTabHost$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    .line 394
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;->access$0(Lcom/android/launcher2/AppsCustomizeTabHost$3;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$4(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;->access$0(Lcom/android/launcher2/AppsCustomizeTabHost$3;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$4(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 405
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;->access$0(Lcom/android/launcher2/AppsCustomizeTabHost$3;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$4(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$1;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;->access$0(Lcom/android/launcher2/AppsCustomizeTabHost$3;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$4(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 399
    return-void
.end method
