.class public Lo/CaptureCollector;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private g:I

.field private final h:Lo/RuntimePermissionPresentationInfo;

.field private j:Z


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresentationInfo;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RuntimePermissionPresentationInfo;

    iput-object p1, p0, Lo/CaptureCollector;->h:Lo/RuntimePermissionPresentationInfo;

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lo/CaptureCollector;->e:I

    .line 96
    iput p1, p0, Lo/CaptureCollector;->c:I

    .line 97
    iput p1, p0, Lo/CaptureCollector;->b:I

    .line 98
    iput p1, p0, Lo/CaptureCollector;->g:I

    .line 99
    iput p1, p0, Lo/CaptureCollector;->a:I

    .line 100
    iput p1, p0, Lo/CaptureCollector;->d:I

    return-void
.end method

.method private static b(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xd0

    if-lt p0, v2, :cond_1

    const/16 v2, 0xd7

    if-gt p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0xd9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd8

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Ljava/io/InputStream;)Z
    .locals 10

    .line 151
    iget v0, p0, Lo/CaptureCollector;->a:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    .line 154
    :try_start_0
    iget v4, p0, Lo/CaptureCollector;->d:I

    if-eq v4, v3, :cond_f

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    .line 155
    iget v5, p0, Lo/CaptureCollector;->e:I

    add-int/2addr v5, v2

    iput v5, p0, Lo/CaptureCollector;->e:I

    .line 156
    iget-boolean v5, p0, Lo/CaptureCollector;->j:Z

    if-eqz v5, :cond_0

    .line 159
    iput v3, p0, Lo/CaptureCollector;->d:I

    .line 160
    iput-boolean v1, p0, Lo/CaptureCollector;->j:Z

    return v1

    .line 163
    :cond_0
    iget v5, p0, Lo/CaptureCollector;->d:I

    const/16 v6, 0xff

    if-eqz v5, :cond_c

    const/4 v7, 0x2

    if-eq v5, v2, :cond_a

    const/4 v8, 0x3

    if-eq v5, v7, :cond_9

    const/4 v9, 0x4

    if-eq v5, v8, :cond_3

    const/4 v6, 0x5

    if-eq v5, v9, :cond_2

    if-eq v5, v6, :cond_1

    .line 228
    invoke-static {v1}, Lo/StringParceledListSlice;->c(Z)V

    goto :goto_1

    .line 215
    :cond_1
    iget v5, p0, Lo/CaptureCollector;->c:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    sub-int/2addr v5, v7

    int-to-long v8, v5

    .line 221
    invoke-static {p1, v8, v9}, Lo/StringBlock;->c(Ljava/io/InputStream;J)J

    .line 222
    iget v6, p0, Lo/CaptureCollector;->e:I

    add-int/2addr v6, v5

    iput v6, p0, Lo/CaptureCollector;->e:I

    .line 223
    iput v7, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    .line 211
    :cond_2
    iput v6, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_3
    if-ne v4, v6, :cond_4

    .line 188
    iput v8, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 190
    iput v7, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_5
    const/16 v5, 0xd9

    if-ne v4, v5, :cond_6

    .line 192
    iput-boolean v2, p0, Lo/CaptureCollector;->j:Z

    .line 193
    iget v5, p0, Lo/CaptureCollector;->e:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v5}, Lo/CaptureCollector;->e(I)V

    .line 196
    iput v7, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_6
    const/16 v5, 0xda

    if-ne v4, v5, :cond_7

    .line 199
    iget v5, p0, Lo/CaptureCollector;->e:I

    sub-int/2addr v5, v7

    invoke-direct {p0, v5}, Lo/CaptureCollector;->e(I)V

    .line 202
    :cond_7
    invoke-static {v4}, Lo/CaptureCollector;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 203
    iput v9, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    .line 205
    :cond_8
    iput v7, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_9
    if-ne v4, v6, :cond_e

    .line 182
    iput v8, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_a
    const/16 v5, 0xd8

    if-ne v4, v5, :cond_b

    .line 174
    iput v7, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    .line 176
    :cond_b
    iput v3, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    :cond_c
    if-ne v4, v6, :cond_d

    .line 166
    iput v2, p0, Lo/CaptureCollector;->d:I

    goto :goto_1

    .line 168
    :cond_d
    iput v3, p0, Lo/CaptureCollector;->d:I

    .line 231
    :cond_e
    :goto_1
    iput v4, p0, Lo/CaptureCollector;->c:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 235
    invoke-static {p1}, Lo/VerificationParams;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 237
    :cond_f
    iget p1, p0, Lo/CaptureCollector;->d:I

    if-eq p1, v3, :cond_10

    iget p1, p0, Lo/CaptureCollector;->a:I

    if-eq p1, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private e(I)V
    .locals 1

    .line 256
    iget v0, p0, Lo/CaptureCollector;->b:I

    if-lez v0, :cond_0

    .line 257
    iput p1, p0, Lo/CaptureCollector;->g:I

    .line 259
    :cond_0
    iget p1, p0, Lo/CaptureCollector;->b:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lo/CaptureCollector;->b:I

    iput p1, p0, Lo/CaptureCollector;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 277
    iget v0, p0, Lo/CaptureCollector;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lo/CaptureCollector;->j:Z

    return v0
.end method

.method public b(Lo/LegacyFaceDetectMapper;)Z
    .locals 4

    .line 116
    iget v0, p0, Lo/CaptureCollector;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v0

    .line 125
    iget v2, p0, Lo/CaptureCollector;->e:I

    if-gt v0, v2, :cond_1

    return v1

    .line 129
    :cond_1
    new-instance v0, Lo/SplitAssetLoader;

    .line 130
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object p1

    iget-object v2, p0, Lo/CaptureCollector;->h:Lo/RuntimePermissionPresentationInfo;

    const/16 v3, 0x4000

    .line 131
    invoke-interface {v2, v3}, Lo/RuntimePermissionPresentationInfo;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lo/CaptureCollector;->h:Lo/RuntimePermissionPresentationInfo;

    invoke-direct {v0, p1, v2, v3}, Lo/SplitAssetLoader;-><init>(Ljava/io/InputStream;[BLo/ConfigurationBoundResourceCache;)V

    .line 134
    :try_start_0
    iget p1, p0, Lo/CaptureCollector;->e:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lo/StringBlock;->c(Ljava/io/InputStream;J)J

    .line 135
    invoke-direct {p0, v0}, Lo/CaptureCollector;->c(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {v0}, Lo/ShortcutManager;->e(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    :try_start_1
    invoke-static {p1}, Lo/VerificationParams;->e(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {v0}, Lo/ShortcutManager;->e(Ljava/io/InputStream;)V

    return v1

    :goto_0
    invoke-static {v0}, Lo/ShortcutManager;->e(Ljava/io/InputStream;)V

    throw p1
.end method

.method public e()I
    .locals 1

    .line 270
    iget v0, p0, Lo/CaptureCollector;->g:I

    return v0
.end method
