.class Lcom/android/launcher2/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field private final synthetic val$animationEndStyle:I

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher2/DragLayer$3;->val$animationEndStyle:I

    .line 728
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 733
    :cond_0
    iget v0, p0, Lcom/android/launcher2/DragLayer$3;->val$animationEndStyle:I

    packed-switch v0, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 735
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAnimatedView()V

    goto :goto_0

    .line 738
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-static {v0}, Lcom/android/launcher2/DragLayer;->access$3(Lcom/android/launcher2/DragLayer;)V

    goto :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
