.class Lcom/android/launcher2/AppsCustomizeTabHost$3$2;
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
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    .line 409
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$2;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost$3;->access$0(Lcom/android/launcher2/AppsCustomizeTabHost$3;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->access$3(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    .line 413
    return-void
.end method
