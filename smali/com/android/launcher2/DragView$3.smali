.class Lcom/android/launcher2/DragView$3;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/DragView$3;->this$0:Lcom/android/launcher2/DragView;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher2/DragView$3;->this$0:Lcom/android/launcher2/DragView;

    iget-object v0, v0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    return-void
.end method
