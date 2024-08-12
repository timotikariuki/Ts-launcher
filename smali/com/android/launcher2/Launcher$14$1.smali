.class Lcom/android/launcher2/Launcher$14$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$14;

.field private final synthetic val$stateAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$14;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$14$1;->this$1:Lcom/android/launcher2/Launcher$14;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$14$1;->val$stateAnimation:Landroid/animation/AnimatorSet;

    .line 3061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/android/launcher2/Launcher$14$1;->this$1:Lcom/android/launcher2/Launcher$14;

    invoke-static {v0}, Lcom/android/launcher2/Launcher$14;->access$0(Lcom/android/launcher2/Launcher$14;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$20(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$14$1;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    .line 3068
    :goto_0
    return-void

    .line 3067
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$14$1;->this$1:Lcom/android/launcher2/Launcher$14;

    invoke-static {v0}, Lcom/android/launcher2/Launcher$14;->access$0(Lcom/android/launcher2/Launcher$14;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$20(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
