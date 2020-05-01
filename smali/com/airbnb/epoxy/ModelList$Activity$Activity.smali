.class final Lcom/airbnb/epoxy/ModelList$Activity$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/ModelList$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Lo/BiConsumer<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private final e:Lcom/airbnb/epoxy/ModelList$Activity;


# direct methods
.method constructor <init>(Ljava/util/ListIterator;Lcom/airbnb/epoxy/ModelList$Activity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lo/BiConsumer<",
            "*>;>;",
            "Lcom/airbnb/epoxy/ModelList$Activity;",
            "II)V"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    .line 332
    iput-object p2, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->e:Lcom/airbnb/epoxy/ModelList$Activity;

    .line 333
    iput p3, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d:I

    .line 334
    iget p1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    return-void
.end method


# virtual methods
.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->b(Lo/BiConsumer;)V

    return-void
.end method

.method public b(Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 339
    iget-object p1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->e:Lcom/airbnb/epoxy/ModelList$Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/epoxy/ModelList$Activity;->e(Z)V

    .line 340
    iget p1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    return-void
.end method

.method public d()Lo/BiConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d:I

    if-lt v0, v1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public d(Lo/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Lo/BiConsumer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->e()Lo/BiConsumer;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d()Lo/BiConsumer;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    .line 371
    iget v1, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->a:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 379
    iget-object v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->e:Lcom/airbnb/epoxy/ModelList$Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/ModelList$Activity;->e(Z)V

    .line 380
    iget v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->c:I

    return-void
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 324
    check-cast p1, Lo/BiConsumer;

    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/ModelList$Activity$Activity;->d(Lo/BiConsumer;)V

    return-void
.end method
