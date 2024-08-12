.class Lcom/android/launcher2/MyWorkspace$1;
.super Landroid/content/BroadcastReceiver;
.source "MyWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MyWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MyWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MyWorkspace;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/MyWorkspace$1;->this$0:Lcom/android/launcher2/MyWorkspace;

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->drawableList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/MyWorkspace;->titleList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher2/MyWorkspace;->setAppData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 62
    sget-object v0, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->notifyDataSetChanged()V

    .line 64
    :cond_0
    return-void
.end method
