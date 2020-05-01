.class public Lo/MarshalQueryablePrimitive;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RequestQueue;


# instance fields
.field private final a:Lo/HighSpeedVideoConfiguration;

.field protected final b:Lo/MarshalQueryableString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MarshalQueryableString<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(IILo/HighSpeedVideoConfiguration;Lo/RuntimePermissionPresenter;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lo/RequestThreadManager;

    invoke-direct {v0}, Lo/RequestThreadManager;-><init>()V

    iput-object v0, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    .line 28
    iput p1, p0, Lo/MarshalQueryablePrimitive;->c:I

    .line 29
    iput p2, p0, Lo/MarshalQueryablePrimitive;->e:I

    .line 30
    iput-object p3, p0, Lo/MarshalQueryablePrimitive;->a:Lo/HighSpeedVideoConfiguration;

    if-eqz p4, :cond_0

    .line 32
    invoke-interface {p4, p0}, Lo/RuntimePermissionPresenter;->d(Lo/SplitAssetDependencyLoader;)V

    :cond_0
    return-void
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 71
    iget-object v0, p0, Lo/MarshalQueryablePrimitive;->a:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v0, p1}, Lo/HighSpeedVideoConfiguration;->c(I)V

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 42
    :goto_0
    :try_start_0
    iget v0, p0, Lo/MarshalQueryablePrimitive;->d:I

    if-le v0, p1, :cond_1

    .line 43
    iget-object v0, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    invoke-interface {v0}, Lo/MarshalQueryableString;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object v1, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    invoke-interface {v1, v0}, Lo/MarshalQueryableString;->e(Ljava/lang/Object;)I

    move-result v0

    .line 48
    iget v1, p0, Lo/MarshalQueryablePrimitive;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Lo/MarshalQueryablePrimitive;->d:I

    .line 49
    iget-object v1, p0, Lo/MarshalQueryablePrimitive;->a:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v1, v0}, Lo/HighSpeedVideoConfiguration;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/MarshalQueryablePrimitive;->d(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    invoke-interface {v0, p1}, Lo/MarshalQueryableString;->e(Ljava/lang/Object;)I

    move-result v0

    .line 78
    iget v1, p0, Lo/MarshalQueryablePrimitive;->e:I

    if-gt v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lo/MarshalQueryablePrimitive;->a:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v1, v0}, Lo/HighSpeedVideoConfiguration;->a(I)V

    .line 80
    iget-object v1, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    invoke-interface {v1, p1}, Lo/MarshalQueryableString;->d(Ljava/lang/Object;)V

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget p1, p0, Lo/MarshalQueryablePrimitive;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/MarshalQueryablePrimitive;->d:I

    .line 83
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6

    .line 38
    iget v0, p0, Lo/MarshalQueryablePrimitive;->c:I

    int-to-double v0, v0

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->e()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    mul-double v0, v0, v4

    double-to-int p1, v0

    invoke-direct {p0, p1}, Lo/MarshalQueryablePrimitive;->c(I)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/MarshalQueryablePrimitive;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public declared-synchronized d(I)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget v0, p0, Lo/MarshalQueryablePrimitive;->d:I

    iget v1, p0, Lo/MarshalQueryablePrimitive;->c:I

    if-le v0, v1, :cond_0

    .line 57
    iget v0, p0, Lo/MarshalQueryablePrimitive;->c:I

    invoke-direct {p0, v0}, Lo/MarshalQueryablePrimitive;->c(I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    invoke-interface {v0, p1}, Lo/MarshalQueryableString;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 61
    iget-object p1, p0, Lo/MarshalQueryablePrimitive;->b:Lo/MarshalQueryableString;

    invoke-interface {p1, v0}, Lo/MarshalQueryableString;->e(Ljava/lang/Object;)I

    move-result p1

    .line 62
    iget v1, p0, Lo/MarshalQueryablePrimitive;->d:I

    sub-int/2addr v1, p1

    iput v1, p0, Lo/MarshalQueryablePrimitive;->d:I

    .line 63
    iget-object v1, p0, Lo/MarshalQueryablePrimitive;->a:Lo/HighSpeedVideoConfiguration;

    invoke-interface {v1, p1}, Lo/HighSpeedVideoConfiguration;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-object v0

    .line 66
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lo/MarshalQueryablePrimitive;->b(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
