.class public Lcom/android/launcher2/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DEBUG_MEDIA:Z = true

.field public static final DEBUG_TO_FILE:Z = true

.field public static final MEDIAVERSION:Ljava/lang/String; = "TSv1.0.1_190412_1135"

.field public static OUTPUT_DEBUG:Z

.field public static OUTPUT_ERROR:Z

.field public static OUTPUT_WARNING:Z

.field public static UPDATE_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13
    const-string v0, "2019-05-15 launcher widget"

    .line 12
    sput-object v0, Lcom/android/launcher2/Debug;->UPDATE_INFO:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/android/launcher2/Debug;->OUTPUT_DEBUG:Z

    .line 18
    sput-boolean v1, Lcom/android/launcher2/Debug;->OUTPUT_ERROR:Z

    .line 19
    sput-boolean v1, Lcom/android/launcher2/Debug;->OUTPUT_WARNING:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/launcher2/Debug;->OUTPUT_DEBUG:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Lcom/android/launcher2/Debug;->write2LogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/launcher2/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Debug;->OUTPUT_ERROR:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher2/Debug;->write2LogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/launcher2/Debug;->OUTPUT_DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Debug;->OUTPUT_WARNING:Z

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-static {p0, p1}, Lcom/android/launcher2/Debug;->write2LogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-void
.end method

.method private static write2LogFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "strTag"    # Ljava/lang/String;
    .param p1, "strMsg"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v4, "/mnt/sdcard/launcherLog.txt"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 37
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 38
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 39
    const-string v4, "%02d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/text/format/Time;->second:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 41
    const-string v4, "  "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 43
    const-string v4, "  "

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 45
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 46
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 47
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "time":Landroid/text/format/Time;
    .end local v3    # "tmp":Ljava/lang/String;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
