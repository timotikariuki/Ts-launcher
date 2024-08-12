.class public Lcom/android/launcher2/DefaultWorkspace$Favorite;
.super Ljava/lang/Object;
.source "DefaultWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DefaultWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Favorite"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field container:I

.field mS:I

.field mX:I

.field mY:I

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher2/DefaultWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p2, "pkName"    # Ljava/lang/String;
    .param p3, "csName"    # Ljava/lang/String;
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->this$0:Lcom/android/launcher2/DefaultWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, "favorite"

    iput-object v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->packageName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->className:Ljava/lang/String;

    .line 78
    const/16 v0, -0x65

    iput v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->container:I

    .line 79
    iput p4, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mS:I

    .line 80
    iput p4, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mX:I

    .line 81
    iput p5, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mY:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p2, "pkName"    # Ljava/lang/String;
    .param p3, "csName"    # Ljava/lang/String;
    .param p4, "s"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->this$0:Lcom/android/launcher2/DefaultWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "favorite"

    iput-object v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->name:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->packageName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->className:Ljava/lang/String;

    .line 69
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->container:I

    .line 70
    iput p4, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mS:I

    .line 71
    iput p5, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mX:I

    .line 72
    iput p6, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mY:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 1
    .param p2, "pkName"    # Ljava/lang/String;
    .param p3, "csName"    # Ljava/lang/String;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "sX"    # I
    .param p7, "sY"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->this$0:Lcom/android/launcher2/DefaultWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "appwidget"

    iput-object v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->packageName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->className:Ljava/lang/String;

    .line 47
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->container:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mS:I

    .line 49
    iput p4, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mX:I

    .line 50
    iput p5, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mY:I

    .line 51
    iput p6, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->spanX:I

    .line 52
    iput p7, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->spanY:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/DefaultWorkspace;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 1
    .param p2, "pkName"    # Ljava/lang/String;
    .param p3, "csName"    # Ljava/lang/String;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "sX"    # I
    .param p7, "sY"    # I
    .param p8, "s"    # I

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->this$0:Lcom/android/launcher2/DefaultWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "appwidget"

    iput-object v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->packageName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->className:Ljava/lang/String;

    .line 58
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->container:I

    .line 59
    iput p8, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mS:I

    .line 60
    iput p4, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mX:I

    .line 61
    iput p5, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->mY:I

    .line 62
    iput p6, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->spanX:I

    .line 63
    iput p7, p0, Lcom/android/launcher2/DefaultWorkspace$Favorite;->spanY:I

    .line 64
    return-void
.end method
