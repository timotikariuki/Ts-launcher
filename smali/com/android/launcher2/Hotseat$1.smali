.class Lcom/android/launcher2/Hotseat$1;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Hotseat;->resetLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$0(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$0(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onTouchDownAllAppsButton(Landroid/view/View;)V

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
