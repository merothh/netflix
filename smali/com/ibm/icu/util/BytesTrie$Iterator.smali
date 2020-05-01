.class public final Lcom/ibm/icu/util/BytesTrie$Iterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/ibm/icu/util/BytesTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private bytes_:[B

.field private entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([BIII)V
    .locals 1

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    .line 527
    iput-object p1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    .line 528
    iput p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->initialPos_:I

    iput p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 529
    iput p3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    .line 530
    iput p4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    .line 531
    new-instance p1, Lcom/ibm/icu/util/BytesTrie$Entry;

    iget p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x20

    :goto_0
    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/ibm/icu/util/BytesTrie$Entry;-><init>(ILcom/ibm/icu/util/BytesTrie$1;)V

    iput-object p1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    .line 532
    iget p1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    if-ltz p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 536
    iget p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez p2, :cond_1

    if-le p1, p2, :cond_1

    move p1, p2

    .line 539
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object p3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    iget p4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    invoke-static {p2, p3, p4, p1}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V

    .line 540
    iget p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 541
    iget p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    :cond_2
    return-void
.end method

.method synthetic constructor <init>([BIIILcom/ibm/icu/util/BytesTrie$1;)V
    .locals 0

    .line 525
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ibm/icu/util/BytesTrie$Iterator;-><init>([BIII)V

    return-void
.end method

.method private branchNext(II)I
    .locals 10

    :goto_0
    const/4 v0, 0x5

    const/16 v1, 0x20

    if-le p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 667
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v2, p1}, Lcom/ibm/icu/util/BytesTrie;->access$1200([BI)I

    move-result v2

    int-to-long v2, v2

    shl-long v1, v2, v1

    shr-int/lit8 v3, p2, 0x1

    sub-int/2addr p2, v3

    shl-int/lit8 p2, p2, 0x10

    int-to-long v4, p2

    or-long/2addr v1, v4

    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {p2}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result p2

    int-to-long v4, p2

    or-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {p2, p1}, Lcom/ibm/icu/util/BytesTrie;->access$1300([BI)I

    move-result p1

    move p2, v3

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, v0, p1

    add-int/lit8 v3, v2, 0x1

    .line 675
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v2, v0, 0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 677
    :goto_1
    iget-object v5, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v6, v0, 0x1

    invoke-static {v5, v3, v6}, Lcom/ibm/icu/util/BytesTrie;->access$900([BII)I

    move-result v5

    .line 678
    invoke-static {v3, v0}, Lcom/ibm/icu/util/BytesTrie;->access$1100(II)I

    move-result v0

    .line 679
    iget-object v3, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, v0

    shl-long/2addr v6, v1

    sub-int/2addr p2, v4

    shl-int/lit8 p2, p2, 0x10

    int-to-long v8, p2

    or-long/2addr v6, v8

    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {p2}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result p2

    int-to-long v8, p2

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {p2, p1}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$800(Lcom/ibm/icu/util/BytesTrie$Entry;B)V

    if-eqz v2, :cond_2

    const/4 p1, -0x1

    .line 682
    iput p1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 683
    iget-object p2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iput v5, p2, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    return p1

    :cond_2
    add-int/2addr v0, v5

    return v0
.end method

.method private truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;
    .locals 2

    const/4 v0, -0x1

    .line 658
    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 659
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iput v0, v1, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 569
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Lcom/ibm/icu/util/BytesTrie$Entry;
    .locals 7

    .line 584
    iget v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    const/16 v1, 0x20

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-gez v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v0, v4

    shr-long/2addr v4, v1

    long-to-int v5, v4

    .line 594
    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    const v6, 0xffff

    and-int/2addr v6, v0

    invoke-static {v4, v6}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$700(Lcom/ibm/icu/util/BytesTrie$Entry;I)V

    ushr-int/2addr v0, v2

    if-le v0, v3, :cond_0

    .line 597
    invoke-direct {p0, v5, v0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v0

    if-gez v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    return-object v0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v5

    invoke-static {v0, v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$800(Lcom/ibm/icu/util/BytesTrie$Entry;B)V

    move v0, v6

    goto :goto_0

    .line 587
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 605
    :cond_2
    :goto_0
    iget v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->remainingMatchLength_:I

    if-ltz v4, :cond_3

    .line 608
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0

    .line 611
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v1, :cond_7

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 615
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    shr-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v4}, Lcom/ibm/icu/util/BytesTrie;->access$900([BII)I

    move-result v2

    iput v2, v1, Lcom/ibm/icu/util/BytesTrie$Entry;->value:I

    if-nez v3, :cond_6

    .line 616
    iget v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v1}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v1

    iget v2, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v1, v2, :cond_5

    goto :goto_3

    .line 619
    :cond_5
    invoke-static {v5, v0}, Lcom/ibm/icu/util/BytesTrie;->access$1100(II)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, -0x1

    .line 617
    iput v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->pos_:I

    .line 621
    :goto_4
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    return-object v0

    .line 623
    :cond_7
    iget v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v4

    iget v6, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-ne v4, v6, :cond_8

    .line 624
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0

    :cond_8
    if-ge v0, v2, :cond_a

    if-nez v0, :cond_9

    .line 628
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    add-int/lit8 v4, v5, 0x1

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    add-int/2addr v0, v3

    .line 630
    invoke-direct {p0, v4, v0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->branchNext(II)I

    move-result v0

    if-gez v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    return-object v0

    :cond_a
    add-int/lit8 v0, v0, -0x10

    add-int/2addr v0, v3

    .line 637
    iget v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-lez v4, :cond_b

    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    invoke-static {v4}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v4

    add-int/2addr v4, v0

    iget v6, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->maxLength_:I

    if-le v4, v6, :cond_b

    .line 638
    iget-object v0, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v1, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$1000(Lcom/ibm/icu/util/BytesTrie$Entry;)I

    move-result v2

    sub-int/2addr v6, v2

    invoke-static {v0, v1, v5, v6}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V

    .line 639
    invoke-direct {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->truncateAndStop()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0

    .line 641
    :cond_b
    iget-object v4, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->entry_:Lcom/ibm/icu/util/BytesTrie$Entry;

    iget-object v6, p0, Lcom/ibm/icu/util/BytesTrie$Iterator;->bytes_:[B

    invoke-static {v4, v6, v5, v0}, Lcom/ibm/icu/util/BytesTrie$Entry;->access$600(Lcom/ibm/icu/util/BytesTrie$Entry;[BII)V

    add-int/2addr v5, v0

    move v0, v5

    goto/16 :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/ibm/icu/util/BytesTrie$Iterator;->next()Lcom/ibm/icu/util/BytesTrie$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 654
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
