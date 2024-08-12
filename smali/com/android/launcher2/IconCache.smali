.class public Lcom/android/launcher2/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Launcher.IconCache"


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/android/launcher/R$drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/android/launcher2/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 3
    .param p1, "context"    # Lcom/android/launcher2/LauncherApplication;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v1, Lcom/android/launcher/R$drawable;

    iput-object v1, p0, Lcom/android/launcher2/IconCache;->cls:Ljava/lang/Class;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    .line 63
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Lcom/android/launcher2/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 65
    .local v0, "activityManager":Landroid/app/ActivityManager;
    iput-object p1, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconCache;->mIconDpi:I

    .line 70
    invoke-direct {p0}, Lcom/android/launcher2/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 71
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher2/IconCache$CacheEntry;
    .locals 37
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/android/launcher2/IconCache$CacheEntry;"
        }
    .end annotation

    .prologue
    .line 237
    .local p3, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/IconCache$CacheEntry;

    .line 238
    .local v19, "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    if-nez v19, :cond_5

    .line 239
    new-instance v19, Lcom/android/launcher2/IconCache$CacheEntry;

    .end local v19    # "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    const/16 v32, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/launcher2/IconCache$CacheEntry;-><init>(Lcom/android/launcher2/IconCache$CacheEntry;)V

    .line 241
    .restart local v19    # "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 242
    .local v28, "startTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v24

    .line 246
    .local v24, "key":Landroid/content/ComponentName;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 247
    .local v5, "endTime":J
    const-string v32, "hdddd"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "IconCache cacheLocked time = "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v34, v5, v28

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/CharSequence;

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 252
    .local v7, "endTime1":J
    const-string v32, "hdddd"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "IconCache cacheLocked time1 = "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v34, v7, v5

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v7    # "endTime1":J
    :cond_0
    :goto_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_1

    .line 272
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 275
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "Test Version"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 276
    const-string v32, "DVR"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 287
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 288
    .local v27, "res":Landroid/content/res/Resources;
    sget v32, Lcom/android/launcher/R$integer;->myiconother:I

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 290
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2e

    const/16 v34, 0x5f

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v30

    .line 291
    .local v30, "str":Ljava/lang/String;
    const-string v32, "$"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 292
    const-string v32, "$"

    const-string v33, "_"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v30

    .line 294
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->cls:Ljava/lang/Class;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v31

    .line 295
    .local v31, "value":I
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 309
    .end local v30    # "str":Ljava/lang/String;
    .end local v31    # "value":I
    .local v25, "mBackground":Landroid/graphics/drawable/Drawable;
    :goto_1
    sget v32, Lcom/android/launcher/R$integer;->iconbacks:I

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 310
    .local v21, "iconbacks":I
    if-lez v21, :cond_8

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    .line 312
    .restart local v30    # "str":Ljava/lang/String;
    const/16 v32, 0x2e

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v23

    .line 313
    .local v23, "index":I
    add-int/lit8 v32, v23, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 314
    const-string v32, "icon_back%02d"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/IconCache;->calculateColour(Ljava/lang/String;)I

    move-result v35

    add-int/lit8 v36, v21, -0x1

    rem-int v35, v35, v36

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 315
    .local v26, "name":Ljava/lang/String;
    const-string v32, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 316
    .local v22, "id":I
    const/16 v20, 0x0

    .line 317
    .local v20, "iconBack":Landroid/graphics/Bitmap;
    if-eqz v22, :cond_4

    .line 318
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 321
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v32, v0

    .line 320
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 338
    .end local v5    # "endTime":J
    .end local v20    # "iconBack":Landroid/graphics/Bitmap;
    .end local v21    # "iconbacks":I
    .end local v22    # "id":I
    .end local v23    # "index":I
    .end local v24    # "key":Landroid/content/ComponentName;
    .end local v25    # "mBackground":Landroid/graphics/drawable/Drawable;
    .end local v26    # "name":Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    .end local v28    # "startTime":J
    .end local v30    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    return-object v19

    .line 254
    .restart local v5    # "endTime":J
    .restart local v24    # "key":Landroid/content/ComponentName;
    .restart local v28    # "startTime":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 256
    .local v9, "endTime2":J
    const-string v32, "hdddd"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "IconCache cacheLocked time2 = "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v34, v9, v5

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p3, :cond_0

    .line 258
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 296
    .end local v9    # "endTime2":J
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 297
    .local v4, "e1":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 299
    .restart local v25    # "mBackground":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 301
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v25    # "mBackground":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 302
    .local v15, "endTime_3":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 304
    .restart local v25    # "mBackground":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 305
    .local v11, "endTime3":J
    const-string v32, "hdddd"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "IconCache cacheLocked time3 = "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v34, v11, v15

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    .end local v11    # "endTime3":J
    .end local v15    # "endTime_3":J
    .restart local v21    # "iconbacks":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 327
    .local v17, "endTime_4":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v32, v0

    .line 326
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 329
    .local v13, "endTime4":J
    const-string v32, "hdddd"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "IconCache cacheLocked time4 = "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v34, v13, v17

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private calculateColour(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, "value":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 345
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 348
    return v2

    .line 346
    :cond_0
    aget-byte v3, v0, v1

    xor-int/2addr v2, v3

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 129
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 130
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 128
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 151
    monitor-exit v1

    .line 154
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllIcons()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 353
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v2, "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 358
    monitor-exit v4

    return-object v2

    .line 354
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 355
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/IconCache$CacheEntry;

    .line 356
    .local v1, "e":Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v5, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 352
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "e":Lcom/android/launcher2/IconCache$CacheEntry;
    .end local v2    # "set":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    const/high16 v1, 0x10d0000

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 119
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 123
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 114
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 123
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 105
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 81
    :try_start_0
    iget v2, p0, Lcom/android/launcher2/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 86
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0, v1, p2}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 101
    :goto_1
    return-object v2

    .line 93
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 220
    .local p3, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 221
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 222
    :cond_0
    :try_start_0
    monitor-exit v2

    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    .line 225
    :cond_1
    const-string v1, "hdddd"

    const-string v3, "IconCache getIcon2 "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v0

    .line 227
    .local v0, "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 220
    .end local v0    # "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 206
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 208
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 214
    :goto_0
    return-object v3

    .line 212
    :cond_1
    const-string v3, "hdddd"

    const-string v5, "IconCache getIcon "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v1

    .line 214
    .local v1, "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v3, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v4

    goto :goto_0

    .line 204
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "application"    # Lcom/android/launcher2/ApplicationInfo;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/ApplicationInfo;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "labelCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 164
    .local v4, "startTime":J
    const-string v6, "hdddd"

    const-string v8, "IconCache getTitleAndIcon "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v6, p2, p3}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v2

    .line 167
    .local v2, "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v6, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 168
    iget-object v6, v2, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    .local v0, "endTime":J
    const-string v6, "hdddd"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IconCache getTitleAndIcon time = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v9, v0, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " --- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v6, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "language":Ljava/lang/String;
    const-string v6, "IR"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "AF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    iget-object v6, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    const-string v8, "ES File Explorer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    const-string v6, "\u0645\u062f\u06cc\u0631\u06cc\u062a \u0628\u0631\u0646\u0627\u0645\u0647 \u0647\u0627"

    iput-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 161
    :cond_1
    :goto_0
    monitor-exit v7

    .line 201
    return-void

    .line 181
    :cond_2
    iget-object v6, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    const-string v8, "Chrome"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    const-string v6, "\u0645\u0631\u0648\u0631\u06af\u0631"

    iput-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 161
    .end local v0    # "endTime":J
    .end local v2    # "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    .end local v3    # "language":Ljava/lang/String;
    .end local v4    # "startTime":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 184
    .restart local v0    # "endTime":J
    .restart local v2    # "entry":Lcom/android/launcher2/IconCache$CacheEntry;
    .restart local v3    # "language":Ljava/lang/String;
    .restart local v4    # "startTime":J
    :cond_3
    :try_start_1
    iget-object v6, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    const-string v8, "EasyConnection"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 186
    const-string v6, "\u0627\u062a\u0635\u0627\u0644 \u062a\u0644\u0641\u0646 \u0647\u0645\u0631\u0627\u0647"

    iput-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    .line 187
    :cond_4
    iget-object v6, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    const-string v8, "ApkInstaller"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const-string v6, "\u0646\u0635\u0628 \u0628\u0631\u0646\u0627\u0645\u0647"

    iput-object v6, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v1

    .line 145
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
