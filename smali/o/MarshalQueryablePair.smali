.class public Lo/MarshalQueryablePair;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source ""

# interfaces
.implements Lo/RuntimePermissionPresentationInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "[B>;",
        "Lo/RuntimePermissionPresentationInfo;"
    }
.end annotation


# instance fields
.field private final i:[I


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    .line 41
    iget-object p1, p2, Lo/Face;->d:Landroid/util/SparseIntArray;

    .line 42
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lo/MarshalQueryablePair;->i:[I

    const/4 p2, 0x0

    .line 43
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 44
    iget-object p3, p0, Lo/MarshalQueryablePair;->i:[I

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lo/MarshalQueryablePair;->a()V

    return-void
.end method


# virtual methods
.method protected b([B)I
    .locals 0

    .line 123
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    array-length p1, p1

    return p1
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/MarshalQueryablePair;->i(I)[B

    move-result-object p1

    return-object p1
.end method

.method public d(I)I
    .locals 4

    if-lez p1, :cond_2

    .line 105
    iget-object v0, p0, Lo/MarshalQueryablePair;->i:[I

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

    .line 101
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic d(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/MarshalQueryablePair;->b([B)I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 0

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/MarshalQueryablePair;->e([B)V

    return-void
.end method

.method protected e([B)V
    .locals 0

    .line 73
    invoke-static {p1}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected i(I)[B
    .locals 0

    .line 64
    new-array p1, p1, [B

    return-object p1
.end method
