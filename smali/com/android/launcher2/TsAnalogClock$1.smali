.class Lcom/android/launcher2/TsAnalogClock$1;
.super Ljava/lang/Object;
.source "TsAnalogClock.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/launcher2/TsAnalogClock$1;->this$0:Lcom/android/launcher2/TsAnalogClock;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher2/TsAnalogClock$1;->this$0:Lcom/android/launcher2/TsAnalogClock;

    invoke-static {v0}, Lcom/android/launcher2/TsAnalogClock;->access$0(Lcom/android/launcher2/TsAnalogClock;)V

    .line 172
    iget-object v0, p0, Lcom/android/launcher2/TsAnalogClock$1;->this$0:Lcom/android/launcher2/TsAnalogClock;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher2/TsAnalogClock;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method
