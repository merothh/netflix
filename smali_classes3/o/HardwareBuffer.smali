.class public Lo/HardwareBuffer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SensorEventCallback$Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/common/memory/MemoryTrimType;)D
    .locals 5

    .line 27
    sget-object v0, Lo/HardwareBuffer$5;->e:[I

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const-string p1, "BitmapMemoryCacheTrimStrategy"

    const-string v3, "unknown trim type: %s"

    .line 42
    invoke-static {p1, v3, v0}, Lo/DexMetadataHelper;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 29
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    .line 30
    sget-object p1, Lcom/facebook/common/memory/MemoryTrimType;->e:Lcom/facebook/common/memory/MemoryTrimType;

    invoke-virtual {p1}, Lcom/facebook/common/memory/MemoryTrimType;->e()D

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v1
.end method
