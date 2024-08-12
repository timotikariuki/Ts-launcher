.class Lcom/android/launcher2/FirstView$2;
.super Ljava/lang/Object;
.source "FirstView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdate()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v0}, Lcom/android/launcher2/FirstView;->access$0(Lcom/android/launcher2/FirstView;)Lcom/ts/main/common/ITsCommon;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v0}, Lcom/android/launcher2/FirstView;->access$1(Lcom/android/launcher2/FirstView;)V

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v0}, Lcom/android/launcher2/FirstView;->access$2(Lcom/android/launcher2/FirstView;)Lcom/ts/dvdplayer/ITsAudioAlbum;

    move-result-object v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v0}, Lcom/android/launcher2/FirstView;->access$3(Lcom/android/launcher2/FirstView;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v0}, Lcom/android/launcher2/FirstView;->access$6(Lcom/android/launcher2/FirstView;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-virtual {v0}, Lcom/android/launcher2/FirstView;->updateWorkMode()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/launcher2/FirstView$2;->checkUpdate()V

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    iget-object v1, p0, Lcom/android/launcher2/FirstView$2;->this$0:Lcom/android/launcher2/FirstView;

    invoke-static {v1}, Lcom/android/launcher2/FirstView;->access$5(Lcom/android/launcher2/FirstView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/FirstView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method
