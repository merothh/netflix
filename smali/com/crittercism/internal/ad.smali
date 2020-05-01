.class public final Lcom/crittercism/internal/ad;
.super Lcom/crittercism/internal/aa;


# instance fields
.field private d:Lcom/crittercism/internal/ae;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/ae;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/crittercism/internal/ad;->f:I

    iput-object p1, p0, Lcom/crittercism/internal/ad;->d:Lcom/crittercism/internal/ae;

    iput p2, p0, Lcom/crittercism/internal/ad;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/crittercism/internal/ad;->f:I

    iget v3, p0, Lcom/crittercism/internal/ad;->e:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/ad;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/crittercism/internal/ad;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/crittercism/internal/ad;->c:I

    int-to-char v2, p1

    iget v3, p0, Lcom/crittercism/internal/ad;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/crittercism/internal/ad;->f:I

    iget v3, p0, Lcom/crittercism/internal/ad;->f:I

    iget v4, p0, Lcom/crittercism/internal/ad;->e:I

    if-le v3, v4, :cond_0

    if-ne v2, v5, :cond_3

    iget-object v0, p0, Lcom/crittercism/internal/ad;->d:Lcom/crittercism/internal/ae;

    invoke-virtual {p0}, Lcom/crittercism/internal/ad;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/crittercism/internal/ae;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    iget-object v2, p0, Lcom/crittercism/internal/ad;->d:Lcom/crittercism/internal/ae;

    invoke-interface {v0, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/crittercism/internal/ad;->f:I

    iget v4, p0, Lcom/crittercism/internal/ad;->e:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    if-eq v2, v5, :cond_0

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v2, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v2}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/internal/ad;->d:Lcom/crittercism/internal/ae;

    return-object v0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 1

    const/4 v0, 0x0

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

    invoke-virtual {p0}, Lcom/crittercism/internal/ad;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    return-void
.end method
