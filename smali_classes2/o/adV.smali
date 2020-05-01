.class public final Lo/adV;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/google/android/gms/cast/CastDevice;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lo/zN;)Lo/Bc;
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    instance-of v0, p0, Lo/ko;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lo/ko;

    invoke-virtual {p0}, Lo/ko;->r()Lo/Bc;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/widget/SeekBar;)I
    .locals 6

    .line 58
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 59
    div-int/lit8 v1, v0, 0xa

    mul-int/lit8 v1, v1, 0xa

    .line 63
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    add-int/lit8 v3, v1, 0xa

    const-string v4, "MdxUtils"

    if-lt v3, v2, :cond_0

    if-lez v2, :cond_0

    const-string v1, "seek to close to EOS, defaulting to 10 seconds before EOS."

    .line 65
    invoke-static {v4, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v2, -0xa

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    const-string v0, "Right on target, no need to adjust seekBar position %d [sec]"

    invoke-static {v4, v0, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "Progress : %d  [sec] vs. bif position %d [sec]"

    invoke-static {v4, v0, v5}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    return v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "CastMediaRouteProviderService:"

    .line 207
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1e

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_2

    return-object v0

    .line 216
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lo/Object$LoaderManager;)Ljava/lang/String;
    .locals 0

    .line 194
    invoke-virtual {p0}, Lo/Object$LoaderManager;->k()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p0

    invoke-static {p0}, Lo/adV;->a(Lcom/google/android/gms/cast/CastDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Z
    .locals 2

    .line 137
    invoke-static {}, Lo/adk;->c()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(Lo/zN;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "MdxUtils"

    if-nez p0, :cond_0

    const-string p0, "MDX agent is null inside isAnyMdxTargetAvailable()...returning false!"

    .line 148
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 152
    :cond_0
    invoke-interface {p0}, Lo/zN;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "MDX service is NOT ready"

    .line 153
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 157
    :cond_1
    invoke-interface {p0}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 158
    array-length p0, p0

    const/4 v2, 0x1

    if-ge p0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string p0, "No MDX remote targets found"

    .line 159
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static d(Lo/zN;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "MdxUtils"

    if-nez p0, :cond_0

    const-string p0, "MDX agent is null - isSameVideoPlaying returning false"

    .line 95
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 99
    :cond_0
    invoke-static {p0}, Lo/adV;->a(Lo/zN;)Lo/Bc;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Video detail is null - isSameVideoPlaying returning false"

    .line 101
    invoke-static {v1, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 105
    :cond_1
    invoke-interface {p0}, Lo/Bc;->bb()Lo/AK;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 120
    invoke-interface {p0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Same video is playing, just sync..."

    .line 121
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "Video is not currently playing or different video, start play if play is not already pending..."

    .line 124
    invoke-static {v1, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
