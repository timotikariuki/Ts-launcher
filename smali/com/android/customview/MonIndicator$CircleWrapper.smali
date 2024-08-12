.class Lcom/android/customview/MonIndicator$CircleWrapper;
.super Ljava/lang/Object;
.source "MonIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/customview/MonIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleWrapper"
.end annotation


# instance fields
.field private diameter:I

.field private dynamicDiameter:I

.field private initDiameter:I

.field private orientation:I

.field final synthetic this$0:Lcom/android/customview/MonIndicator;


# direct methods
.method private constructor <init>(Lcom/android/customview/MonIndicator;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->this$0:Lcom/android/customview/MonIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/customview/MonIndicator;Lcom/android/customview/MonIndicator$CircleWrapper;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/customview/MonIndicator$CircleWrapper;-><init>(Lcom/android/customview/MonIndicator;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/customview/MonIndicator$CircleWrapper;I)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->diameter:I

    return-void
.end method

.method static synthetic access$2(Lcom/android/customview/MonIndicator$CircleWrapper;I)V
    .locals 0

    .prologue
    .line 310
    iput p1, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->initDiameter:I

    return-void
.end method

.method static synthetic access$3(Lcom/android/customview/MonIndicator$CircleWrapper;)I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->initDiameter:I

    return v0
.end method

.method static synthetic access$4(Lcom/android/customview/MonIndicator$CircleWrapper;I)V
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->dynamicDiameter:I

    return-void
.end method

.method static synthetic access$5(Lcom/android/customview/MonIndicator$CircleWrapper;I)V
    .locals 0

    .prologue
    .line 312
    iput p1, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->orientation:I

    return-void
.end method

.method static synthetic access$6(Lcom/android/customview/MonIndicator$CircleWrapper;)I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->dynamicDiameter:I

    return v0
.end method

.method static synthetic access$7(Lcom/android/customview/MonIndicator$CircleWrapper;)I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->orientation:I

    return v0
.end method

.method static synthetic access$8(Lcom/android/customview/MonIndicator$CircleWrapper;)I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/android/customview/MonIndicator$CircleWrapper;->diameter:I

    return v0
.end method
