.class public interface abstract Lcom/ts/dvdplayer/ITsAudioAlbum;
.super Ljava/lang/Object;
.source "ITsAudioAlbum.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/dvdplayer/ITsAudioAlbum$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAlbumBitmap()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
