.class public Lcom/netflix/falkor/PQL;
.super Ljava/lang/Object;
.source "PQL.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EMPTY:Lcom/netflix/falkor/PQL;

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final keySegments:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/netflix/falkor/PQL;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/netflix/falkor/PQL;->EMPTY:Lcom/netflix/falkor/PQL;

    .line 23
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/PQL;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I
    .locals 1

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/netflix/falkor/PQL;->comparePaths(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I

    move-result v0

    return v0
.end method

.method public static varargs array([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 161
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collapse(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 573
    const/4 v3, 0x0

    .line 575
    const/4 v2, 0x0

    .line 588
    const/4 v1, 0x1

    .line 589
    const/4 v0, 0x0

    .line 591
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 707
    :cond_0
    return-void

    .line 595
    :cond_1
    new-instance v5, Lcom/netflix/falkor/PQL$1;

    invoke-direct {v5}, Lcom/netflix/falkor/PQL$1;-><init>()V

    invoke-static {p0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v7, v4

    .line 604
    :goto_0
    if-eqz v1, :cond_d

    .line 605
    const/4 v5, 0x0

    .line 606
    const/4 v4, 0x0

    .line 608
    const/4 v8, 0x0

    .line 609
    const/4 v1, 0x1

    .line 610
    const/4 v6, -0x1

    move v9, v4

    move v10, v8

    move v8, v1

    move v1, v6

    .line 611
    :goto_1
    if-ge v8, v7, :cond_a

    .line 613
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/falkor/PQL;

    .line 614
    iget-object v6, v2, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 615
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/netflix/falkor/PQL;

    .line 616
    iget-object v11, v3, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 618
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 619
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-ne v0, v12, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    if-le v0, v12, :cond_f

    .line 620
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 621
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v14, v1

    move v1, v0

    move v0, v14

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-gt v12, v13, :cond_3

    .line 622
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 623
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 624
    invoke-static {v12, v13}, Lcom/netflix/falkor/PQL;->segmentsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 625
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    .line 621
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    move v14, v0

    move-object v0, v4

    move v4, v14

    .line 631
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_8

    .line 632
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 634
    instance-of v1, v0, Ljava/util/List;

    if-nez v1, :cond_4

    .line 635
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 636
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-interface {v6, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 643
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 644
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 645
    :goto_5
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 647
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 648
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v12

    .line 651
    if-eqz v6, :cond_6

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v12, :cond_6

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 652
    const-string/jumbo v1, "to"

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :goto_6
    const/4 v5, 0x1

    .line 667
    const/4 v0, 0x1

    .line 668
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v4

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 640
    :cond_4
    check-cast v0, Ljava/util/List;

    move-object v5, v0

    goto :goto_4

    .line 644
    :cond_5
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_5

    .line 655
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 657
    const-string/jumbo v6, "from"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string/jumbo v1, "to"

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 663
    :cond_7
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 671
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    .line 672
    const/4 v5, 0x1

    .line 673
    const/4 v0, 0x1

    .line 674
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v1, v4

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 677
    :cond_9
    const/4 v0, 0x0

    .line 678
    const/4 v6, -0x1

    .line 680
    add-int/lit8 v1, v8, 0x1

    .line 681
    invoke-interface {p0, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 682
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v10, v8

    move v8, v1

    move v1, v6

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_1

    .line 688
    :cond_a
    if-nez v0, :cond_c

    .line 689
    invoke-interface {p0, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_b
    :goto_7
    add-int/lit8 v1, v9, 0x1

    move v7, v1

    move v1, v5

    .line 696
    goto/16 :goto_0

    .line 691
    :cond_c
    if-eqz v5, :cond_b

    .line 692
    invoke-interface {p0, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 699
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-lt v0, v7, :cond_e

    .line 700
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 699
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 704
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 705
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->sanitize(Ljava/util/List;)Ljava/util/List;

    goto :goto_9

    :cond_f
    move-object v0, v4

    move v4, v1

    goto/16 :goto_3
.end method

.method private static comparePaths(Lcom/netflix/falkor/PQL;Lcom/netflix/falkor/PQL;)I
    .locals 12

    .prologue
    .line 425
    iget-object v7, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 426
    iget-object v8, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 427
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 428
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 429
    sub-int v0, v9, v10

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 449
    if-eqz v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_3

    .line 467
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 473
    :cond_3
    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-ge v6, v9, :cond_10

    .line 477
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 478
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 479
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 480
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    .line 481
    :goto_4
    instance-of v0, v2, Ljava/util/List;

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 484
    :goto_5
    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    if-nez v0, :cond_15

    .line 485
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 486
    const/4 v3, 0x0

    move-object v5, v3

    .line 489
    :goto_6
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    if-nez v5, :cond_14

    .line 490
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 491
    const/4 v0, 0x0

    move-object v4, v0

    .line 494
    :goto_7
    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    .line 495
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 496
    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 501
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 502
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 503
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_13

    .line 504
    check-cast v0, Ljava/util/Map;

    .line 505
    const-string/jumbo v3, "from"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 508
    :goto_9
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 509
    check-cast v0, Ljava/util/Map;

    .line 510
    const-string/jumbo v1, "from"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 512
    :cond_4
    invoke-static {v3}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 513
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v6

    .line 515
    if-eqz v6, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 516
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v0, v6

    .line 517
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_8

    .line 518
    double-to-int v0, v0

    goto/16 :goto_0

    .line 480
    :cond_5
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_4

    .line 481
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 521
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 522
    if-nez v0, :cond_0

    .line 500
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 527
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 531
    :cond_a
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_d

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 532
    :goto_a
    if-eqz v0, :cond_b

    .line 533
    const-string/jumbo v1, "from"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 534
    if-nez v1, :cond_b

    .line 535
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 538
    :cond_b
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_e

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    .line 539
    :goto_b
    if-eqz v0, :cond_c

    .line 540
    const-string/jumbo v2, "from"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 541
    if-nez v2, :cond_c

    .line 542
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 545
    :cond_c
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 546
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    .line 548
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 549
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    goto/16 :goto_0

    .line 531
    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    .line 538
    :cond_e
    const/4 v0, 0x0

    goto :goto_b

    .line 552
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 553
    if-nez v0, :cond_0

    .line 476
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_3

    .line 558
    :cond_10
    if-le v9, v10, :cond_11

    .line 559
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 560
    :cond_11
    if-le v10, v9, :cond_12

    .line 561
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 563
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    move-object v3, v0

    goto/16 :goto_9

    :cond_14
    move-object v4, v0

    goto/16 :goto_7

    :cond_15
    move-object v5, v3

    goto/16 :goto_6
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->sanitize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static fromJsonArray(Lcom/google/gson/JsonArray;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 142
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public static fromList(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-static {p0}, Lcom/netflix/falkor/PQL;->sanitize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    if-nez p0, :cond_1

    .line 376
    if-nez p1, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static parseDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 333
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 349
    :goto_0
    return-object p0

    .line 336
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 338
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 341
    goto :goto_0

    .line 345
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 346
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 349
    :cond_2
    check-cast p0, Ljava/lang/Double;

    goto :goto_0
.end method

.method private static parseInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 359
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object p0, v0

    .line 371
    :goto_0
    return-object p0

    .line 362
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 364
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 367
    goto :goto_0

    .line 371
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static range(I)Ljava/util/Map;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Ljava/util/Map;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    const-string/jumbo v1, "from"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v1, "to"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-object v0
.end method

.method private static sanitize(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 72
    move v2, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 73
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 74
    instance-of v0, v1, Ljava/util/List;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 78
    check-cast v0, Ljava/util/List;

    .line 79
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 80
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 83
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 85
    invoke-static {v4}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    :cond_2
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    :cond_3
    return-object p0
.end method

.method private static sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 99
    check-cast v0, Ljava/util/List;

    .line 100
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 101
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    .line 105
    :goto_0
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 106
    check-cast v0, Ljava/util/Map;

    .line 107
    const-string/jumbo v2, "from"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    if-nez v2, :cond_2

    .line 109
    const-string/jumbo v2, "from"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    :goto_1
    const-string/jumbo v2, "to"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 121
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 122
    const-string/jumbo v3, "to"

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    :goto_2
    return-object v1

    .line 116
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 117
    const-string/jumbo v3, "from"

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_3
    instance-of v0, v1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, p0

    goto :goto_0
.end method

.method private static segmentsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/falkor/PQL;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 417
    :goto_0
    return v0

    .line 398
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 399
    :goto_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 400
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v4, "to"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "to"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "to"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/falkor/PQL;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "from"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "from"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/falkor/PQL;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 401
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 398
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 399
    goto :goto_2

    .line 404
    :cond_3
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/List;

    .line 405
    :goto_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/List;

    .line 407
    :goto_4
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 409
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->segmentsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_4
    move-object p0, v2

    .line 404
    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 405
    goto :goto_4

    .line 412
    :cond_6
    if-gez v0, :cond_7

    move v0, v3

    .line 413
    goto/16 :goto_0

    .line 417
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public addPathSegments(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    iget-object v1, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public append(Ljava/lang/Object;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-static {p1}, Lcom/netflix/falkor/PQL;->sanitizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 716
    new-instance v0, Lcom/netflix/falkor/PQL;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 722
    if-ne p0, p1, :cond_1

    .line 742
    :cond_0
    :goto_0
    return v0

    .line 725
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 726
    goto :goto_0

    .line 728
    :cond_2
    instance-of v2, p1, Lcom/netflix/falkor/PQL;

    if-nez v2, :cond_3

    move v0, v1

    .line 729
    goto :goto_0

    .line 731
    :cond_3
    check-cast p1, Lcom/netflix/falkor/PQL;

    .line 732
    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-nez v2, :cond_4

    .line 733
    iget-object v2, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    .line 734
    goto :goto_0

    .line 736
    :cond_4
    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    iget-object v3, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 738
    goto :goto_0
.end method

.method public explode()Ljava/util/LinkedHashSet;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 194
    iget-object v10, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    .line 195
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v12, v0, [Ljava/lang/Integer;

    .line 202
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v13, v0, [Ljava/lang/Integer;

    .line 203
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v14, v0, [Ljava/lang/Integer;

    .line 211
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-direct {v0, v10}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    .line 322
    :goto_0
    return-object v0

    .line 217
    :cond_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move v1, v2

    .line 219
    :goto_1
    if-gt v1, v4, :cond_20

    .line 220
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v1

    .line 222
    aput-object v3, v13, v1

    .line 223
    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v1

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 223
    goto :goto_2

    :cond_2
    move v0, v2

    .line 309
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v9

    .line 312
    :cond_3
    aget-object v0, v13, v9

    if-eqz v0, :cond_1b

    aget-object v0, v13, v9

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 313
    aget-object v0, v13, v9

    aget-object v0, v13, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v9

    :goto_4
    move v0, v9

    move-object v1, v5

    .line 226
    :goto_5
    if-ltz v0, :cond_1c

    :goto_6
    move v8, v0

    move-object v5, v1

    .line 229
    :goto_7
    if-gt v8, v4, :cond_a

    .line 230
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 232
    check-cast v0, Ljava/util/List;

    aget-object v1, v12, v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 235
    :goto_8
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 236
    :goto_9
    if-eqz v6, :cond_5

    const-string/jumbo v0, "to"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    .line 238
    :goto_a
    if-eqz v5, :cond_9

    .line 240
    const-string/jumbo v0, "from"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "from"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 241
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v1, v9, :cond_7

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid range in path.  Range to value is smaller than from value ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v6, v3

    .line 235
    goto :goto_9

    :cond_5
    move-object v5, v3

    .line 236
    goto :goto_a

    :cond_6
    move v0, v2

    .line 240
    goto :goto_b

    .line 244
    :cond_7
    aget-object v1, v13, v8

    if-nez v1, :cond_8

    .line 245
    aput-object v0, v13, v8

    .line 248
    :cond_8
    aget-object v0, v13, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v8

    .line 256
    :goto_c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-object v5, v6

    goto/16 :goto_7

    .line 252
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    aput-object v0, v11, v8

    goto :goto_c

    .line 259
    :cond_a
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-virtual {v11}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 262
    aget-object v0, v13, v4

    if-eqz v0, :cond_f

    .line 263
    aget-object v0, v13, v4

    aget-object v0, v13, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v4

    .line 264
    if-eqz v5, :cond_b

    aget-object v0, v13, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v0, "to"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_b

    .line 265
    aput-object v3, v13, v4

    .line 266
    aget-object v0, v12, v4

    aget-object v0, v12, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v4

    .line 273
    :cond_b
    :goto_d
    aget-object v0, v12, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v1, v14, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1d

    .line 274
    aget-object v0, v14, v4

    aput-object v0, v12, v4

    move v9, v4

    .line 280
    :goto_e
    if-ltz v9, :cond_15

    .line 281
    aget-object v0, v12, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 282
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 283
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_c

    check-cast v0, Ljava/util/List;

    aget-object v1, v12, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 284
    :cond_c
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 285
    :goto_f
    if-eqz v1, :cond_11

    const-string/jumbo v0, "to"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 286
    :goto_10
    if-eqz v1, :cond_12

    const-string/jumbo v0, "from"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    .line 287
    :goto_11
    aget-object v0, v14, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v8, v0, :cond_15

    aget-object v0, v13, v9

    if-eqz v0, :cond_d

    aget-object v0, v13, v9

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 288
    :cond_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v9

    .line 290
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 291
    instance-of v8, v0, Ljava/util/List;

    if-eqz v8, :cond_e

    check-cast v0, Ljava/util/List;

    aget-object v8, v12, v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 292
    :cond_e
    if-eqz v6, :cond_14

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_13
    aput-object v0, v13, v9

    .line 298
    add-int/lit8 v9, v9, -0x1

    .line 299
    goto :goto_e

    .line 270
    :cond_f
    aget-object v0, v12, v4

    aget-object v0, v12, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v4

    goto/16 :goto_d

    :cond_10
    move-object v1, v3

    .line 284
    goto :goto_f

    :cond_11
    move-object v6, v3

    .line 285
    goto :goto_10

    :cond_12
    move-object v1, v3

    .line 286
    goto :goto_11

    :cond_13
    move v0, v2

    .line 292
    goto :goto_12

    :cond_14
    move-object v0, v3

    goto :goto_13

    .line 302
    :cond_15
    if-ltz v9, :cond_1f

    .line 303
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 304
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_16

    check-cast v0, Ljava/util/List;

    aget-object v1, v12, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 305
    :goto_14
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_17

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v8, v0

    .line 306
    :goto_15
    if-eqz v8, :cond_18

    const-string/jumbo v0, "to"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 307
    :goto_16
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_19

    const-string/jumbo v0, "from"

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 308
    :goto_17
    if-eqz v6, :cond_3

    .line 309
    aget-object v1, v13, v9

    if-nez v1, :cond_1a

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    :cond_16
    move-object v1, v0

    .line 304
    goto :goto_14

    :cond_17
    move-object v8, v3

    .line 305
    goto :goto_15

    :cond_18
    move-object v6, v3

    .line 306
    goto :goto_16

    :cond_19
    move-object v0, v3

    .line 307
    goto :goto_17

    .line 309
    :cond_1a
    aget-object v0, v13, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    .line 316
    :cond_1b
    aput-object v3, v13, v9

    .line 317
    aget-object v0, v12, v9

    aget-object v0, v12, v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v9

    goto/16 :goto_4

    :cond_1c
    move-object v0, v7

    .line 322
    goto/16 :goto_0

    :cond_1d
    move v0, v4

    move-object v1, v5

    goto/16 :goto_6

    :cond_1e
    move-object v1, v0

    goto/16 :goto_8

    :cond_1f
    move v0, v9

    move-object v1, v5

    goto/16 :goto_5

    :cond_20
    move v0, v2

    move-object v1, v3

    goto/16 :goto_5
.end method

.method public getKeySegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    return-object v0
.end method

.method public getNumKeySegments()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/netflix/falkor/PQL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 41
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/IterableBuilder;->fromList(Ljava/util/List;)Lcom/netflix/falkor/IterableBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/IterableBuilder;->toList()Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public rewrite(Lcom/netflix/falkor/PQL;I)Lcom/netflix/falkor/PQL;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Lcom/netflix/falkor/PQL;

    invoke-direct {v1, v0}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public slice(I)Lcom/netflix/falkor/PQL;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, p1

    .line 153
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Lcom/netflix/falkor/PQL;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/PQL;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 711
    sget-object v0, Lcom/netflix/falkor/PQL;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/netflix/falkor/PQL;->keySegments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
