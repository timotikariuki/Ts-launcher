.class Lcom/android/launcher2/TsAnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "TsAnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/TsAnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/TsAnalogClock;


# direct methods
.method constructor <init>(Lcom/android/launcher2/TsAnalogClock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/TsAnalogClock$2;->this$0:Lcom/android/launcher2/TsAnalogClock;

    .line 187
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock$2;->this$0:Lcom/android/launcher2/TsAnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/launcher2/TsAnalogClock;->access$1(Lcom/android/launcher2/TsAnalogClock;Landroid/text/format/Time;)V

    .line 194
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/TsAnalogClock$2;->this$0:Lcom/android/launcher2/TsAnalogClock;

    invoke-static {v1}, Lcom/android/launcher2/TsAnalogClock;->access$0(Lcom/android/launcher2/TsAnalogClock;)V

    .line 195
    return-void
.end method
