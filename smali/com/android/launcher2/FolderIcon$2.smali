.class Lcom/android/launcher2/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon;

.field private final synthetic val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field private final synthetic val$reverse:Z

.field private final synthetic val$transX0:F

.field private final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;ZFLcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    iput-boolean p2, p0, Lcom/android/launcher2/FolderIcon$2;->val$reverse:Z

    iput p3, p0, Lcom/android/launcher2/FolderIcon$2;->val$transX0:F

    iput-object p4, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput p5, p0, Lcom/android/launcher2/FolderIcon$2;->val$transY0:F

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 579
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 580
    .local v0, "progress":F
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIcon$2;->val$reverse:Z

    if-eqz v1, :cond_0

    .line 581
    sub-float v0, v5, v0

    .line 582
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$2(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$4(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/FolderIcon$2;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon$2;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 586
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$4(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/FolderIcon$2;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon$2;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 587
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v1}, Lcom/android/launcher2/FolderIcon;->access$4(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    add-float/2addr v2, v5

    iput v2, v1, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 588
    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    .line 589
    return-void
.end method
