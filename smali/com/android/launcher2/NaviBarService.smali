.class public Lcom/android/launcher2/NaviBarService;
.super Landroid/app/Service;
.source "NaviBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/NaviBarService$AllappGvAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_HIDE_NAVIGATIONBAR:Ljava/lang/String; = "com.ts.main.navigationbar.removeview"

.field private static final ACTION_IME_SHOW_HIDE_CHANGE:Ljava/lang/String; = "com.android.InputMethodService.showhide"

.field public static final ACTION_LIFE_CYCLE_CHANGE:Ljava/lang/String; = "com.android.activity.lifecyclechange"

.field private static final ACTION_RESUME_ALLAPP:Ljava/lang/String; = "com.android.launcher.action_resumeAllApp"

.field private static final ACTION_SHOW_NAVIGATIONBAR:Ljava/lang/String; = "com.ts.main.navigationbar.addview"

.field public static final TYPE_NAVIGATION_BAR:I = 0x7e3

.field public static final WIN_BT:I = 0x4

.field public static final WIN_NAVI:I = 0x1

.field public static final WIN_RADIO:I = 0x2

.field public static final WIN_SD:I = 0x3

.field public static final WIN_SETUP:I = 0x5

.field static allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

.field private static mBottomActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mCurrentTopPackage:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field static share:Landroid/content/SharedPreferences;

.field static strPackageClassName:Ljava/lang/String;

.field static strPackageName:Ljava/lang/String;


# instance fields
.field AddIconLayout:Landroid/view/View;

.field AddIconParams:Landroid/view/WindowManager$LayoutParams;

.field IconLayout:Landroid/view/View;

.field IsShowGrid:Z

.field private dealTask:Ljava/lang/Runnable;

.field private gv_allapp:Landroid/widget/GridView;

.field handler:Landroid/os/Handler;

.field iconDnRes:[I

.field iconFunction:[I

.field iconTextRes:[I

.field iconUpRes:[I

.field private img_add:Landroid/widget/ImageView;

.field mLayout:Landroid/widget/LinearLayout;

.field mPb:Landroid/widget/ProgressBar;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mtvACInfo:Landroid/widget/TextView;

.field private tv_add:Landroid/widget/TextView;

.field wm:Landroid/view/WindowManager;

.field wparams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/launcher2/NaviBarService;->mHandler:Landroid/os/Handler;

    .line 144
    sget-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v1, "com.ts.main.radio.RadioMainActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v1, "com.ts.dvdplayer.SDActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v1, "com.ts.dvdplayer.USBActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v1, "navi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v1, "com.ts.bt"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v1, "com.ts.can.CanMainActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/NaviBarService;->mCurrentTopPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->handler:Landroid/os/Handler;

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 85
    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->iconUpRes:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 91
    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->iconDnRes:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    .line 106
    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->iconFunction:[I

    .line 190
    new-instance v0, Lcom/android/launcher2/NaviBarService$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/NaviBarService$1;-><init>(Lcom/android/launcher2/NaviBarService;)V

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->dealTask:Ljava/lang/Runnable;

    .line 437
    new-instance v0, Lcom/android/launcher2/NaviBarService$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/NaviBarService$2;-><init>(Lcom/android/launcher2/NaviBarService;)V

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    return-void

    .line 82
    :array_0
    .array-data 4
        0x7f02008b
        0x7f020055
        0x7f020085
        0x7f02000f
        0x7f020087
        0x7f020057
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x7f02008a
        0x7f020054
        0x7f020084
        0x7f020010
        0x7f020086
        0x7f020056
    .end array-data

    .line 105
    :array_2
    .array-data 4
        0x2
        0x6
        0x12
        -0x1
        0x1
        0x13
    .end array-data

    .line 114
    :array_3
    .array-data 4
        0x2
        0x3
        0x4
        -0x1
        0x1
        0x5
    .end array-data
.end method

.method private GotoAllApps()V
    .locals 2

    .prologue
    .line 724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action_resumeAllApp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/NaviBarService;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher2/NaviBarService;Z)V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/android/launcher2/NaviBarService;->sendLifecycle(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher2/NaviBarService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->dealTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher2/NaviBarService;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/android/launcher2/NaviBarService;->initDate()V

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher2/NaviBarService;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->img_add:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher2/NaviBarService;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->tv_add:Landroid/widget/TextView;

    return-object v0
.end method

.method private initDate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string v0, "launcherList"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/NaviBarService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    .line 249
    sget-object v0, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    const-string v1, "btnPackage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    .line 251
    sget-object v0, Lcom/android/launcher2/NaviBarService;->share:Landroid/content/SharedPreferences;

    const-string v1, "btnClassName"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    .line 253
    :cond_0
    return-void
.end method

.method private initNavigationBarView()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v8, 0x0

    .line 310
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    .line 311
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 312
    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 313
    .local v3, "shape":Landroid/graphics/drawable/shapes/RectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 314
    .local v0, "divider":Landroid/graphics/drawable/ShapeDrawable;
    const/16 v5, 0x1f

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 315
    const/16 v5, 0xa0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 316
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 318
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 319
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x2c

    const/16 v7, 0x2c

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 322
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 325
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 329
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconUpRes:[I

    array-length v5, v5

    if-lt v1, v5, :cond_0

    .line 370
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/high16 v6, 0x7f040000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NaviBarService;->IconLayout:Landroid/view/View;

    .line 371
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->IconLayout:Landroid/view/View;

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/launcher2/NaviBarService;->tv_add:Landroid/widget/TextView;

    .line 372
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->tv_add:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 373
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->tv_add:Landroid/widget/TextView;

    const/16 v6, 0x6e

    invoke-virtual {v5, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 374
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->IconLayout:Landroid/view/View;

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher2/NaviBarService;->img_add:Landroid/widget/ImageView;

    .line 375
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->img_add:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/launcher2/NaviBarService$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/NaviBarService$3;-><init>(Lcom/android/launcher2/NaviBarService;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->img_add:Landroid/widget/ImageView;

    new-instance v6, Lcom/android/launcher2/NaviBarService$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/NaviBarService$4;-><init>(Lcom/android/launcher2/NaviBarService;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 392
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/launcher2/NaviBarService;->IconLayout:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    return-void

    .line 330
    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 331
    .local v4, "tv":Landroid/widget/TextView;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 332
    invoke-direct {p0, v4}, Lcom/android/launcher2/NaviBarService;->setBackgroundDrawable(Landroid/view/View;)V

    .line 333
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    if-nez v5, :cond_2

    .line 336
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_1
    :goto_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    const/16 v5, 0x6e

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 365
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 367
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 337
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    if-gez v5, :cond_3

    .line 338
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 341
    :pswitch_0
    const v5, 0x7f0d0021

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 346
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    const/16 v6, 0x13

    if-ne v5, v6, :cond_4

    .line 347
    const-string v5, "com.android.settings"

    .line 348
    const-string v6, "com.android.settings.Settings"

    .line 347
    invoke-static {v5, v6}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 349
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    .line 350
    const-string v5, "com.ts.dvdplayer"

    .line 351
    const-string v6, "com.ts.dvdplayer.SDActivity"

    .line 350
    invoke-static {v5, v6}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 352
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    if-ne v5, v12, :cond_6

    .line 353
    const-string v5, "com.ts.MainUI"

    .line 354
    const-string v6, "com.ts.main.radio.RadioMainActivity"

    .line 353
    invoke-static {v5, v6}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 355
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    const/16 v6, 0x12

    if-ne v5, v6, :cond_7

    .line 356
    const-string v5, "com.ts.MainUI"

    .line 357
    const-string v6, "com.ts.bt.BtConnectActivity"

    .line 356
    invoke-static {v5, v6}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 358
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v5, v5, v1

    if-ne v5, v11, :cond_1

    .line 359
    const-string v5, "com.ts.MainUI"

    .line 360
    const-string v6, "com.ts.main.navi.NaviMainActivity"

    .line 359
    invoke-static {v5, v6}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private sendLifecycle(Z)V
    .locals 5
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 577
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "topActivity":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->getTopPackName()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "topPackage":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 580
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "isInMultiWindowMode"

    if-eqz p1, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v3, "lifecycle"

    const-string v4, "onResume"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v3, "packagename"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v3, "classname"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    invoke-virtual {p0, v0}, Lcom/android/launcher2/NaviBarService;->dealLifecycleChange(Landroid/content/Intent;)V

    .line 585
    return-void

    .line 580
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method private setBackgroundDrawable(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 486
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 487
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v1, 0x10100a7

    aput v1, v2, v5

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher2/NaviBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconDnRes:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 487
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 491
    new-array v2, v5, [I

    .line 492
    invoke-virtual {p0}, Lcom/android/launcher2/NaviBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconUpRes:[I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 491
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 497
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 499
    return-void
.end method

.method private updateBtnSelection(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 588
    const/4 v2, -0x1

    .line 589
    .local v2, "selectId":I
    const-string v3, "com.ts.bt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    sget-object v3, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    const-string v4, "com.ts.bt"

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 594
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 602
    return-void

    .line 592
    .end local v1    # "i":I
    :cond_0
    sget-object v3, Lcom/android/launcher2/NaviBarService;->mBottomActivityList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 595
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "child":Landroid/view/View;
    if-ne v1, v2, :cond_2

    .line 597
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 594
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 599
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2
.end method


# virtual methods
.method public GotoWin(I)V
    .locals 2
    .param p1, "nWin"    # I

    .prologue
    .line 636
    packed-switch p1, :pswitch_data_0

    .line 659
    :goto_0
    return-void

    .line 639
    :pswitch_0
    const-string v0, "com.ts.MainUI"

    .line 640
    const-string v1, "com.ts.main.navi.NaviMainActivity"

    .line 639
    invoke-static {v0, v1}, Lcom/android/launcher2/MyWorkspace;->enterActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :pswitch_1
    const-string v0, "com.ts.MainUI"

    .line 645
    const-string v1, "com.ts.main.radio.RadioMainActivity"

    .line 644
    invoke-static {v0, v1}, Lcom/android/launcher2/MyWorkspace;->enterActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :pswitch_2
    const-string v0, "com.ts.dvdplayer"

    .line 649
    const-string v1, "com.ts.dvdplayer.SDActivity"

    .line 648
    invoke-static {v0, v1}, Lcom/android/launcher2/MyWorkspace;->enterActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :pswitch_3
    const-string v0, "com.ts.MainUI"

    .line 654
    const-string v1, "com.ts.bt.BtConnectActivity"

    .line 653
    invoke-static {v0, v1}, Lcom/android/launcher2/MyWorkspace;->enterActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method dealBtnClick()V
    .locals 3

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 409
    :cond_0
    sget-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    .line 412
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/NaviBarService;->AddIconParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 415
    :cond_2
    sget-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/NaviBarService;->enterActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method dealBtnLongClick()V
    .locals 3

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    .line 424
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/NaviBarService;->AddIconParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected dealLifecycleChange(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 502
    const-string v4, "lifecycle"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "lifecycle":Ljava/lang/String;
    const-string v4, "packagename"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "classname"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/NaviBarService;->getMultiWindowState()Z

    move-result v1

    .line 506
    .local v1, "isInMultiWindowMode":Z
    const-string v4, "wcb"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dealLifecycleChange == "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 508
    const-string v4, "onStart"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "onResume"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 513
    :cond_0
    const-string v4, "lyf"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lifecycle = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-----packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 514
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-----className = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 515
    const-string v6, "-----isInMultiWindowMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 513
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sput-object v3, Lcom/android/launcher2/NaviBarService;->mCurrentTopPackage:Ljava/lang/String;

    .line 517
    invoke-direct {p0, v0}, Lcom/android/launcher2/NaviBarService;->updateBtnSelection(Ljava/lang/String;)V

    .line 518
    const-string v4, "com.android.launcher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 519
    const-string v4, "com.ts.dvdplayer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 520
    const-string v4, "com.ts.dvdplayer.USBActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 522
    :cond_1
    const-string v4, "com.android.sdvdplayer.SDVDPlayer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 524
    :cond_2
    if-eqz v1, :cond_4

    .line 526
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 574
    :cond_3
    :goto_0
    return-void

    .line 530
    :cond_4
    const-string v4, "com.ts.dvdplayer.USBActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 532
    :try_start_1
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/launcher2/NaviBarService;->wparams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v4

    goto :goto_0

    .line 538
    :cond_5
    const-string v4, "com.ts.MainUI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 539
    const-string v4, "com.ts.set"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 540
    const-string v4, "com.ts.can"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 541
    const-string v4, "com.ts.factoryset"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 542
    const-string v4, "com.ts.main.avin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 544
    const-string v4, "com.ts.main.touch.TouchActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 546
    const-string v4, "com.ts.main.fcamera.FcameraMainActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 548
    const-string v4, "com.ts.main.cmmb.CmmbMainActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 550
    :cond_6
    const-string v4, "com.ts.can.chrysler.CanChrOthACActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 552
    const-string v4, "com.ts.can.vw.touareg.CanTouaregCarACActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 554
    :cond_7
    if-eqz v1, :cond_8

    .line 555
    :try_start_2
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 559
    :catch_1
    move-exception v4

    goto :goto_0

    .line 557
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/launcher2/NaviBarService;->wparams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 565
    :cond_9
    :try_start_3
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 566
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 570
    :cond_a
    const-string v4, "onStop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 571
    invoke-direct {p0, v1}, Lcom/android/launcher2/NaviBarService;->sendLifecycle(Z)V

    goto/16 :goto_0

    .line 527
    :catch_3
    move-exception v4

    goto/16 :goto_0
.end method

.method public enterActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    .prologue
    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 665
    if-eqz v0, :cond_0

    .line 667
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/NaviBarService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getMultiWindowState()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 223
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    .line 224
    invoke-interface {v5}, Landroid/app/IActivityTaskManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v2

    .line 225
    .local v2, "siList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$StackInfo;

    .line 226
    .local v1, "si":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_0

    .line 227
    iget-object v5, v1, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 228
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 230
    .local v3, "windowMode":I
    invoke-static {v3}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    const/4 v4, 0x1

    .line 244
    .end local v1    # "si":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "siList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v3    # "windowMode":I
    :cond_0
    :goto_0
    return v4

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected initPopupWindow()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 677
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040014

    .line 678
    const/4 v3, 0x0

    .line 677
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    .line 679
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    new-instance v2, Lcom/android/launcher2/NaviBarService$5;

    invoke-direct {v2, p0}, Lcom/android/launcher2/NaviBarService$5;-><init>(Lcom/android/launcher2/NaviBarService;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    const v2, 0x7f070047

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->mPb:Landroid/widget/ProgressBar;

    .line 689
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconLayout:Landroid/view/View;

    const v2, 0x7f070048

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->gv_allapp:Landroid/widget/GridView;

    .line 690
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 691
    new-instance v0, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;-><init>(Lcom/android/launcher2/NaviBarService;Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    .line 692
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->gv_allapp:Landroid/widget/GridView;

    sget-object v2, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 694
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/NaviBarService;->IsShowGrid:Z

    .line 696
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 698
    const/16 v3, 0x7d8

    .line 699
    const v4, 0x820328

    .line 705
    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 696
    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconParams:Landroid/view/WindowManager$LayoutParams;

    .line 707
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 708
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->AddIconParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2d0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 718
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 613
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 619
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/launcher2/NaviBarService;->iconFunction:[I

    aget v0, v2, v1

    .line 620
    .local v0, "functionId":I
    sparse-switch v0, :sswitch_data_0

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/launcher2/NaviBarService;->GotoWin(I)V

    .line 633
    :goto_0
    return-void

    .line 622
    :sswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/NaviBarService;->GotoAllApps()V

    goto :goto_0

    .line 625
    :sswitch_1
    const-string v2, "com.android.settings"

    .line 626
    const-string v3, "com.android.settings.Settings"

    .line 625
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/NaviBarService;->enterActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 257
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 300
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 301
    return-void

    .line 262
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 264
    check-cast v3, Landroid/widget/TextView;

    .line 265
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 267
    .local v2, "tagId":I
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v2

    if-nez v4, :cond_3

    .line 268
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .end local v2    # "tagId":I
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .restart local v2    # "tagId":I
    .restart local v3    # "tv":Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v2

    if-gez v4, :cond_4

    .line 270
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 273
    :pswitch_0
    const v4, 0x7f0d0021

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 278
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v1

    const/16 v5, 0x13

    if-ne v4, v5, :cond_5

    .line 280
    const-string v4, "com.android.settings"

    .line 281
    const-string v5, "com.android.settings.Settings"

    .line 279
    invoke-static {v4, v5}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 282
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 283
    const-string v4, "com.ts.dvdplayer"

    .line 284
    const-string v5, "com.ts.dvdplayer.SDActivity"

    .line 283
    invoke-static {v4, v5}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 285
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 286
    const-string v4, "com.ts.MainUI"

    .line 287
    const-string v5, "com.ts.main.radio.RadioMainActivity"

    .line 286
    invoke-static {v4, v5}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 288
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v1

    const/16 v5, 0x12

    if-ne v4, v5, :cond_8

    .line 289
    const-string v4, "com.ts.MainUI"

    .line 290
    const-string v5, "com.ts.bt.BtConnectActivity"

    .line 289
    invoke-static {v4, v5}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 291
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/NaviBarService;->iconTextRes:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 292
    const-string v4, "com.ts.MainUI"

    .line 293
    const-string v5, "com.ts.main.navi.NaviMainActivity"

    .line 292
    invoke-static {v4, v5}, Lcom/android/launcher2/MyWorkspace;->getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 270
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 154
    const-string v0, "wcb"

    const-string v1, "NavigationBarService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/NaviBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->wm:Landroid/view/WindowManager;

    .line 156
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    .line 157
    const/4 v2, -0x2

    const/16 v3, 0x7d8

    .line 158
    const v4, 0x820328

    .line 164
    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 156
    iput-object v0, p0, Lcom/android/launcher2/NaviBarService;->wparams:Landroid/view/WindowManager$LayoutParams;

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->wparams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0xa8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->wparams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 169
    invoke-direct {p0}, Lcom/android/launcher2/NaviBarService;->initDate()V

    .line 171
    invoke-direct {p0}, Lcom/android/launcher2/NaviBarService;->initNavigationBarView()V

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher2/NaviBarService;->registerBroadcast()V

    .line 174
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->getTopActivityName()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "topActivity":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->getTopPackName()Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, "topPackage":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "lifecycle"

    const-string v1, "onResume"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v0, "packagename"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v0, "classname"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v6}, Lcom/android/launcher2/NaviBarService;->dealLifecycleChange(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher2/NaviBarService;->initPopupWindow()V

    .line 183
    sget-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/NaviBarService;->img_add:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MyWorkspace;->setAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 184
    sget-object v0, Lcom/android/launcher2/NaviBarService;->strPackageName:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/NaviBarService;->strPackageClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/NaviBarService;->tv_add:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MyWorkspace;->setAppName(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 185
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/NaviBarService;->dealTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher2/NaviBarService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/NaviBarService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 607
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 608
    return-void
.end method

.method protected registerBroadcast()V
    .locals 2

    .prologue
    .line 429
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.activity.lifecyclechange"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.InputMethodService.showhide"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v1, "com.ts.main.navigationbar.addview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v1, "com.ts.main.navigationbar.removeview"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v1, "CLEAR_LAUNCHER_DATA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/android/launcher2/NaviBarService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/NaviBarService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    return-void
.end method
