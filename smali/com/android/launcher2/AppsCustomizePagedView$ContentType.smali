.class public final enum Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
.super Ljava/lang/Enum;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/AppsCustomizePagedView$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

.field private static final synthetic ENUM$VALUES:[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

.field public static final enum Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    const-string v1, "Applications"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .line 244
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    const-string v1, "Widgets"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .line 242
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    sget-object v1, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->ENUM$VALUES:[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->ENUM$VALUES:[Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    array-length v1, v0

    new-array v2, v1, [Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
