.class Lcom/android/launcher2/NaviBarService$5;
.super Ljava/lang/Object;
.source "NaviBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/NaviBarService;->initPopupWindow()V
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
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$5;->this$0:Lcom/android/launcher2/NaviBarService;

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$5;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v0, v0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher2/NaviBarService$5;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v1, v1, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 685
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$5;->this$0:Lcom/android/launcher2/NaviBarService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    .line 686
    return-void
.end method
