.class Lcom/ibm/icu/impl/TextTrieMap$Node;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;>;"
        }
    .end annotation
.end field

.field private _text:[C

.field private _values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ibm/icu/impl/TextTrieMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 303
    const-class v0, Lcom/ibm/icu/impl/TextTrieMap;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;Lcom/ibm/icu/impl/TextTrieMap$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;)V

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/List<",
            "TV;>;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;>;)V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    .line 313
    iput-object p3, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 314
    iput-object p4, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/TextTrieMap$Node;)Ljava/util/List;
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    return-object p0
.end method

.method private add([CILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CITV;)V"
        }
    .end annotation

    .line 402
    array-length v0, p1

    if-ne v0, p2, :cond_0

    .line 403
    iget-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 409
    new-instance v0, Lcom/ibm/icu/impl/TextTrieMap$Node;

    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/TextTrieMap;->access$400([CI)[C

    move-result-object p1

    invoke-direct {p0, v1, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, v2, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    .line 410
    iget-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 415
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 416
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 417
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 418
    aget-char v3, p1, p2

    iget-object v4, v2, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v5, 0x0

    aget-char v6, v4, v5

    if-ge v3, v6, :cond_3

    .line 419
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_3
    aget-char v3, p1, p2

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_2

    .line 423
    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->lenMatches([CI)I

    move-result v0

    .line 424
    iget-object v1, v2, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v1, v1

    if-ne v0, v1, :cond_4

    add-int/2addr p2, v0

    .line 426
    invoke-direct {v2, p1, p2, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    goto :goto_0

    .line 429
    :cond_4
    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/TextTrieMap$Node;->split(I)V

    add-int/2addr p2, v0

    .line 430
    invoke-direct {v2, p1, p2, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    :goto_0
    return-void

    .line 436
    :cond_5
    :goto_1
    new-instance v2, Lcom/ibm/icu/impl/TextTrieMap$Node;

    iget-object v3, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/TextTrieMap;->access$400([CI)[C

    move-result-object p1

    invoke-direct {p0, v1, p3}, Lcom/ibm/icu/impl/TextTrieMap$Node;->addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v2, v3, p1, p2, v1}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private addValue(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;TV;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 485
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 487
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private lenMatches([CI)I
    .locals 4

    .line 458
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 459
    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v2, v1

    if-ge v2, v0, :cond_0

    array-length v0, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 462
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v2, v2, v1

    add-int v3, p2, v1

    aget-char v3, p1, v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private matchFollowing(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 442
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 443
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    iget-object v4, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v4, v1

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method private split(I)V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/TextTrieMap;->access$400([CI)[C

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/ibm/icu/impl/TextTrieMap;->access$500([CII)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    .line 476
    new-instance p1, Lcom/ibm/icu/impl/TextTrieMap$Node;

    iget-object v1, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->this$0:Lcom/ibm/icu/impl/TextTrieMap;

    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    iget-object v3, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-direct {p1, v1, v0, v2, v3}, Lcom/ibm/icu/impl/TextTrieMap$Node;-><init>(Lcom/ibm/icu/impl/TextTrieMap;[CLjava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    .line 479
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    .line 480
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/TextTrieMap$CharIterator;",
            "TV;)V"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/TextTrieMap;->access$300(Ljava/lang/CharSequence;)[C

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ibm/icu/impl/TextTrieMap$Node;->add([CILjava/lang/Object;)V

    return-void
.end method

.method public charCount()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public findMatch(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;)Lcom/ibm/icu/impl/TextTrieMap$Node;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/TextTrieMap$CharIterator;",
            ")",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 355
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v3, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    const/4 v6, 0x0

    aget-char v5, v5, v6

    if-ge v4, v5, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    iget-object v5, v3, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v5, v5, v6

    if-ne v4, v5, :cond_2

    .line 361
    invoke-direct {v3, p1}, Lcom/ibm/icu/impl/TextTrieMap$Node;->matchFollowing(Lcom/ibm/icu/impl/TextTrieMap$CharIterator;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v1, v3

    :cond_4
    :goto_0
    return-object v1
.end method

.method public hasChildFor(C)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 322
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 323
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 324
    iget-object v2, v2, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v3, v2, v0

    if-ge p1, v3, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    aget-char v2, v2, v0

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public takeStep(CILcom/ibm/icu/impl/TextTrieMap$Node$StepResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CI",
            "Lcom/ibm/icu/impl/TextTrieMap<",
            "TV;>.Node.StepResult;)V"
        }
    .end annotation

    .line 376
    invoke-virtual {p0}, Lcom/ibm/icu/impl/TextTrieMap$Node;->charCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 378
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 379
    iget-object v2, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 380
    iget-object v3, v2, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v4, v3, p2

    if-ge p1, v4, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    aget-char v3, v3, p2

    if-ne p1, v3, :cond_1

    .line 383
    iput-object v2, p3, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->node:Lcom/ibm/icu/impl/TextTrieMap$Node;

    .line 384
    iput v1, p3, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->offset:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_text:[C

    aget-char v0, v0, p2

    if-ne v0, p1, :cond_3

    .line 391
    iput-object p0, p3, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->node:Lcom/ibm/icu/impl/TextTrieMap$Node;

    add-int/2addr p2, v1

    .line 392
    iput p2, p3, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->offset:I

    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 396
    iput-object p1, p3, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->node:Lcom/ibm/icu/impl/TextTrieMap$Node;

    const/4 p1, -0x1

    .line 397
    iput p1, p3, Lcom/ibm/icu/impl/TextTrieMap$Node$StepResult;->offset:I

    return-void
.end method

.method public values()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/ibm/icu/impl/TextTrieMap$Node;->_values:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
