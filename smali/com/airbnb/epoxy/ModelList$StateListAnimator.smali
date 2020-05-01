.class Lcom/airbnb/epoxy/ModelList$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/ModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/BiConsumer<",
        "*>;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic c:Lcom/airbnb/epoxy/ModelList;

.field d:I

.field e:I


# direct methods
.method private constructor <init>(Lcom/airbnb/epoxy/ModelList;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 186
    iput p1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->a:I

    .line 187
    iget-object p1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    invoke-static {p1}, Lcom/airbnb/epoxy/ModelList;->d(Lcom/airbnb/epoxy/ModelList;)I

    move-result p1

    iput p1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/epoxy/ModelList;Lcom/airbnb/epoxy/ModelList$3;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/ModelList$StateListAnimator;-><init>(Lcom/airbnb/epoxy/ModelList;)V

    return-void
.end method


# virtual methods
.method public d()Lo/BiConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->e()V

    .line 196
    iget v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->d:I

    add-int/lit8 v1, v0, 0x1

    .line 197
    iput v1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->d:I

    .line 198
    iput v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->a:I

    .line 199
    iget-object v1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    invoke-virtual {v1, v0}, Lcom/airbnb/epoxy/ModelList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    return-object v0
.end method

.method final e()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    invoke-static {v0}, Lcom/airbnb/epoxy/ModelList;->b(Lcom/airbnb/epoxy/ModelList;)I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 190
    iget v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->d:I

    iget-object v1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    invoke-virtual {v1}, Lcom/airbnb/epoxy/ModelList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->d()Lo/BiConsumer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->a:I

    if-ltz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->e()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->a:I

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/ModelList;->b(I)Lo/BiConsumer;

    .line 210
    iget v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->a:I

    iput v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->d:I

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->a:I

    .line 212
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->c:Lcom/airbnb/epoxy/ModelList;

    invoke-static {v0}, Lcom/airbnb/epoxy/ModelList;->e(Lcom/airbnb/epoxy/ModelList;)I

    move-result v0

    iput v0, p0, Lcom/airbnb/epoxy/ModelList$StateListAnimator;->e:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 214
    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
