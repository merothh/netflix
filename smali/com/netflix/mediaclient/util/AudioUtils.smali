.class public final Lcom/netflix/mediaclient/util/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundPool(I)Landroid/media/SoundPool;
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 20
    invoke-static {p0}, Lcom/netflix/mediaclient/util/api/Api21Util;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/api/Api19Util;->createSoundPoolPreLollipop(I)Landroid/media/SoundPool;

    move-result-object v0

    goto :goto_0
.end method
