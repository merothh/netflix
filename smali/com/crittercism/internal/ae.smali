.class public final Lcom/crittercism/internal/ae;
.super Lcom/crittercism/internal/aa;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/crittercism/internal/aa;-><init>(Lcom/crittercism/internal/aa;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/ae;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/ab;)Z
    .locals 5

    const/4 v1, 0x0

    iget v0, p1, Lcom/crittercism/internal/ab;->b:I

    iget v2, p1, Lcom/crittercism/internal/ab;->b:I

    if-le v0, v2, :cond_3

    iget v0, p1, Lcom/crittercism/internal/ab;->b:I

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p1, Lcom/crittercism/internal/ab;->a:[C

    aget-char v3, v3, v0

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_0

    :goto_2
    iget v2, p1, Lcom/crittercism/internal/ab;->b:I

    if-lez v0, :cond_2

    :goto_3
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/crittercism/internal/ab;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/ae;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public final b()Lcom/crittercism/internal/aa;
    .locals 2

    iget v0, p0, Lcom/crittercism/internal/ae;->d:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/crittercism/internal/am;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/am;-><init>(Lcom/crittercism/internal/aa;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/internal/aa;->b:Lcom/crittercism/internal/ab;

    const/4 v1, 0x0

    iput v1, v0, Lcom/crittercism/internal/ab;->b:I

    new-instance v0, Lcom/crittercism/internal/ad;

    iget v1, p0, Lcom/crittercism/internal/ae;->d:I

    invoke-direct {v0, p0, v1}, Lcom/crittercism/internal/ad;-><init>(Lcom/crittercism/internal/ae;I)V

    goto :goto_0
.end method

.method public final c()Lcom/crittercism/internal/aa;
    .locals 1

    sget-object v0, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected final e()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/ae;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    sget-object v1, Lcom/crittercism/internal/ao;->d:Lcom/crittercism/internal/ao;

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->a(Lcom/crittercism/internal/aa;)V

    return-void
.end method
