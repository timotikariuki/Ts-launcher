.class Lcom/android/launcher2/ActivityWarm$2;
.super Ljava/lang/Object;
.source "ActivityWarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ActivityWarm;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/android/launcher2/ActivityWarm$2;->this$0:Lcom/android/launcher2/ActivityWarm;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/ActivityWarm$2;->this$0:Lcom/android/launcher2/ActivityWarm;

    invoke-static {v0}, Lcom/android/launcher2/ActivityWarm;->access$0(Lcom/android/launcher2/ActivityWarm;)V

    .line 47
    return-void
.end method
