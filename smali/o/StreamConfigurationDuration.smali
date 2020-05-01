.class public Lo/StreamConfigurationDuration;
.super Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final d:Lo/MarshalQueryableNativeByteToInteger;


# direct methods
.method public constructor <init>(Lo/MarshalQueryableNativeByteToInteger;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/facebook/imagepipeline/nativecode/DalvikPurgeableDecoder;-><init>()V

    .line 35
    iput-object p1, p0, Lo/StreamConfigurationDuration;->d:Lo/MarshalQueryableNativeByteToInteger;

    return-void
.end method

.method private static c([BI)V
    .locals 1

    const/4 v0, -0x1

    .line 100
    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, -0x27

    .line 101
    aput-byte v0, p0, p1

    return-void
.end method


# virtual methods
.method public d(Lo/CompatibilityInfo;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;I",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 75
    invoke-static {p1, p2}, Lo/StreamConfigurationDuration;->e(Lo/CompatibilityInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/StreamConfigurationDuration;->b:[B

    .line 76
    :goto_0
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 77
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v1

    const/4 v2, 0x0

    if-gt p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lo/StringParceledListSlice;->a(Z)V

    .line 79
    iget-object v1, p0, Lo/StreamConfigurationDuration;->d:Lo/MarshalQueryableNativeByteToInteger;

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {v1, v3}, Lo/MarshalQueryableNativeByteToInteger;->b(I)Lo/CompatibilityInfo;

    move-result-object v1

    .line 81
    :try_start_0
    invoke-virtual {v1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 82
    invoke-interface {p1, v2, v4, v2, p2}, Lcom/facebook/common/memory/PooledByteBuffer;->c(I[BII)I

    if-eqz v0, :cond_2

    .line 84
    invoke-static {v4, p2}, Lo/StreamConfigurationDuration;->c([BI)V

    move p2, v3

    .line 87
    :cond_2
    invoke-static {v4, v2, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    .line 92
    invoke-static {p1, p2}, Lo/StringParceledListSlice;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method

.method public d(Lo/CompatibilityInfo;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CompatibilityInfo<",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 48
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->a()I

    move-result v0

    .line 49
    iget-object v1, p0, Lo/StreamConfigurationDuration;->d:Lo/MarshalQueryableNativeByteToInteger;

    invoke-virtual {v1, v0}, Lo/MarshalQueryableNativeByteToInteger;->b(I)Lo/CompatibilityInfo;

    move-result-object v1

    .line 51
    :try_start_0
    invoke-virtual {v1}, Lo/CompatibilityInfo;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    .line 52
    invoke-interface {p1, v3, v2, v3, v0}, Lcom/facebook/common/memory/PooledByteBuffer;->c(I[BII)I

    .line 53
    invoke-static {v2, v3, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "BitmapFactory returned null"

    .line 58
    invoke-static {p1, p2}, Lo/StringParceledListSlice;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lo/CompatibilityInfo;->a(Lo/CompatibilityInfo;)V

    throw p1
.end method
