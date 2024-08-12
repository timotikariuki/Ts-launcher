.class Lcom/android/launcher2/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->checkItemInfo(Lcom/android/launcher2/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field private final synthetic val$itemId:J

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 315
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-wide v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 315
    monitor-exit v1

    .line 318
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
