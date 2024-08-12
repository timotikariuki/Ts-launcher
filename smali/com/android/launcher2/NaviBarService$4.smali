.class Lcom/android/launcher2/NaviBarService$4;
.super Ljava/lang/Object;
.source "NaviBarService.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/NaviBarService;->initNavigationBarView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/NaviBarService;


# direct methods
.method constructor <init>(Lcom/android/launcher2/NaviBarService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$4;->this$0:Lcom/android/launcher2/NaviBarService;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$4;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-virtual {v0}, Lcom/android/launcher2/NaviBarService;->dealBtnLongClick()V

    .line 389
    const/4 v0, 0x0

    return v0
.end method
