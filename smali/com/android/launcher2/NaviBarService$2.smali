.class Lcom/android/launcher2/NaviBarService$2;
.super Landroid/content/BroadcastReceiver;
.source "NaviBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/NaviBarService;
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
    iput-object p1, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    .line 437
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.activity.lifecyclechange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/NaviBarService;->dealLifecycleChange(Landroid/content/Intent;)V

    .line 469
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CLEAR_LAUNCHER_DATA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    sget-object v2, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 471
    sget-object v2, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-static {v2}, Lcom/android/launcher2/NaviBarService;->access$2(Lcom/android/launcher2/NaviBarService;)V

    .line 474
    sget-object v2, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 475
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-static {v4}, Lcom/android/launcher2/NaviBarService;->access$3(Lcom/android/launcher2/NaviBarService;)Landroid/widget/ImageView;

    move-result-object v4

    .line 474
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/MyWorkspace;->setAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 476
    sget-object v2, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 477
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    invoke-static {v4}, Lcom/android/launcher2/NaviBarService;->access$4(Lcom/android/launcher2/NaviBarService;)Landroid/widget/TextView;

    move-result-object v4

    .line 476
    invoke-static {v2, v3, v4}, Lcom/android/launcher2/MyWorkspace;->setAppName(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 481
    :cond_2
    return-void

    .line 443
    :cond_3
    const-string v2, "com.android.InputMethodService.showhide"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 444
    const-string v2, "showHide"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "showHide":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 446
    const-string v2, "show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    .end local v1    # "showHide":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ts.main.navigationbar.addview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 451
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->getTopActivityName()Ljava/lang/String;

    move-result-object v2

    .line 452
    const-string v3, "com.ts.dvdplayer.USBActivity"

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 452
    if-nez v2, :cond_0

    .line 454
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v2, v2, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v3, v3, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v4, v4, Lcom/android/launcher2/NaviBarService;->wparams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v2

    goto :goto_0

    .line 458
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ts.main.navigationbar.removeview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->getTopActivityName()Ljava/lang/String;

    move-result-object v2

    .line 460
    const-string v3, "com.ts.dvdplayer.USBActivity"

    .line 459
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 460
    if-eqz v2, :cond_0

    .line 462
    :try_start_1
    iget-object v2, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v2, v2, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/launcher2/NaviBarService$2;->this$0:Lcom/android/launcher2/NaviBarService;

    iget-object v3, v3, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 463
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
