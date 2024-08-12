.class Lcom/android/launcher2/FirstView$1;
.super Landroid/content/BroadcastReceiver;
.source "FirstView.java"


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
    iput-object p1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    .line 140
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$0(Lcom/android/launcher2/FirstView;)Lcom/ts/main/common/ITsCommon;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$1(Lcom/android/launcher2/FirstView;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$2(Lcom/android/launcher2/FirstView;)Lcom/ts/dvdplayer/ITsAudioAlbum;

    move-result-object v1

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$3(Lcom/android/launcher2/FirstView;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.launcher.action_resumeAllApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MyWorkspace;->onClickAllAppsButton()V

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$4(Lcom/android/launcher2/FirstView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, "Homeintent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/FirstView$1;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$4(Lcom/android/launcher2/FirstView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
