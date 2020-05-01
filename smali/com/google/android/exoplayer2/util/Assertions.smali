.class public final Lcom/google/android/exoplayer2/util/Assertions;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static checkArgument(Z)V
    .locals 0

    return-void
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static checkIndex(III)I
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    return p0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    return-object p0
.end method

.method public static checkState(Z)V
    .locals 0

    return-void
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .locals 0

    return-void
.end method
