.class Lcom/android/launcher2/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    .prologue
    .line 4042
    iput-object p1, p0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/Launcher;

    .line 4043
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4044
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 4048
    iget-object v0, p0, Lcom/android/launcher2/Launcher$AppWidgetResetObserver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$8(Lcom/android/launcher2/Launcher;)V

    .line 4049
    return-void
.end method
