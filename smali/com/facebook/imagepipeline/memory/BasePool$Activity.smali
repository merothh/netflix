.class Lcom/facebook/imagepipeline/memory/BasePool$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field a:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 828
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    const/4 v1, 0x1

    if-lt v0, p1, :cond_0

    iget v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    .line 829
    iput v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    sub-int/2addr v0, p1

    .line 830
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 835
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    .line 836
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    .line 837
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "com.facebook.imagepipeline.memory.BasePool.Counter"

    const-string v1, "Unexpected decrement of %d. Current numBytes = %d, count = %d"

    .line 832
    invoke-static {p1, v1, v0}, Lo/DexMetadataHelper;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 845
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    .line 846
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 819
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->d:I

    .line 820
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$Activity;->a:I

    return-void
.end method
