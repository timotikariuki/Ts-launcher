.class Lcom/android/launcher2/AppWidgetResizeFrame$1;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame$1;->this$0:Lcom/android/launcher2/AppWidgetResizeFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 404
    return-void
.end method
