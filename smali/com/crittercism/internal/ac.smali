.class public final Lcom/crittercism/internal/ac;
.super Lcom/crittercism/internal/aa;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/crittercism/internal/ac;->e:I

    iput p2, p0, Lcom/crittercism/internal/ac;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/crittercism/internal/ac;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/crittercism/internal/ac;->e:I

    iget v1, p0, Lcom/crittercism/internal/ac;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/crittercism/internal/ac;->c:I

    iget v1, p0, Lcom/crittercism/internal/ac;->e:I

    iget v2, p0, Lcom/crittercism/internal/ac;->d:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/ac;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v1}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v2, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    goto :goto_0

    :cond_1
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

    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v1, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move p3, v0

    :goto_0
    return p3

    :cond_0
    iget v0, p0, Lcom/crittercism/internal/ac;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/crittercism/internal/ac;->d:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/crittercism/internal/ac;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ac;->e:I

    iget v0, p0, Lcom/crittercism/internal/ac;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ac;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/crittercism/internal/ac;->d:I

    iget v1, p0, Lcom/crittercism/internal/ac;->e:I

    sub-int p3, v0, v1

    iget v0, p0, Lcom/crittercism/internal/ac;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/crittercism/internal/ac;->c:I

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/ac;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    iget-object v1, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v1}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

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

    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/ac;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    return-void
.end method
