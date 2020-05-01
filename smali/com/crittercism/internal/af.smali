.class public final Lcom/crittercism/internal/af;
.super Lcom/crittercism/internal/aa;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/af;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/af;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/af;->c:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/af;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move p3, v0

    :goto_0
    return p3

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/af;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/af;->c:I

    goto :goto_0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/af;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    return-void
.end method
