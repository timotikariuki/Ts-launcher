.class Lcom/android/launcher2/ViewController$1;
.super Ljava/lang/Object;
.source "ViewController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ViewController;->showViewChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ViewController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 172
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$0(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$0(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$1(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$1(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$0(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$0(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$1(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/ViewController$1;->this$0:Lcom/android/launcher2/ViewController;

    invoke-static {v0}, Lcom/android/launcher2/ViewController;->access$1(Lcom/android/launcher2/ViewController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 153
    return-void
.end method
