.class Lcom/android/launcher2/NaviBarService$3;
.super Ljava/lang/Object;
.source "NaviBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$3;->this$0:Lcom/android/launcher2/NaviBarService;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService$3;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-virtual {v0}, Lcom/android/launcher2/NaviBarService;->dealBtnClick()V

    .line 381
    return-void
.end method
