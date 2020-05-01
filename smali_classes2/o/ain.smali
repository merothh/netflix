.class public Lo/ain;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(J)Z
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    return v0

    :cond_0
    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    :cond_1
    const-wide/16 v5, 0x1

    sub-long v5, p0, v5

    and-long/2addr p0, v5

    cmp-long v3, p0, v1

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static d(Lcom/netflix/msl/util/MslContext;)J
    .locals 8

    const-wide/high16 v0, 0x20000000000000L

    .line 72
    invoke-static {v0, v1}, Lo/ain;->b(J)Z

    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/netflix/msl/util/MslContext;->j()Ljava/util/Random;

    move-result-object p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    if-eqz v2, :cond_1

    const-wide v5, 0x1fffffffffffffL

    and-long/2addr v3, v5

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    cmp-long v5, v3, v0

    if-gtz v5, :cond_0

    return-wide v3
.end method

.method public static e([B[B)Z
    .locals 5

    .line 36
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 41
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
