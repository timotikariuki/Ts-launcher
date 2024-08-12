.class public Lcom/android/launcher2/MyWorkspace;
.super Lcom/android/launcher2/LibWorkspace;
.source "MyWorkspace.java"


# static fields
.field static data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static drawableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field static mapps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static mpackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static myDefault:Lcom/android/launcher2/MyWorkspace;

.field static titleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field private mPickerBroadcast:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/launcher2/MyWorkspace;

    invoke-direct {v0}, Lcom/android/launcher2/MyWorkspace;-><init>()V

    sput-object v0, Lcom/android/launcher2/MyWorkspace;->myDefault:Lcom/android/launcher2/MyWorkspace;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MyWorkspace;->drawableList:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MyWorkspace;->titleList:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MyWorkspace;->mpackageNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/LibWorkspace;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MyWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 57
    new-instance v0, Lcom/android/launcher2/MyWorkspace$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MyWorkspace$1;-><init>(Lcom/android/launcher2/MyWorkspace;)V

    iput-object v0, p0, Lcom/android/launcher2/MyWorkspace;->mPickerBroadcast:Landroid/content/BroadcastReceiver;

    .line 69
    sput-boolean v1, Lcom/android/launcher2/MyWorkspace;->firstview_ignore:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MyWorkspace;->addWorkspaceIcon:Z

    .line 71
    sput v1, Lcom/android/launcher2/MyWorkspace;->userdef_widget_x:I

    .line 72
    sput v1, Lcom/android/launcher2/MyWorkspace;->userdef_widget_y:I

    .line 73
    const/4 v0, 0x5

    sput v0, Lcom/android/launcher2/MyWorkspace;->userdef_widget_sx:I

    .line 74
    const/4 v0, 0x2

    sput v0, Lcom/android/launcher2/MyWorkspace;->userdef_widget_sy:I

    .line 75
    return-void
.end method

.method public static bridge synthetic GetInstance()Lcom/android/launcher2/LibWorkspace;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v0

    return-object v0
.end method

.method public static GetInstance()Lcom/android/launcher2/MyWorkspace;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->myDefault:Lcom/android/launcher2/MyWorkspace;

    return-object v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 376
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 378
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 372
    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 386
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 386
    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    return-object v0

    .line 380
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static enterActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, "intentSet":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 128
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    sget-object v1, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getApkName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 397
    sget-object v5, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 398
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 402
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v2

    .line 406
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 408
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTopActivityName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    sget-object v2, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    .line 116
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 118
    .local v1, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 121
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getTopPackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    sget-object v2, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    .line 105
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 110
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static removeDuplicate(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    .line 198
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    iget-object v2, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    iget-object v2, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 193
    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 359
    .local v3, "bmpWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 361
    .local v4, "bmpHeight":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v8, v0, v2

    .line 362
    .local v8, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v7, v0, v2

    .line 364
    .local v7, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 365
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 367
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setAppData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "drawableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .local p1, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v15, "hdd"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "setAppData mapps.size() = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-gtz v15, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 209
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    .line 210
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 211
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v8, v15, :cond_2

    .line 279
    const-string v15, "hdd"

    .line 280
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "mapps.size = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "---drawableList.size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 281
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "---titleList.size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 282
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "---data.size = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 280
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 279
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_2
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v15}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "packageName":Ljava/lang/String;
    const-string v15, " "

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 214
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    iget-object v15, v15, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "className":Ljava/lang/String;
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    iget-object v10, v15, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 217
    .local v10, "intent":Landroid/content/Intent;
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 220
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 221
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .local v12, "mainIntent":Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v12, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 225
    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 226
    .local v11, "launchIntent":Landroid/content/Intent;
    if-nez v11, :cond_3

    const-string v15, "com.ts.dvdplayer"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 227
    const-string v15, "com.android.sdvdplayer"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 228
    const-string v15, "hdd"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "remove packageName = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v15}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.ts.MainUI"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 211
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 234
    :cond_5
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v15}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.android.sdvdplayer"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 237
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v15}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "com.ts.dvdplayer"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 241
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v13, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v4, "cn":Landroid/content/ComponentName;
    const-string v15, "hdd"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "cn = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "---"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v6, 0x0

    .line 246
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 248
    .local v1, "appName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 250
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v14, v4, v15}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 264
    :goto_3
    if-eqz v9, :cond_6

    .line 265
    invoke-virtual {v9, v14}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 266
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v9, v14}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :goto_4
    sget-object v16, Lcom/android/launcher2/MyWorkspace;->data:Ljava/util/ArrayList;

    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 251
    :catch_0
    move-exception v7

    .line 253
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 269
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    sget-object v15, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    .line 270
    const v16, 0x7f020045

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 271
    .local v5, "defaultDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v1, ""

    goto :goto_4
.end method

.method public static setAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    const/16 v12, 0x5a

    const/4 v11, 0x0

    const v10, 0x7f02000a

    .line 288
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "null"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez p2, :cond_3

    .line 292
    :cond_2
    invoke-virtual {p2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-virtual {p2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    sget-object v8, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 298
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 299
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 300
    .local v6, "mainIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-virtual {v7, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 303
    .local v5, "launchIntent":Landroid/content/Intent;
    if-nez v5, :cond_4

    const-string v8, "com.ts.dvdplayer"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 304
    const-string v8, "com.android.sdvdplayer"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 311
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    const/16 v8, 0x10

    :try_start_0
    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 316
    :goto_1
    if-nez v4, :cond_5

    .line 317
    invoke-virtual {p2, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 312
    :catch_0
    move-exception v3

    .line 314
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 323
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 324
    invoke-static {v2}, Lcom/android/launcher2/MyWorkspace;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v12, v12}, Lcom/android/launcher2/MyWorkspace;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    invoke-virtual {p2, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static setAppName(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/widget/TextView;

    .prologue
    const v4, 0x7f0d0061

    .line 332
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 333
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez p2, :cond_4

    .line 337
    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 340
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 344
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    sget-object v3, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 345
    const/4 v4, 0x0

    .line 344
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 350
    :goto_1
    if-eqz v2, :cond_1

    .line 352
    sget-object v3, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/launcher2/MyWorkspace;->removeDuplicate(Ljava/util/ArrayList;)V

    .line 160
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->drawableList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/MyWorkspace;->titleList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher2/MyWorkspace;->setAppData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 161
    const-string v0, "hdd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mapps \u66f4\u65b0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v0, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->notifyDataSetChanged()V

    .line 165
    :cond_0
    return-void
.end method

.method public static setRemovePackage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "hdd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRemovePackage "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sput-object p0, Lcom/android/launcher2/MyWorkspace;->mpackageNames:Ljava/util/ArrayList;

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 182
    sget-object v3, Lcom/android/launcher2/MyWorkspace;->drawableList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher2/MyWorkspace;->titleList:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/android/launcher2/MyWorkspace;->setAppData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 183
    sget-object v3, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    if-eqz v3, :cond_0

    .line 184
    sget-object v3, Lcom/android/launcher2/NaviBarService;->allappGvAdapter:Lcom/android/launcher2/NaviBarService$AllappGvAdapter;

    invoke-virtual {v3}, Lcom/android/launcher2/NaviBarService$AllappGvAdapter;->notifyDataSetChanged()V

    .line 186
    :cond_0
    return-void

    .line 172
    :cond_1
    sget-object v3, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v3}, Lcom/android/launcher2/ApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "hdd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setRemovePackage1 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 175
    .local v1, "mpackage":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    const-string v4, "hdd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setRemovePackage = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v4, Lcom/android/launcher2/MyWorkspace;->mapps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected onClickAllAppsButton()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher2/MyWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/MyWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mState:Lcom/android/launcher2/Launcher$State;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->APPS_CUSTOMIZE:Lcom/android/launcher2/Launcher$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setResumeState(Lcom/android/launcher2/Launcher$State;)V

    .line 81
    return-void
.end method

.method public placeDefaultView()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 141
    sget-object v0, Lcom/android/launcher2/MyWorkspace;->mFavo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    sget-object v8, Lcom/android/launcher2/MyWorkspace;->mFavo:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/DefaultWorkspace$Favorite;

    .line 143
    const/4 v6, 0x5

    const/4 v7, 0x2

    move-object v1, p0

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/DefaultWorkspace$Favorite;-><init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 142
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public setupViews(Lcom/android/launcher2/Launcher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher2/MyWorkspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "updateIntent":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/android/launcher2/MyWorkspace;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/MyWorkspace;->mPickerBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method
