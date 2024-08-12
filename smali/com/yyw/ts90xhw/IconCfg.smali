.class public Lcom/yyw/ts90xhw/IconCfg;
.super Ljava/lang/Object;
.source "IconCfg.java"


# static fields
.field public static final iconA2DP:I = 0x7

.field public static final iconADAS:I = 0x1b

.field public static final iconAIRCON:I = 0x1a

.field public static final iconATV:I = 0x9

.field public static final iconAVIN:I = 0xa

.field public static final iconBT:I = 0x12

.field public static final iconCARINFO:I = 0x16

.field public static final iconDTV:I = 0x8

.field public static final iconDVD:I = 0x3

.field public static final iconDVDBOX:I = 0x4

.field public static final iconDVR:I = 0x18

.field public static final iconEDOG:I = 0x1c

.field public static final iconEXCD:I = 0x11

.field public static final iconEXDEV:I = 0xf

.field public static final iconEXRADIO:I = 0x10

.field public static final iconGPS:I = 0x1

.field public static final iconIPOD:I = 0xc

.field public static final iconONSTAR:I = 0x14

.field public static final iconPHONELINK:I = 0xb

.field public static final iconPOD:I = 0xd

.field public static final iconRADIO:I = 0x2

.field public static final iconSD:I = 0x6

.field public static final iconSET:I = 0x13

.field public static final iconSYNC:I = 0x15

.field public static final iconTPMS:I = 0x17

.field public static final iconUSB:I = 0x5

.field public static final iconVIEW360:I = 0x19

.field public static final iconVMCD:I = 0xe

.field public static final iconWEATHER:I = 0x1d

.field public static final is3561:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "ts70xicfg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetIconCfg([I)I
.end method
