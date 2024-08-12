.class public Lcom/android/launcher2/ActivityWarm;
.super Landroid/app/Activity;
.source "ActivityWarm.java"


# static fields
.field private static final GO_HOME:I = 0x3e8

.field private static final SPLASH_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private btn_yes:Landroid/widget/Button;

.field i:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/ActivityWarm;->i:I

    .line 21
    new-instance v0, Lcom/android/launcher2/ActivityWarm$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ActivityWarm$1;-><init>(Lcom/android/launcher2/ActivityWarm;)V

    iput-object v0, p0, Lcom/android/launcher2/ActivityWarm;->mHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/ActivityWarm;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/launcher2/ActivityWarm;->goHome()V

    return-void
.end method

.method private goHome()V
    .locals 3

    .prologue
    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ActivityWarm_Closed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "intent_close":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ActivityWarm;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ActivityWarm;->startActivity(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/ActivityWarm;->finish()V

    .line 60
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget v0, Lcom/android/launcher/R$layout;->layout_warm:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ActivityWarm;->setContentView(I)V

    .line 40
    sget v0, Lcom/android/launcher/R$id;->btn_yes:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ActivityWarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/ActivityWarm;->btn_yes:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/android/launcher2/ActivityWarm;->btn_yes:Landroid/widget/Button;

    new-instance v1, Lcom/android/launcher2/ActivityWarm$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/ActivityWarm$2;-><init>(Lcom/android/launcher2/ActivityWarm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
