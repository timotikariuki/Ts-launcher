.class Lcom/android/launcher2/AppsCustomizeTabHost$3$3;
.super Ljava/lang/Object;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$animSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizeTabHost$3;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;->this$1:Lcom/android/launcher2/AppsCustomizeTabHost$3;

    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;->val$animSet:Landroid/animation/AnimatorSet;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost$3$3;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 423
    return-void
.end method
