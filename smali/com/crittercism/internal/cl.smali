.class public final Lcom/crittercism/internal/cl;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/cl;->a:I

    sget-object v0, Lcom/crittercism/internal/ck;->a:Lcom/crittercism/internal/ck;

    invoke-virtual {v0}, Lcom/crittercism/internal/ck;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    iput p1, p0, Lcom/crittercism/internal/cl;->a:I

    iput p2, p0, Lcom/crittercism/internal/cl;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/cl;->a:I

    sget-object v0, Lcom/crittercism/internal/ck;->a:Lcom/crittercism/internal/ck;

    invoke-virtual {v0}, Lcom/crittercism/internal/ck;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/crittercism/internal/cm;->a(Ljava/lang/Throwable;)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->a:I

    iget v0, p0, Lcom/crittercism/internal/cl;->a:I

    sget v1, Lcom/crittercism/internal/cm;->d:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/crittercism/internal/ck;->a(Ljava/lang/Throwable;)Lcom/crittercism/internal/ck;

    move-result-object v0

    iget v0, v0, Lcom/crittercism/internal/ck;->C:I

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/crittercism/internal/cl;->b:I

    goto :goto_0
.end method
