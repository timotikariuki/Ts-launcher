.class Lcom/android/launcher2/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    .line 110
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    .line 117
    return-void
.end method
