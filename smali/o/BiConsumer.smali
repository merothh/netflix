.class public abstract Lo/BiConsumer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BiConsumer$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static b:J = -0x1L


# instance fields
.field private a:I

.field private c:J

.field d:Lo/OfPrimitive;

.field e:Z

.field private f:Z

.field private g:I

.field private h:Lo/OfPrimitive;

.field private i:Z

.field private j:Z

.field private k:Lo/BiConsumer$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 69
    sget-wide v0, Lo/BiConsumer;->b:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    sput-wide v2, Lo/BiConsumer;->b:J

    invoke-direct {p0, v0, v1}, Lo/BiConsumer;-><init>(J)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lo/BiConsumer;->f:Z

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lo/BiConsumer;->j:Z

    .line 65
    invoke-virtual {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-void
.end method

.method private static b(Lo/OfPrimitive;Lo/BiConsumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OfPrimitive;",
            "Lo/BiConsumer<",
            "*>;)I"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lo/OfPrimitive;->isBuildingModels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0, p1}, Lo/OfPrimitive;->getFirstIndexOfModelInBuildingList(Lo/BiConsumer;)I

    move-result p0

    return p0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lo/OfPrimitive;->getAdapter()Lo/OfLong;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo/OfLong;->e(Lo/BiConsumer;)I

    move-result p0

    return p0
.end method

.method static synthetic d(Lo/BiConsumer;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lo/BiConsumer;->i:Z

    return p1
.end method

.method static synthetic e(Lo/BiConsumer;I)I
    .locals 0

    .line 25
    iput p1, p0, Lo/BiConsumer;->g:I

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 309
    iget v0, p0, Lo/BiConsumer;->a:I

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lo/BiConsumer;->b()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final a(III)I
    .locals 1

    .line 521
    iget-object v0, p0, Lo/BiConsumer;->k:Lo/BiConsumer$Activity;

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0, p1, p2, p3}, Lo/BiConsumer$Activity;->a(III)I

    move-result p1

    return p1

    .line 525
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/BiConsumer;->e(III)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lo/BiConsumer;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lo/BiConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/BiConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lo/BiConsumer;->i()V

    .line 303
    iput p1, p0, Lo/BiConsumer;->a:I

    return-object p0
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 334
    invoke-virtual {p1, p0}, Lo/OfPrimitive;->addInternal(Lo/BiConsumer;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract b()I
.end method

.method public b(J)Lo/BiConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lo/BiConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lo/BiConsumer;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/BiConsumer;->h:Lo/OfPrimitive;

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lo/BiConsumer;->c:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lo/BiConsumer;->f:Z

    .line 203
    iput-wide p1, p0, Lo/BiConsumer;->c:J

    return-object p0

    .line 198
    :cond_2
    new-instance p1, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    const-string p2, "Cannot change a model\'s id after it has been added to the adapter."

    invoke-direct {p1, p2}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lo/BiConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 248
    invoke-static {p1}, Lo/IntToDoubleFunction;->e(Ljava/lang/CharSequence;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer$Activity;",
            ")",
            "Lo/BiConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lo/BiConsumer;->k:Lo/BiConsumer$Activity;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method c()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lo/BiConsumer;->f:Z

    return v0
.end method

.method public d()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lo/BiConsumer;->c:J

    return-wide v0
.end method

.method public d(FFIILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFIITT;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected final d(Ljava/lang/String;I)V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lo/BiConsumer;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BiConsumer;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Lo/BiConsumer;->g:I

    .line 462
    invoke-virtual {p0}, Lo/BiConsumer;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 463
    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/ImmutableModelException;

    invoke-direct {v0, p0, p1, p2}, Lcom/airbnb/epoxy/ImmutableModelException;-><init>(Lo/BiConsumer;Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()I
    .locals 1

    .line 86
    invoke-virtual {p0}, Lo/BiConsumer;->a()I

    move-result v0

    return v0
.end method

.method public e(III)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected final e(Lo/OfPrimitive;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 377
    invoke-virtual {p1, p0}, Lo/OfPrimitive;->isModelAddedMultipleTimes(Lo/BiConsumer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lo/BiConsumer;->h:Lo/OfPrimitive;

    if-nez v0, :cond_0

    .line 384
    iput-object p1, p0, Lo/BiConsumer;->h:Lo/OfPrimitive;

    .line 388
    invoke-virtual {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    iput v0, p0, Lo/BiConsumer;->g:I

    .line 394
    new-instance v0, Lo/BiConsumer$2;

    invoke-direct {v0, p0}, Lo/BiConsumer$2;-><init>(Lo/BiConsumer;)V

    invoke-virtual {p1, v0}, Lo/OfPrimitive;->addAfterInterceptorCallback(Lo/OfPrimitive$StateListAnimator;)V

    :cond_0
    return-void

    .line 378
    :cond_1
    new-instance v0, Lcom/airbnb/epoxy/IllegalEpoxyUsage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This model was already added to the controller at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p1, p0}, Lo/OfPrimitive;->getFirstIndexOfModelInBuildingList(Lo/BiConsumer;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/airbnb/epoxy/IllegalEpoxyUsage;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Controller cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 472
    :cond_0
    instance-of v1, p1, Lo/BiConsumer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 476
    :cond_1
    check-cast p1, Lo/BiConsumer;

    .line 478
    iget-wide v3, p0, Lo/BiConsumer;->c:J

    iget-wide v5, p1, Lo/BiConsumer;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 481
    :cond_2
    invoke-virtual {p0}, Lo/BiConsumer;->e()I

    move-result v1

    invoke-virtual {p1}, Lo/BiConsumer;->e()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 484
    :cond_3
    iget-boolean v1, p0, Lo/BiConsumer;->j:Z

    iget-boolean p1, p1, Lo/BiConsumer;->j:Z

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lo/BiConsumer;->h:Lo/OfPrimitive;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 489
    iget-wide v0, p0, Lo/BiConsumer;->c:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 490
    invoke-virtual {p0}, Lo/BiConsumer;->e()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 491
    iget-boolean v0, p0, Lo/BiConsumer;->j:Z

    add-int/2addr v1, v0

    return v1
.end method

.method protected final i()V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lo/BiConsumer;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/BiConsumer;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    new-instance v0, Lcom/airbnb/epoxy/ImmutableModelException;

    iget-object v1, p0, Lo/BiConsumer;->h:Lo/OfPrimitive;

    .line 429
    invoke-static {v1, p0}, Lo/BiConsumer;->b(Lo/OfPrimitive;Lo/BiConsumer;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/epoxy/ImmutableModelException;-><init>(Lo/BiConsumer;I)V

    throw v0

    .line 432
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/BiConsumer;->d:Lo/OfPrimitive;

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {v0, p0}, Lo/OfPrimitive;->setStagedModel(Lo/BiConsumer;)V

    :cond_2
    return-void
.end method

.method public j()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lo/BiConsumer;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/BiConsumer;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p0}, Lo/BiConsumer;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", shown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/BiConsumer;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", addedToAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/BiConsumer;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
