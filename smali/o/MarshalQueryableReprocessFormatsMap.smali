.class public abstract Lo/MarshalQueryableReprocessFormatsMap;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "Lo/MarshalQueryableParcelable;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:[I


# direct methods
.method constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    .line 31
    iget-object p1, p2, Lo/Face;->d:Landroid/util/SparseIntArray;

    .line 32
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lo/MarshalQueryableReprocessFormatsMap;->h:[I

    const/4 p2, 0x0

    .line 33
    :goto_0
    iget-object p3, p0, Lo/MarshalQueryableReprocessFormatsMap;->h:[I

    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lo/MarshalQueryableReprocessFormatsMap;->a()V

    return-void
.end method


# virtual methods
.method protected a(Lo/MarshalQueryableParcelable;)I
    .locals 0

    .line 78
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {p1}, Lo/MarshalQueryableParcelable;->c()I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 15
    check-cast p1, Lo/MarshalQueryableParcelable;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableReprocessFormatsMap;->d(Lo/MarshalQueryableParcelable;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lo/MarshalQueryableReprocessFormatsMap;->g(I)Lo/MarshalQueryableParcelable;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lo/MarshalQueryableParcelable;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {p1}, Lo/MarshalQueryableParcelable;->close()V

    return-void
.end method

.method public d(I)I
    .locals 4

    if-lez p1, :cond_2

    .line 65
    iget-object v0, p0, Lo/MarshalQueryableReprocessFormatsMap;->h:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-lt v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1

    .line 61
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lo/MarshalQueryableParcelable;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableReprocessFormatsMap;->a(Lo/MarshalQueryableParcelable;)I

    move-result p1

    return p1
.end method

.method protected d(Lo/MarshalQueryableParcelable;)Z
    .locals 0

    .line 84
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {p1}, Lo/MarshalQueryableParcelable;->e()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e(I)I
    .locals 0

    return p1
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/MarshalQueryableParcelable;

    invoke-virtual {p0, p1}, Lo/MarshalQueryableReprocessFormatsMap;->c(Lo/MarshalQueryableParcelable;)V

    return-void
.end method

.method protected abstract g(I)Lo/MarshalQueryableParcelable;
.end method

.method public h()I
    .locals 2

    .line 41
    iget-object v0, p0, Lo/MarshalQueryableReprocessFormatsMap;->h:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
