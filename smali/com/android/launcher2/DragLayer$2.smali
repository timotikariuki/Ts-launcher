.class Lcom/android/launcher2/DragLayer$2;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field private final synthetic val$alphaInterpolator:Landroid/view/animation/Interpolator;

.field private final synthetic val$dropViewScale:F

.field private final synthetic val$finalAlpha:F

.field private final synthetic val$finalScaleX:F

.field private final synthetic val$finalScaleY:F

.field private final synthetic val$from:Landroid/graphics/Rect;

.field private final synthetic val$initAlpha:F

.field private final synthetic val$initScaleX:F

.field private final synthetic val$initScaleY:F

.field private final synthetic val$motionInterpolator:Landroid/view/animation/Interpolator;

.field private final synthetic val$to:Landroid/graphics/Rect;

.field private final synthetic val$view:Lcom/android/launcher2/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$2;->val$view:Lcom/android/launcher2/DragView;

    iput-object p3, p0, Lcom/android/launcher2/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/launcher2/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    iput p5, p0, Lcom/android/launcher2/DragLayer$2;->val$initScaleX:F

    iput p6, p0, Lcom/android/launcher2/DragLayer$2;->val$dropViewScale:F

    iput p7, p0, Lcom/android/launcher2/DragLayer$2;->val$initScaleY:F

    iput p8, p0, Lcom/android/launcher2/DragLayer$2;->val$finalScaleX:F

    iput p9, p0, Lcom/android/launcher2/DragLayer$2;->val$finalScaleY:F

    iput p10, p0, Lcom/android/launcher2/DragLayer$2;->val$finalAlpha:F

    iput p11, p0, Lcom/android/launcher2/DragLayer$2;->val$initAlpha:F

    iput-object p12, p0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    iput-object p13, p0, Lcom/android/launcher2/DragLayer$2;->val$to:Landroid/graphics/Rect;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 20
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 669
    .local v9, "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$view:Lcom/android/launcher2/DragView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v12

    .line 670
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$view:Lcom/android/launcher2/DragView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v5

    .line 672
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    move v2, v9

    .line 674
    .local v2, "alphaPercent":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    move v8, v9

    .line 677
    .local v8, "motionPercent":F
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$initScaleX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$dropViewScale:F

    move/from16 v18, v0

    mul-float v6, v17, v18

    .line 678
    .local v6, "initialScaleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$initScaleY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$dropViewScale:F

    move/from16 v18, v0

    mul-float v7, v17, v18

    .line 679
    .local v7, "initialScaleY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$finalScaleX:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v9

    mul-float v18, v18, v6

    add-float v10, v17, v18

    .line 680
    .local v10, "scaleX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$finalScaleY:F

    move/from16 v17, v0

    mul-float v17, v17, v9

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v9

    mul-float v18, v18, v7

    add-float v11, v17, v18

    .line 681
    .local v11, "scaleY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$finalAlpha:F

    move/from16 v17, v0

    mul-float v17, v17, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/DragLayer$2;->val$initAlpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v2

    mul-float v18, v18, v19

    add-float v1, v17, v18

    .line 683
    .local v1, "alpha":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v6, v18

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v3, v17, v18

    .line 684
    .local v3, "fromLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$from:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v7, v18

    int-to-float v0, v5

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v4, v17, v18

    .line 686
    .local v4, "fromTop":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$to:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v3

    mul-float v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v3

    move/from16 v0, v17

    float-to-int v13, v0

    .line 687
    .local v13, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$to:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v4

    mul-float v17, v17, v8

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v4

    move/from16 v0, v17

    float-to-int v15, v0

    .line 689
    .local v15, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragView;->getScrollX()I

    move-result v17

    sub-int v18, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$1(Lcom/android/launcher2/DragLayer;)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$2(Lcom/android/launcher2/DragLayer;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/DragLayer;->access$1(Lcom/android/launcher2/DragLayer;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScrollX()I

    move-result v19

    sub-int v17, v17, v19

    .line 689
    :goto_2
    add-int v14, v18, v17

    .line 691
    .local v14, "xPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/DragView;->getScrollY()I

    move-result v17

    sub-int v16, v15, v17

    .line 693
    .local v16, "yPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    int-to-float v0, v14

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/DragView;->setTranslationX(F)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/DragView;->setTranslationY(F)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/launcher2/DragView;->setScaleX(F)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/launcher2/DragView;->setScaleY(F)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->this$0:Lcom/android/launcher2/DragLayer;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/DragLayer;->access$0(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setAlpha(F)V

    .line 698
    return-void

    .line 673
    .end local v1    # "alpha":F
    .end local v2    # "alphaPercent":F
    .end local v3    # "fromLeft":F
    .end local v4    # "fromTop":F
    .end local v6    # "initialScaleX":F
    .end local v7    # "initialScaleY":F
    .end local v8    # "motionPercent":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v13    # "x":I
    .end local v14    # "xPos":I
    .end local v15    # "y":I
    .end local v16    # "yPos":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$alphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    goto/16 :goto_0

    .line 675
    .restart local v2    # "alphaPercent":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$2;->val$motionInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    goto/16 :goto_1

    .line 690
    .restart local v1    # "alpha":F
    .restart local v3    # "fromLeft":F
    .restart local v4    # "fromTop":F
    .restart local v6    # "initialScaleX":F
    .restart local v7    # "initialScaleY":F
    .restart local v8    # "motionPercent":F
    .restart local v10    # "scaleX":F
    .restart local v11    # "scaleY":F
    .restart local v13    # "x":I
    .restart local v15    # "y":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2
.end method
