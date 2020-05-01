.class public Lo/qG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# static fields
.field private static a:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private static b:Z

.field private static c:Z

.field private static d:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private static final e:Ljava/lang/String;

.field private static f:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lo/qG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/qG;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lo/qG;->i:Z

    .line 42
    invoke-static {}, Lo/qG;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 3

    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ".google."

    .line 141
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 142
    iget-object v2, v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Z
    .locals 1

    .line 236
    sget-boolean v0, Lo/qG;->b:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    .line 248
    sget-boolean v0, Lo/qG;->j:Z

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 116
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return v0

    :catchall_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static c()V
    .locals 4

    const-string v0, "video/x-vnd.on2.vp9"

    .line 47
    invoke-static {v0}, Lo/qG;->d(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/qG;->l:Z

    .line 49
    invoke-static {v0}, Lo/qG;->b(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/qG;->c:Z

    const-string v1, "video/hevc"

    .line 50
    invoke-static {v1}, Lo/qG;->b(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lo/qG;->b:Z

    const-string v2, "video/avc"

    .line 51
    invoke-static {v2}, Lo/qG;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v3

    sput-object v3, Lo/qG;->a:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 52
    invoke-static {v0}, Lo/qG;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v3

    sput-object v3, Lo/qG;->d:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 53
    invoke-static {v1}, Lo/qG;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v3

    sput-object v3, Lo/qG;->f:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 54
    sget-object v3, Lo/qG;->d:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v0, v3}, Lo/qG;->e(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    sput-boolean v0, Lo/qG;->h:Z

    .line 55
    sget-object v0, Lo/qG;->f:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {v1, v0}, Lo/qG;->e(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z

    move-result v0

    sput-boolean v0, Lo/qG;->g:Z

    .line 56
    invoke-static {v1}, Lo/qG;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lo/qG;->m:Z

    const-string v0, "video/dolby-vision"

    .line 57
    invoke-static {v0}, Lo/qG;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lo/qG;->k:Z

    .line 59
    invoke-static {v2}, Lo/qG;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lo/qG;->n:Z

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Lo/qG;->e(Z)Z

    move-result v0

    sput-boolean v0, Lo/qG;->j:Z

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lo/qG;->e(Z)Z

    move-result v0

    sput-boolean v0, Lo/qG;->o:Z

    return-void
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .line 97
    invoke-static {p0}, Lo/qG;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lo/qG;->d(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d()Z
    .locals 1

    .line 232
    sget-boolean v0, Lo/qG;->c:Z

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private static d(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 102
    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p0

    .line 104
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 105
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v4, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static e()Z
    .locals 1

    .line 252
    sget-boolean v0, Lo/qG;->h:Z

    return v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 172
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 173
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 174
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 177
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 178
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 179
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private static e(Ljava/lang/String;Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 189
    invoke-static {p0}, Lo/qG;->e(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 192
    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    .line 194
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v0
.end method

.method private static e(Z)Z
    .locals 5

    const-string v0, "video/avc"

    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 77
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->adaptive:Z

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/MediaUtils;->b([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    const/16 p0, 0x800

    if-lt v2, p0, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    const/16 v4, 0x100

    if-lt v2, v4, :cond_0

    return v3

    :catchall_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v1
.end method

.method public static f()Z
    .locals 1

    .line 264
    sget-boolean v0, Lo/qG;->k:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    .line 256
    sget-boolean v0, Lo/qG;->g:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    .line 282
    sget-boolean v0, Lo/qG;->o:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    .line 268
    sget-boolean v0, Lo/qG;->m:Z

    return v0
.end method

.method public static j()Z
    .locals 1

    .line 272
    sget-boolean v0, Lo/qG;->n:Z

    return v0
.end method


# virtual methods
.method public getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 3

    const-string v0, "video/x-vnd.on2.vp9"

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 205
    sget-boolean v0, Lo/qG;->i:Z

    if-eqz v0, :cond_0

    .line 206
    sget-object p1, Lo/qG;->d:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 208
    sget-boolean p2, Lo/qG;->c:Z

    if-eqz p2, :cond_1

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "video/hevc"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    sget-boolean v0, Lo/qG;->i:Z

    if-eqz v0, :cond_3

    .line 211
    sget-object p1, Lo/qG;->f:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    return-object p1

    :cond_3
    if-eqz p2, :cond_1

    .line 213
    sget-boolean p2, Lo/qG;->b:Z

    if-eqz p2, :cond_1

    goto :goto_0

    .line 215
    :cond_4
    :goto_1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .locals 1

    .line 221
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method
