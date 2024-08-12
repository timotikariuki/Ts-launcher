.class Lcom/android/launcher2/FirstView$3;
.super Ljava/lang/Object;
.source "FirstView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FirstView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FirstView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FirstView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/FirstView$3;->this$0:Lcom/android/launcher2/FirstView;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/launcher2/FirstView$3;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {p2}, Lcom/ts/main/common/ITsCommon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ts/main/common/ITsCommon;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher2/FirstView;->access$7(Lcom/android/launcher2/FirstView;Lcom/ts/main/common/ITsCommon;)V

    .line 666
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/launcher2/FirstView$3;->this$0:Lcom/android/launcher2/FirstView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/FirstView;->access$7(Lcom/android/launcher2/FirstView;Lcom/ts/main/common/ITsCommon;)V

    .line 661
    return-void
.end method
