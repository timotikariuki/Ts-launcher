.class Lcom/android/launcher2/ActivityWarm$1;
.super Landroid/os/Handler;
.source "ActivityWarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ActivityWarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ActivityWarm;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ActivityWarm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/ActivityWarm$1;->this$0:Lcom/android/launcher2/ActivityWarm;

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 32
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/ActivityWarm$1;->this$0:Lcom/android/launcher2/ActivityWarm;

    invoke-static {v0}, Lcom/android/launcher2/ActivityWarm;->access$0(Lcom/android/launcher2/ActivityWarm;)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
