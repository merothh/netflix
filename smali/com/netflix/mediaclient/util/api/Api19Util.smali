.class public Lcom/netflix/mediaclient/util/api/Api19Util;
.super Ljava/lang/Object;
.source "Api19Util.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundPoolPreLollipop(I)Landroid/media/SoundPool;
    .locals 3

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    return-object v0
.end method

.method public static getBitmapByteCount(Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    goto :goto_0
.end method

.method public static isLowRamDevice()Z
    .locals 1

    invoke-static {}, Lcom/netflix/mediaclient/util/api/Api19Util;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method private static isLowRamDeviceStatic()Z
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.config.low_ram"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
