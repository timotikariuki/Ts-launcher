.class Lcom/android/launcher2/PagedViewIcon$1;
.super Ljava/lang/Object;
.source "PagedViewIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedViewIcon;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewIcon;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/PagedViewIcon$1;->this$0:Lcom/android/launcher2/PagedViewIcon;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon$1;->this$0:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->refreshDrawableState()V

    .line 85
    return-void
.end method
