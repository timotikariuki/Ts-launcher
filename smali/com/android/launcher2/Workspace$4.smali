.class Lcom/android/launcher2/Workspace$4;
.super Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field private final synthetic val$cl:Lcom/android/launcher2/CellLayout;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$4;->val$cl:Lcom/android/launcher2/CellLayout;

    iput p3, p0, Lcom/android/launcher2/Workspace$4;->val$i:I

    .line 1840
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 4
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/launcher2/Workspace$4;->val$cl:Lcom/android/launcher2/CellLayout;

    .line 1843
    iget-object v1, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$13(Lcom/android/launcher2/Workspace;)[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Workspace$4;->val$i:I

    aget v1, v1, v2

    mul-float/2addr v1, p1

    .line 1844
    iget-object v2, p0, Lcom/android/launcher2/Workspace$4;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$14(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Workspace$4;->val$i:I

    aget v2, v2, v3

    mul-float/2addr v2, p2

    .line 1843
    add-float/2addr v1, v2

    .line 1842
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1845
    return-void
.end method
