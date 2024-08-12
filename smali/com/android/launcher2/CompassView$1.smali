.class Lcom/android/launcher2/CompassView$1;
.super Landroid/content/BroadcastReceiver;
.source "CompassView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CompassView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CompassView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CompassView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/CompassView$1;->this$0:Lcom/android/launcher2/CompassView;

    .line 101
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/launcher2/CompassView$1;->this$0:Lcom/android/launcher2/CompassView;

    invoke-static {v0}, Lcom/android/launcher2/CompassView;->access$0(Lcom/android/launcher2/CompassView;)V

    .line 106
    return-void
.end method
