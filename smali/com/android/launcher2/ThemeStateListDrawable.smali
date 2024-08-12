.class public Lcom/android/launcher2/ThemeStateListDrawable;
.super Landroid/graphics/drawable/StateListDrawable;
.source "ThemeStateListDrawable.java"


# instance fields
.field private mOriginalBgId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 15
    iput p1, p0, Lcom/android/launcher2/ThemeStateListDrawable;->mOriginalBgId:I

    .line 16
    return-void
.end method


# virtual methods
.method public getmOriginalBgId()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/android/launcher2/ThemeStateListDrawable;->mOriginalBgId:I

    return v0
.end method
