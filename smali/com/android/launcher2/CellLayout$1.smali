.class Lcom/android/launcher2/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field private final synthetic val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    iput-object p2, p0, Lcom/android/launcher2/CellLayout$1;->val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/launcher2/CellLayout$1;->val$thisIndex:I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$1;->val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 257
    .local v1, "outline":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 266
    .local v0, "debug":Z
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 271
    .end local v0    # "debug":Z
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v2}, Lcom/android/launcher2/CellLayout;->access$6(Lcom/android/launcher2/CellLayout;)[F

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    .line 269
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    iget-object v3, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v3}, Lcom/android/launcher2/CellLayout;->access$7(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/CellLayout$1;->val$thisIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
