.class Lcom/android/launcher2/Launcher$18;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field private final synthetic val$stateAnimation:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$18;->val$stateAnimation:Landroid/animation/Animator;

    .line 3415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/launcher2/Launcher$18;->val$stateAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$20(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3420
    :goto_0
    return-void

    .line 3419
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$18;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$20(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
