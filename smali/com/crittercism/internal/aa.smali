.class public abstract Lcom/crittercism/internal/aa;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/crittercism/internal/ah;

.field b:Lcom/crittercism/internal/ab;

.field protected c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    iget v1, p1, Lcom/crittercism/internal/aa;->c:I

    invoke-direct {p0, v0, v1}, Lcom/crittercism/internal/aa;->a(Lcom/crittercism/internal/ah;I)V

    return-void
.end method

.method public constructor <init>(Lcom/crittercism/internal/ah;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/crittercism/internal/aa;->a(Lcom/crittercism/internal/ah;I)V

    return-void
.end method

.method private a(Lcom/crittercism/internal/ah;I)V
    .locals 2

    iput-object p1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->e()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/aa;->d:I

    new-instance v0, Lcom/crittercism/internal/ab;

    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/crittercism/internal/ab;-><init>(I)V

    iput-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    iput p2, p0, Lcom/crittercism/internal/aa;->c:I

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/crittercism/internal/aa;->c:I

    return v0
.end method

.method public final a([BII)V
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/crittercism/internal/aa;->b([BII)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v1}, Lcom/crittercism/internal/ah;->a()Lcom/crittercism/internal/aa;

    move-result-object v1

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/crittercism/internal/aa;->b([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/crittercism/internal/aa;->g()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/crittercism/internal/aa;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/crittercism/internal/aa;->c:I

    int-to-char v2, p1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    invoke-virtual {p0, v2}, Lcom/crittercism/internal/aa;->a(Lcom/crittercism/internal/ab;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->b()Lcom/crittercism/internal/aa;

    move-result-object v2

    :goto_1
    if-eq v2, p0, :cond_2

    iget-object v3, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v3, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    :cond_2
    if-ne v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    iget v3, v3, Lcom/crittercism/internal/ab;->b:I

    iget v4, p0, Lcom/crittercism/internal/aa;->d:I

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    iget v4, v3, Lcom/crittercism/internal/ab;->b:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    array-length v5, v5

    if-le v4, v5, :cond_5

    iget-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    array-length v5, v5

    shl-int/lit8 v5, v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [C

    iget-object v6, v3, Lcom/crittercism/internal/ab;->a:[C

    iget v7, v3, Lcom/crittercism/internal/ab;->b:I

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    :cond_5
    iget-object v5, v3, Lcom/crittercism/internal/ab;->a:[C

    iget v6, v3, Lcom/crittercism/internal/ab;->b:I

    aput-char v2, v5, v6

    iput v4, v3, Lcom/crittercism/internal/ab;->b:I

    move-object v2, p0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/crittercism/internal/aa;->c()Lcom/crittercism/internal/aa;

    move-result-object v2

    goto :goto_1
.end method

.method public abstract a(Lcom/crittercism/internal/ab;)Z
.end method

.method protected b([BII)I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    invoke-direct {p0}, Lcom/crittercism/internal/aa;->g()V

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    if-nez v1, :cond_0

    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lcom/crittercism/internal/aa;->a(I)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract b()Lcom/crittercism/internal/aa;
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/crittercism/internal/aa;->c:I

    return-void
.end method

.method public abstract c()Lcom/crittercism/internal/aa;
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    invoke-virtual {v0}, Lcom/crittercism/internal/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
