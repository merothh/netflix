.class public Lo/LegacyFaceDetectMapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Lo/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/UserInfo<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/CompatibilityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CompatibilityInfo<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/GestureLibraries;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lo/BiometricFingerprintConstants;

.field private l:Landroid/graphics/ColorSpace;


# direct methods
.method public constructor <init>(Lo/CompatibilityInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    iput-object v0, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lo/LegacyFaceDetectMapper;->d:I

    .line 65
    iput v0, p0, Lo/LegacyFaceDetectMapper;->g:I

    .line 66
    iput v0, p0, Lo/LegacyFaceDetectMapper;->f:I

    const/4 v1, 0x1

    .line 67
    iput v1, p0, Lo/LegacyFaceDetectMapper;->i:I

    .line 68
    iput v0, p0, Lo/LegacyFaceDetectMapper;->h:I

    .line 73
    invoke-static {p1}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 74
    invoke-virtual {p1}, Lo/CompatibilityInfo;->d()Lo/CompatibilityInfo;

    move-result-object p1

    iput-object p1, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lo/LegacyFaceDetectMapper;->a:Lo/UserInfo;

    return-void
.end method

.method public constructor <init>(Lo/UserInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Ljava/io/FileInputStream;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lo/GestureLibraries;->a:Lo/GestureLibraries;

    iput-object v0, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lo/LegacyFaceDetectMapper;->d:I

    .line 65
    iput v0, p0, Lo/LegacyFaceDetectMapper;->g:I

    .line 66
    iput v0, p0, Lo/LegacyFaceDetectMapper;->f:I

    const/4 v1, 0x1

    .line 67
    iput v1, p0, Lo/LegacyFaceDetectMapper;->i:I

    .line 68
    iput v0, p0, Lo/LegacyFaceDetectMapper;->h:I

    .line 79
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    .line 81
    iput-object p1, p0, Lo/LegacyFaceDetectMapper;->a:Lo/UserInfo;

    return-void
.end method

.method public constructor <init>(Lo/UserInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UserInfo<",
            "Ljava/io/FileInputStream;",
            ">;I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lo/LegacyFaceDetectMapper;-><init>(Lo/UserInfo;)V

    .line 86
    iput p2, p0, Lo/LegacyFaceDetectMapper;->h:I

    return-void
.end method

.method public static a(Lo/LegacyFaceDetectMapper;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 443
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->close()V

    :cond_0
    return-void
.end method

.method public static b(Lo/LegacyFaceDetectMapper;)Lo/LegacyFaceDetectMapper;
    .locals 0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->c()Lo/LegacyFaceDetectMapper;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Lo/LegacyFaceDetectMapper;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lo/LegacyFaceDetectMapper;)Z
    .locals 1

    .line 431
    iget v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lo/LegacyFaceDetectMapper;->g:I

    if-ltz v0, :cond_0

    iget p0, p0, Lo/LegacyFaceDetectMapper;->f:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k()V
    .locals 1

    .line 340
    iget v0, p0, Lo/LegacyFaceDetectMapper;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lo/LegacyFaceDetectMapper;->f:I

    if-gez v0, :cond_1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->m()V

    :cond_1
    return-void
.end method

.method private q()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lo/RadioMetadata;->c(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lo/LegacyFaceDetectMapper;->g:I

    .line 380
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lo/LegacyFaceDetectMapper;->f:I

    :cond_0
    return-object v0
.end method

.method private r()Lo/RadioManager;
    .locals 4

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 391
    :try_start_1
    invoke-static {v0}, Lo/ProgramSelector;->c(Ljava/io/InputStream;)Lo/RadioManager;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lo/RadioManager;->c()Landroid/graphics/ColorSpace;

    move-result-object v2

    iput-object v2, p0, Lo/LegacyFaceDetectMapper;->l:Landroid/graphics/ColorSpace;

    .line 393
    invoke-virtual {v1}, Lo/RadioManager;->a()Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lo/LegacyFaceDetectMapper;->g:I

    .line 396
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lo/LegacyFaceDetectMapper;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 401
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 404
    :catch_1
    :cond_2
    throw v1
.end method


# virtual methods
.method public a()Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CompatibilityInfo<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 200
    iput p1, p0, Lo/LegacyFaceDetectMapper;->i:I

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .locals 3

    .line 150
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->a:Lo/UserInfo;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lo/UserInfo;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    .line 154
    invoke-static {v0}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    :try_start_0
    new-instance v1, Lo/ApkAssets;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-direct {v1, v2}, Lo/ApkAssets;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 190
    iput p1, p0, Lo/LegacyFaceDetectMapper;->e:I

    return-void
.end method

.method public c()Lo/LegacyFaceDetectMapper;
    .locals 3

    .line 100
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->a:Lo/UserInfo;

    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Lo/LegacyFaceDetectMapper;

    iget v2, p0, Lo/LegacyFaceDetectMapper;->h:I

    invoke-direct {v1, v0, v2}, Lo/LegacyFaceDetectMapper;-><init>(Lo/UserInfo;I)V

    goto :goto_1

    .line 103
    :cond_0
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    .line 104
    invoke-static {v0}, Lo/CompatibilityInfo;->d(Lo/CompatibilityInfo;)Lo/CompatibilityInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :cond_1
    :try_start_0
    new-instance v1, Lo/LegacyFaceDetectMapper;

    invoke-direct {v1, v0}, Lo/LegacyFaceDetectMapper;-><init>(Lo/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    :goto_1
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1, p0}, Lo/LegacyFaceDetectMapper;->e(Lo/LegacyFaceDetectMapper;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    .line 109
    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw v1
.end method

.method public c(I)V
    .locals 0

    .line 183
    iput p1, p0, Lo/LegacyFaceDetectMapper;->g:I

    return-void
.end method

.method public c(Lo/BiometricFingerprintConstants;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lo/LegacyFaceDetectMapper;->j:Lo/BiometricFingerprintConstants;

    return-void
.end method

.method public c(Lo/GestureLibraries;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    return-void
.end method

.method public close()V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 195
    iput p1, p0, Lo/LegacyFaceDetectMapper;->d:I

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/CompatibilityInfo;->e(Lo/CompatibilityInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->a:Lo/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lo/GestureLibraries;
    .locals 1

    .line 220
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->k()V

    .line 221
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 176
    iput p1, p0, Lo/LegacyFaceDetectMapper;->f:I

    return-void
.end method

.method public e(Lo/LegacyFaceDetectMapper;)V
    .locals 1

    .line 416
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->e()Lo/GestureLibraries;

    move-result-object v0

    iput-object v0, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    .line 417
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->i()I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->g:I

    .line 418
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->g()I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->f:I

    .line 419
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->h()I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    .line 420
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->j()I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->d:I

    .line 421
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->n()I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->i:I

    .line 422
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->h:I

    .line 423
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->l()Lo/BiometricFingerprintConstants;

    move-result-object v0

    iput-object v0, p0, Lo/LegacyFaceDetectMapper;->j:Lo/BiometricFingerprintConstants;

    .line 424
    invoke-virtual {p1}, Lo/LegacyFaceDetectMapper;->f()Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Lo/LegacyFaceDetectMapper;->l:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public f()Landroid/graphics/ColorSpace;
    .locals 1

    .line 259
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->k()V

    .line 260
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->l:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public f(I)Z
    .locals 4

    .line 282
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    sget-object v1, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 286
    :cond_0
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->a:Lo/UserInfo;

    if-eqz v0, :cond_1

    return v2

    .line 290
    :cond_1
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    invoke-static {v0}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    add-int/lit8 v1, p1, -0x2

    .line 292
    invoke-interface {v0, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->c(I)B

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    sub-int/2addr p1, v2

    .line 293
    invoke-interface {v0, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->c(I)B

    move-result p1

    const/16 v0, -0x27

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public g()I
    .locals 1

    .line 249
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->k()V

    .line 250
    iget v0, p0, Lo/LegacyFaceDetectMapper;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 229
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->k()V

    .line 230
    iget v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 241
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->k()V

    .line 242
    iget v0, p0, Lo/LegacyFaceDetectMapper;->g:I

    return v0
.end method

.method public i(I)Ljava/lang/String;
    .locals 6

    .line 315
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->a()Lo/CompatibilityInfo;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->o()I

    move-result v2

    .line 320
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 321
    new-array v2, p1, [B

    .line 323
    :try_start_0
    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/memory/PooledByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 329
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 327
    :try_start_1
    invoke-interface {v3, v1, v2, v1, p1}, Lcom/facebook/common/memory/PooledByteBuffer;->c(I[BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 332
    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v4, v2, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 333
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 329
    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    throw p1
.end method

.method public j()I
    .locals 1

    .line 235
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->k()V

    .line 236
    iget v0, p0, Lo/LegacyFaceDetectMapper;->d:I

    return v0
.end method

.method public l()Lo/BiometricFingerprintConstants;
    .locals 1

    .line 274
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->j:Lo/BiometricFingerprintConstants;

    return-object v0
.end method

.method public m()V
    .locals 4

    .line 348
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0

    .line 347
    invoke-static {v0}, Lo/GestureOverlayView;->b(Ljava/io/InputStream;)Lo/GestureLibraries;

    move-result-object v0

    .line 349
    iput-object v0, p0, Lo/LegacyFaceDetectMapper;->c:Lo/GestureLibraries;

    .line 353
    invoke-static {v0}, Lo/GestureLibrary;->d(Lo/GestureLibraries;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->q()Landroid/util/Pair;

    move-result-object v1

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0}, Lo/LegacyFaceDetectMapper;->r()Lo/RadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lo/RadioManager;->a()Landroid/util/Pair;

    move-result-object v1

    .line 358
    :goto_0
    sget-object v2, Lo/GestureLibrary;->d:Lo/GestureLibraries;

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    iget v2, p0, Lo/LegacyFaceDetectMapper;->e:I

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_3

    .line 361
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lo/Announcement;->b(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->d:I

    .line 362
    iget v0, p0, Lo/LegacyFaceDetectMapper;->d:I

    invoke-static {v0}, Lo/Announcement;->e(I)I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    goto :goto_1

    .line 364
    :cond_1
    sget-object v1, Lo/GestureLibrary;->o:Lo/GestureLibraries;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    if-ne v0, v3, :cond_2

    .line 366
    invoke-virtual {p0}, Lo/LegacyFaceDetectMapper;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imageutils/HeifExifUtil;->b(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->d:I

    .line 367
    iget v0, p0, Lo/LegacyFaceDetectMapper;->d:I

    invoke-static {v0}, Lo/Announcement;->e(I)I

    move-result v0

    iput v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lo/LegacyFaceDetectMapper;->e:I

    :cond_3
    :goto_1
    return-void
.end method

.method public n()I
    .locals 1

    .line 269
    iget v0, p0, Lo/LegacyFaceDetectMapper;->i:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 303
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lo/LegacyFaceDetectMapper;->b:Lo/CompatibilityInfo;

    invoke-virtual {v0}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v0

    return v0

    .line 306
    :cond_0
    iget v0, p0, Lo/LegacyFaceDetectMapper;->h:I

    return v0
.end method
