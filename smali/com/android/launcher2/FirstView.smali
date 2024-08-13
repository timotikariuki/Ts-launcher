.class public Lcom/android/launcher2/FirstView;
.super Landroid/widget/FrameLayout;
.source "FirstView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FirstView"

.field static loadFinished:Z

.field private static currentImageIndex:I = 0

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


# instance fields
.field private imageArray:[I

.field private amp:Landroid/widget/ImageView;

.field private band:Ljava/lang/String;

.field private car_bg:Landroid/widget/ImageView;

.field private dates:[I

.field private day1:Landroid/widget/ImageView;

.field private day2:Landroid/widget/ImageView;

.field private dealTask:Ljava/lang/Runnable;

.field private ivHourDecade:Landroid/widget/ImageView;

.field private ivHourUnit:Landroid/widget/ImageView;

.field private ivMinDecade:Landroid/widget/ImageView;

.field private ivMinUnit:Landroid/widget/ImageView;

.field private mTimePickerBroadcast:Landroid/content/BroadcastReceiver;

.field private mWeekDay:[Ljava/lang/String;

.field private m_AudioAlbumService:Lcom/ts/dvdplayer/ITsAudioAlbum;

.field private m_CommService:Lcom/ts/main/common/ITsCommon;

.field private m_Context:Landroid/content/Context;

.field private m_MediaMode:I

.field private max:I

.field private media_bg:Landroid/widget/ImageView;

.field private media_next:Landroid/widget/Button;

.field private media_prev:Landroid/widget/Button;

.field private media_title:Landroid/widget/TextView;

.field private min:I

.field private month1:Landroid/widget/ImageView;

.field private month2:Landroid/widget/ImageView;

.field private music_name:Landroid/widget/TextView;

.field private music_pp:Landroid/widget/Button;

.field private newtmp:I

.field private nums:[I

.field private oldMusic:Ljava/lang/String;

.field private oldStr:Ljava/lang/String;

.field paint:Landroid/text/TextPaint;

.field private radio_band:Landroid/widget/Button;

.field private radio_fm:Landroid/widget/TextView;

.field private radio_hz:Landroid/widget/TextView;

.field private radio_name:Landroid/widget/TextView;

.field sconn:Landroid/content/ServiceConnection;

.field sconn1:Landroid/content/ServiceConnection;

.field private time_bg:Landroid/widget/ImageView;

.field private weeks:Landroid/widget/TextView;

.field private year1:Landroid/widget/ImageView;

.field private year2:Landroid/widget/ImageView;

.field private year3:Landroid/widget/ImageView;

.field private year4:Landroid/widget/ImageView;

# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 623
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/FirstView;->loadFinished:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/FirstView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    iput-object p1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FirstView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    iput-object p1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0xa

    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 104
    iput-object v0, p0, Lcom/android/launcher2/FirstView;->nums:[I

    .line 116
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 121
    iput-object v0, p0, Lcom/android/launcher2/FirstView;->dates:[I

    .line 140
    new-instance v0, Lcom/android/launcher2/FirstView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FirstView$1;-><init>(Lcom/android/launcher2/FirstView;)V

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->mTimePickerBroadcast:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Lcom/android/launcher2/FirstView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FirstView$2;-><init>(Lcom/android/launcher2/FirstView;)V

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->dealTask:Ljava/lang/Runnable;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/FirstView;->m_MediaMode:I

    .line 656
    new-instance v0, Lcom/android/launcher2/FirstView$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FirstView$3;-><init>(Lcom/android/launcher2/FirstView;)V

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->sconn:Landroid/content/ServiceConnection;

    .line 668
    new-instance v0, Lcom/android/launcher2/FirstView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FirstView$4;-><init>(Lcom/android/launcher2/FirstView;)V

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->sconn1:Landroid/content/ServiceConnection;

    .line 136
    iput-object p1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    .line 137
    return-void

    .line 99
    nop

    :array_0
    .array-data 4
        0x7f020073
        0x7f020074
        0x7f020075
        0x7f020076
        0x7f020077
        0x7f020078
        0x7f020079
        0x7f02007a
        0x7f02007b
        0x7f02007c
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x7f02005d
        0x7f02005e
        0x7f02005f
        0x7f020060
        0x7f020061
        0x7f020062
        0x7f020063
        0x7f020064
        0x7f020065
        0x7f020066
    .end array-data
.end method

.method static synthetic access$0(Lcom/android/launcher2/FirstView;)Lcom/ts/main/common/ITsCommon;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher2/FirstView;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->bindCommService()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher2/FirstView;)Lcom/ts/dvdplayer/ITsAudioAlbum;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->m_AudioAlbumService:Lcom/ts/dvdplayer/ITsAudioAlbum;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher2/FirstView;)V
    .locals 0

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->bindMediaService()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher2/FirstView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/launcher2/FirstView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->dealTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher2/FirstView;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->setDate()V

    return-void
.end method

.method static synthetic access$7(Lcom/android/launcher2/FirstView;Lcom/ts/main/common/ITsCommon;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    return-void
.end method

.method static synthetic access$8(Lcom/android/launcher2/FirstView;Lcom/ts/dvdplayer/ITsAudioAlbum;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher2/FirstView;->m_AudioAlbumService:Lcom/ts/dvdplayer/ITsAudioAlbum;

    return-void
.end method

.method private bindCommService()V
    .locals 4

    .prologue
    .line 638
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 639
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN_UI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/FirstView;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_0

    .line 642
    iget-object v1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/FirstView;->sconn:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 645
    :cond_0
    return-void
.end method

.method private bindMediaService()V
    .locals 4

    .prologue
    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ts.dvdplayer.AudioAlbumService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ts.dvdplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object v1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/FirstView;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher2/FirstView;->sconn1:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 654
    :cond_0
    return-void
.end method

.method private enterSetDate()V
    .locals 3

    .prologue
    # Get the current image index
    sget v0, Lcom/android/launcher2/FirstView;->currentImageIndex:I

    # Increment the index
    add-int/lit8 v0, v0, 1

    # Reset to 0 if it exceeds the array length
    const/4 v1, 7  # Length of the image array
    rem-int v0, v0, v1

    # Update the current image index
    sput v0, Lcom/android/launcher2/FirstView;->currentImageIndex:I

    # Get the image resource ID from the array
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->imageArray:[I
    aget v1, v2, v0

    # Set the new image resource
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->car_bg:Landroid/widget/ImageView;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    
    return-void
.end method

.method private setDate()V
    .locals 14

    .prologue
    .line 369
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    if-eqz v11, :cond_4

    .line 370
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 371
    .local v6, "mResolver":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 372
    .local v5, "mCalendar":Ljava/util/Calendar;
    if-eqz v6, :cond_4

    .line 374
    const-string v11, "time_12_24"

    .line 373
    invoke-static {v6, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, "timeFormat":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 376
    const-string v11, "24"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 379
    .local v2, "h":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 381
    .local v4, "m":I
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 382
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v2, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    :cond_0
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    .line 385
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v2, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 388
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    if-eqz v11, :cond_2

    .line 389
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v4, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 391
    :cond_2
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    if-eqz v11, :cond_3

    .line 392
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v4, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 395
    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    .end local v2    # "h":I
    .end local v4    # "m":I
    .end local v5    # "mCalendar":Ljava/util/Calendar;
    .end local v6    # "mResolver":Landroid/content/ContentResolver;
    .end local v9    # "timeFormat":Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 460
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 461
    iget v10, v8, Landroid/text/format/Time;->year:I

    .line 462
    .local v10, "year":I
    iget v11, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, v11, 0x1

    .line 463
    .local v7, "month":I
    iget v1, v8, Landroid/text/format/Time;->monthDay:I

    .line 465
    .local v1, "day":I
    invoke-virtual {p0}, Lcom/android/launcher2/FirstView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher2/FirstView;->mWeekDay:[Ljava/lang/String;

    .line 466
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->year1:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit16 v13, v10, 0x3e8

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 467
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->year2:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v10, 0x64

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 468
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->year3:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v10, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 469
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->year4:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v10, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 470
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->month1:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v7, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 471
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->month2:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v7, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 472
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->day1:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v1, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 473
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->day2:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->dates:[I

    div-int/lit8 v13, v1, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher2/FirstView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 476
    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, "language":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->weeks:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->mWeekDay:[Ljava/lang/String;

    iget v13, v8, Landroid/text/format/Time;->weekDay:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    return-void

    .line 398
    .end local v1    # "day":I
    .end local v3    # "language":Ljava/lang/String;
    .end local v7    # "month":I
    .end local v8    # "time":Landroid/text/format/Time;
    .end local v10    # "year":I
    .restart local v5    # "mCalendar":Ljava/util/Calendar;
    .restart local v6    # "mResolver":Landroid/content/ContentResolver;
    .restart local v9    # "timeFormat":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 399
    .restart local v2    # "h":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 400
    .restart local v4    # "m":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 401
    .local v0, "am":I
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    if-nez v0, :cond_a

    .line 403
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const v12, 0x7f020070

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 409
    :goto_1
    if-nez v2, :cond_6

    .line 410
    const/16 v2, 0xc

    .line 412
    :cond_6
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    if-eqz v11, :cond_7

    .line 413
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v2, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 415
    :cond_7
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    if-eqz v11, :cond_8

    .line 416
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v2, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 419
    :cond_8
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    if-eqz v11, :cond_9

    .line 420
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v4, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 422
    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    if-eqz v11, :cond_4

    .line 423
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v4, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 405
    :cond_a
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const v12, 0x7f02007d

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 429
    .end local v0    # "am":I
    .end local v2    # "h":I
    .end local v4    # "m":I
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 430
    .restart local v2    # "h":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 431
    .restart local v4    # "m":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 434
    .restart local v0    # "am":I
    if-nez v2, :cond_c

    .line 435
    const/16 v2, 0xc

    .line 437
    :cond_c
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    if-eqz v11, :cond_d

    .line 438
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v2, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 440
    :cond_d
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    if-eqz v11, :cond_e

    .line 441
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v2, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 444
    :cond_e
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    if-eqz v11, :cond_f

    .line 445
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v4, 0xa

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 447
    :cond_f
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    if-eqz v11, :cond_10

    .line 448
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/android/launcher2/FirstView;->nums:[I

    div-int/lit8 v13, v4, 0x1

    rem-int/lit8 v13, v13, 0xa

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 450
    :cond_10
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    if-nez v0, :cond_11

    .line 452
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const v12, 0x7f020070

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 454
    :cond_11
    iget-object v11, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    const v12, 0x7f02007d

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public static setList(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "LoadFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sput-object p0, Lcom/android/launcher2/FirstView;->mapps:Ljava/util/ArrayList;

    .line 626
    if-eqz p1, :cond_0

    .line 627
    sput-boolean p1, Lcom/android/launcher2/FirstView;->loadFinished:Z

    .line 629
    :cond_0
    return-void
.end method

.method public static setRemovePackage(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 632
    .local p0, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput-object p0, Lcom/android/launcher2/FirstView;->mpackageNames:Ljava/util/ArrayList;

    .line 633
    return-void
.end method

.method private setupViews()V
    .locals 8

    ###################
    # Initialize the imageArray with your drawable resource IDs
    sget v0, Lcom/android/launcher/R$drawable;->main_car_bg:I
    sget v1, Lcom/android/launcher/R$drawable;->main_car_bg1:I
    sget v2, Lcom/android/launcher/R$drawable;->main_car_bg2:I
    sget v3, Lcom/android/launcher/R$drawable;->main_car_bg3:I
    sget v4, Lcom/android/launcher/R$drawable;->main_car_bg4:I
    sget v5, Lcom/android/launcher/R$drawable;->main_car_bg5:I
    sget v6, Lcom/android/launcher/R$drawable;->main_car_bg6:I

    filled-new-array/range {v0 .. v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->imageArray:[I
    #################

    .prologue
    const/4 v1, 0x1

    .line 492
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->media_bg:Landroid/widget/ImageView;

    .line 493
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->media_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    .line 496
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->paint:Landroid/text/TextPaint;

    .line 497
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 498
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    .line 499
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    .line 500
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    .line 501
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    .line 503
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->media_prev:Landroid/widget/Button;

    .line 504
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    .line 505
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    .line 506
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->media_next:Landroid/widget/Button;

    .line 507
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->media_prev:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->media_next:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    ##########
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->car_bg:Landroid/widget/ImageView;

    #####

    .line 512
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->time_bg:Landroid/widget/ImageView;

    .line 513
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->time_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->ivHourDecade:Landroid/widget/ImageView;

    .line 516
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->ivHourUnit:Landroid/widget/ImageView;

    .line 517
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->ivMinDecade:Landroid/widget/ImageView;

    .line 518
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->ivMinUnit:Landroid/widget/ImageView;

    .line 519
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->amp:Landroid/widget/ImageView;

    .line 520
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->year1:Landroid/widget/ImageView;

    .line 521
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->year2:Landroid/widget/ImageView;

    .line 522
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->year3:Landroid/widget/ImageView;

    .line 523
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->year4:Landroid/widget/ImageView;

    .line 524
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->month1:Landroid/widget/ImageView;

    .line 525
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->month2:Landroid/widget/ImageView;

    .line 526
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->day1:Landroid/widget/ImageView;

    .line 527
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->day2:Landroid/widget/ImageView;

    .line 528
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FirstView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->weeks:Landroid/widget/TextView;

    .line 529
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->weeks:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FirstView;->paint:Landroid/text/TextPaint;

    .line 530
    iget-object v0, p0, Lcom/android/launcher2/FirstView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 532
    return-void
.end method

.method private tranalateIntoString(I)Ljava/lang/String;
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 361
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 684
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 685
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p2, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 689
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 690
    :cond_0
    const/4 v2, 0x0

    .line 705
    :goto_0
    return-object v2

    .line 694
    :cond_1
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 695
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 696
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 697
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 703
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 538
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    if-nez v2, :cond_1

    .line 540
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->bindCommService()V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_AudioAlbumService:Lcom/ts/dvdplayer/ITsAudioAlbum;

    if-nez v2, :cond_2

    .line 545
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->bindMediaService()V

    goto :goto_0

    .line 548
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 550
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 556
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 557
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v2

    .line 558
    const/4 v3, 0x5

    .line 557
    invoke-virtual {v2, v3}, Lcom/android/launcher2/MyWorkspace;->startIconActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->enterSetDate()V

    goto :goto_0

    .line 559
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 560
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v2

    .line 561
    const/4 v3, 0x4

    .line 560
    invoke-virtual {v2, v3}, Lcom/android/launcher2/MyWorkspace;->startIconActivity(I)V

    goto :goto_0

    .line 562
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 563
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v2

    .line 564
    const/4 v3, 0x6

    .line 563
    invoke-virtual {v2, v3}, Lcom/android/launcher2/MyWorkspace;->startIconActivity(I)V

    goto :goto_0

    .line 565
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 566
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v2

    .line 567
    const/4 v3, 0x1

    .line 566
    invoke-virtual {v2, v3}, Lcom/android/launcher2/MyWorkspace;->startIconActivity(I)V

    goto :goto_0

    .line 569
    :cond_6
    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v2

    .line 570
    const/4 v3, 0x5

    .line 569
    invoke-virtual {v2, v3}, Lcom/android/launcher2/MyWorkspace;->startIconActivity(I)V

    goto :goto_0

    .line 579
    :pswitch_3
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    const/16 v3, 0x2d

    invoke-interface {v2, v3}, Lcom/ts/main/common/ITsCommon;->SendMcuKey(I)V

    goto :goto_0

    .line 583
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 584
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    const/16 v3, 0x3c

    invoke-interface {v2, v3}, Lcom/ts/main/common/ITsCommon;->SendMcuKey(I)V

    goto :goto_0

    .line 592
    :pswitch_5
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    const/16 v3, 0x2c

    invoke-interface {v2, v3}, Lcom/ts/main/common/ITsCommon;->SendMcuKey(I)V

    goto/16 :goto_0

    .line 596
    :pswitch_6
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v2}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    const/16 v3, 0x107

    invoke-interface {v2, v3}, Lcom/ts/main/common/ITsCommon;->SendMcuKey(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x7f070017
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->bindCommService()V

    .line 170
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->bindMediaService()V

    .line 171
    invoke-direct {p0}, Lcom/android/launcher2/FirstView;->setupViews()V

    .line 173
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->dealTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x96

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher2/FirstView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v1, "updateIntent":Landroid/content/IntentFilter;
    const-string v2, "com.android.launcher.action_resumeAllApp"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher2/FirstView;->mTimePickerBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    const-class v3, Lcom/android/launcher2/NaviBarService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/launcher2/FirstView;->m_Context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    return-void
.end method

.method protected updateWorkMode()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 219
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->nGetWorkMode()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/FirstView;->m_MediaMode:I

    .line 220
    iget v5, p0, Lcom/android/launcher2/FirstView;->m_MediaMode:I

    if-ne v5, v8, :cond_2

    .line 221
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :try_start_1
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MyWorkspace;->getIconName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->GetSongName()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "m_name":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .end local v3    # "m_name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 232
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 352
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 353
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "m_name":Ljava/lang/String;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 245
    .end local v3    # "m_name":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lcom/android/launcher2/FirstView;->m_MediaMode:I

    if-ne v5, v6, :cond_4

    .line 246
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 256
    :try_start_4
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MyWorkspace;->getIconName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 263
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->GetSongName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3    # "m_name":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 265
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 257
    .end local v3    # "m_name":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 259
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 267
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "m_name":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 269
    .end local v3    # "m_name":Ljava/lang/String;
    :cond_4
    iget v5, p0, Lcom/android/launcher2/FirstView;->m_MediaMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 270
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 272
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 280
    :try_start_6
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MyWorkspace;->getIconName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 287
    :goto_3
    :try_start_7
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->GetSongName()Ljava/lang/String;

    move-result-object v3

    .line 288
    .restart local v3    # "m_name":Ljava/lang/String;
    if-eqz v3, :cond_5

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 289
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 281
    .end local v3    # "m_name":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 283
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 291
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "m_name":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 293
    .end local v3    # "m_name":Ljava/lang/String;
    :cond_6
    iget v5, p0, Lcom/android/launcher2/FirstView;->m_MediaMode:I

    if-ne v5, v7, :cond_b

    .line 294
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 304
    :try_start_8
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MyWorkspace;->getIconName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 310
    :goto_4
    :try_start_9
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->GetFreq()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "tmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->GetBand()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "band":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    invoke-interface {v5}, Lcom/ts/main/common/ITsCommon;->GetRadio_N_Step()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/FirstView;->newtmp:I

    .line 313
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->m_CommService:Lcom/ts/main/common/ITsCommon;

    iget v6, p0, Lcom/android/launcher2/FirstView;->newtmp:I

    invoke-interface {v5, v6}, Lcom/ts/main/common/ITsCommon;->StepToFreq(I)I

    move-result v2

    .line 314
    .local v2, "freq":I
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    .line 315
    const-string v5, "AM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 316
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 317
    :cond_7
    iput-object v4, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    .line 318
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const-string v6, "KHz"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 305
    .end local v0    # "band":Ljava/lang/String;
    .end local v2    # "freq":I
    .end local v4    # "tmp":Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 307
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 324
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "band":Ljava/lang/String;
    .restart local v2    # "freq":I
    .restart local v4    # "tmp":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 325
    :cond_9
    iput-object v4, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    .line 326
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 327
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    const-string v6, ","

    const-string v7, "."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    .line 329
    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/FirstView;->oldStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const-string v6, "MHz"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 337
    .end local v0    # "band":Ljava/lang/String;
    .end local v2    # "freq":I
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_fm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_band:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_hz:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->radio_name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->music_pp:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 345
    :try_start_a
    iget-object v5, p0, Lcom/android/launcher2/FirstView;->media_title:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/MyWorkspace;->GetInstance()Lcom/android/launcher2/MyWorkspace;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MyWorkspace;->getIconName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 346
    :catch_5
    move-exception v1

    .line 348
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_b
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1
.end method
