.class public final Lcom/crittercism/internal/ai;
.super Lcom/crittercism/internal/ag;


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crittercism/internal/ag;-><init>(Lcom/crittercism/internal/aa;)V

    return-void
.end method


# virtual methods
.method protected final g()Lcom/crittercism/internal/aa;
    .locals 2

    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/crittercism/internal/ae;

    invoke-direct {v0, p0}, Lcom/crittercism/internal/ae;-><init>(Lcom/crittercism/internal/aa;)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/ag;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/crittercism/internal/ag;->e:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/crittercism/internal/ac;

    iget v1, p0, Lcom/crittercism/internal/ag;->e:I

    invoke-direct {v0, p0, v1}, Lcom/crittercism/internal/ac;-><init>(Lcom/crittercism/internal/aa;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-virtual {p0}, Lcom/crittercism/internal/ai;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/crittercism/internal/ah;->b(I)V

    iget-object v0, p0, Lcom/crittercism/internal/aa;->a:Lcom/crittercism/internal/ah;

    invoke-interface {v0}, Lcom/crittercism/internal/ah;->b()Lcom/crittercism/internal/aa;

    move-result-object v0

    goto :goto_0
.end method
