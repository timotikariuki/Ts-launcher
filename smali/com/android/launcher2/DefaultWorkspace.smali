.class public Lcom/android/launcher2/DefaultWorkspace;
.super Ljava/lang/Object;
.source "DefaultWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DefaultWorkspace$Favorite;
    }
.end annotation


# static fields
.field public static cell_count_x:I

.field public static cell_count_y:I

.field public static hotseat_all_apps_index:I

.field public static hotseat_cell_count_x:I

.field public static hotseat_cell_count_y:I

.field public static mFavo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/DefaultWorkspace$Favorite;",
            ">;"
        }
    .end annotation
.end field

.field public static mOnResumeAllapp:Ljava/lang/Boolean;

.field public static mWorkspace:Lcom/android/launcher2/Workspace;

.field public static myfirstview:Landroid/view/View;

.field public static noscroll:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 9
    sput v2, Lcom/android/launcher2/DefaultWorkspace;->cell_count_x:I

    .line 10
    const/4 v0, 0x2

    sput v0, Lcom/android/launcher2/DefaultWorkspace;->cell_count_y:I

    .line 11
    sput v2, Lcom/android/launcher2/DefaultWorkspace;->hotseat_cell_count_x:I

    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/DefaultWorkspace;->hotseat_cell_count_y:I

    .line 13
    sput v1, Lcom/android/launcher2/DefaultWorkspace;->hotseat_all_apps_index:I

    .line 15
    sput v1, Lcom/android/launcher2/DefaultWorkspace;->noscroll:I

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/DefaultWorkspace;->mOnResumeAllapp:Ljava/lang/Boolean;

    .line 17
    sput-object v3, Lcom/android/launcher2/DefaultWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 18
    sput-object v3, Lcom/android/launcher2/DefaultWorkspace;->myfirstview:Landroid/view/View;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/DefaultWorkspace;->mFavo:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetWorkspace(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .param p0, "wk"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 23
    sput-object p0, Lcom/android/launcher2/DefaultWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 24
    return-void
.end method


# virtual methods
.method public Scroll(Lcom/android/launcher2/CellLayout;F)V
    .locals 0
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 31
    return-void
.end method

.method public ScrollHome()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
