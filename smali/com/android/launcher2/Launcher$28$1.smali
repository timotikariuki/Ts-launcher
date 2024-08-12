.class Lcom/android/launcher2/Launcher$28$1;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$28;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$28;

.field private final synthetic val$flag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$28;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Launcher$28$1;->this$1:Lcom/android/launcher2/Launcher$28;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$28$1;->val$flag:Ljava/lang/String;

    .line 4606
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4608
    iget-object v1, p0, Lcom/android/launcher2/Launcher$28$1;->this$1:Lcom/android/launcher2/Launcher$28;

    invoke-static {v1}, Lcom/android/launcher2/Launcher$28;->access$0(Lcom/android/launcher2/Launcher$28;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$24(Lcom/android/launcher2/Launcher;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4609
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/launcher2/Launcher$28$1;->val$flag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4610
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4611
    return-void
.end method
