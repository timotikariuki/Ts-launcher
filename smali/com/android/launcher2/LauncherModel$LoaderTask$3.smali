.class Lcom/android/launcher2/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I
    .locals 12
    .param p1, "lhs"    # Lcom/android/launcher2/ItemInfo;
    .param p2, "rhs"    # Lcom/android/launcher2/ItemInfo;

    .prologue
    .line 1633
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    .line 1634
    .local v0, "cellCountX":I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v1

    .line 1635
    .local v1, "cellCountY":I
    mul-int v7, v0, v1

    .line 1636
    .local v7, "screenOffset":I
    sget v8, Lcom/android/launcher2/Launcher;->SCREEN_COUNT:I

    add-int/lit8 v8, v8, 0x1

    mul-int v2, v7, v8

    .line 1637
    .local v2, "containerOffset":I
    iget-wide v8, p1, Lcom/android/launcher2/ItemInfo;->container:J

    int-to-long v10, v2

    mul-long/2addr v8, v10

    iget v10, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    mul-int/2addr v10, v7

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 1638
    iget v10, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    mul-int/2addr v10, v0

    int-to-long v10, v10

    .line 1637
    add-long/2addr v8, v10

    .line 1638
    iget v10, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    int-to-long v10, v10

    .line 1637
    add-long v3, v8, v10

    .line 1639
    .local v3, "lr":J
    iget-wide v8, p2, Lcom/android/launcher2/ItemInfo;->container:J

    int-to-long v10, v2

    mul-long/2addr v8, v10

    iget v10, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    mul-int/2addr v10, v7

    int-to-long v10, v10

    add-long/2addr v8, v10

    .line 1640
    iget v10, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    mul-int/2addr v10, v0

    int-to-long v10, v10

    .line 1639
    add-long/2addr v8, v10

    .line 1640
    iget v10, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    int-to-long v10, v10

    .line 1639
    add-long v5, v8, v10

    .line 1641
    .local v5, "rr":J
    sub-long v8, v3, v5

    long-to-int v8, v8

    return v8
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher2/ItemInfo;

    check-cast p2, Lcom/android/launcher2/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;->compare(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)I

    move-result v0

    return v0
.end method
