.class public Lo/SearchIndexableResource;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 300
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 301
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 302
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 306
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 307
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 308
    invoke-static {v2}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 310
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 311
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 312
    invoke-static {v4}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    :cond_1
    invoke-static {v2}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 245
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/gson/JsonArray;)Lo/TextInputTimePickerView;
    .locals 9

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 42
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    const/4 v4, 0x0

    .line 47
    :goto_1
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 48
    invoke-virtual {p0, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 52
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "to"

    .line 53
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "from"

    .line 55
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 57
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query.fromJsonArray: unknown json "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    :cond_6
    invoke-static {v0}, Lo/SearchIndexableResource;->e(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo/PrinterDiscoverySession;)Lo/TextInputTimePickerView;
    .locals 2

    .line 72
    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->j()Lo/RapporEncoder;

    move-result-object p0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lo/RapporEncoder;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DiskWriteViolation;

    .line 76
    invoke-virtual {v1}, Lo/DiskWriteViolation;->c()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0}, Lo/RapporEncoder;->c()Lo/RapporEncoder;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lo/RapporEncoder;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {v0}, Lo/SearchIndexableResource;->e(Ljava/util/List;)Lo/TextInputTimePickerView;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b([Ljava/lang/Object;)Lo/TextInputTimePickerView;
    .locals 1

    .line 30
    new-instance v0, Lo/FontsContract;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lo/SearchIndexableResource;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic c(Lo/TextInputTimePickerView;Lo/TextInputTimePickerView;)I
    .locals 0

    .line 26
    invoke-static {p0, p1}, Lo/SearchIndexableResource;->d(Lo/TextInputTimePickerView;Lo/TextInputTimePickerView;)I

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .line 354
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 358
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 364
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 389
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 390
    :goto_0
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    const-string v4, "to"

    .line 391
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 392
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "from"

    .line 393
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lo/SearchIndexableResource;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 397
    :cond_3
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/List;

    goto :goto_2

    :cond_4
    move-object p0, v2

    .line 398
    :goto_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_5
    if-eqz p0, :cond_7

    if-eqz v2, :cond_7

    .line 400
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 402
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_6

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lo/SearchIndexableResource;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    if-gez p1, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Lo/TextInputTimePickerView;Lo/TextInputTimePickerView;)I
    .locals 12

    .line 420
    invoke-interface {p0}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p0

    .line 421
    invoke-interface {p1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object p1

    .line 422
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v2, v0, v1

    .line 425
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 462
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 463
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 465
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 468
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v3, v0, :cond_14

    .line 472
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 473
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 474
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 475
    instance-of v8, v7, Ljava/util/List;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v8, v9

    .line 476
    :goto_3
    instance-of v10, v6, Ljava/util/List;

    if-eqz v10, :cond_4

    move-object v10, v6

    check-cast v10, Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v10, v9

    :goto_4
    if-eqz v8, :cond_5

    .line 479
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v5, :cond_5

    if-nez v10, :cond_5

    .line 480
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v9

    :cond_5
    if-eqz v10, :cond_6

    .line 484
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v5, :cond_6

    if-nez v8, :cond_6

    .line 485
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v9

    :cond_6
    const-string v5, "from"

    if-eqz v8, :cond_d

    if-eqz v10, :cond_d

    .line 490
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    if-eqz p0, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x0

    .line 494
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_c

    .line 495
    invoke-interface {v8, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 496
    invoke-interface {v10, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 497
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 498
    check-cast p1, Ljava/util/Map;

    .line 499
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 502
    :cond_8
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 503
    check-cast v0, Ljava/util/Map;

    .line 504
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 506
    :cond_9
    invoke-static {p1}, Lo/SearchIndexableResource;->d(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 507
    invoke-static {v0}, Lo/SearchIndexableResource;->d(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 509
    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 510
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v0, v3

    const-wide/16 v3, 0x0

    cmpl-double p1, v0, v3

    if-eqz p1, :cond_b

    double-to-int p0, v0

    return p0

    .line 515
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_b

    return p1

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_c
    return v2

    .line 525
    :cond_d
    instance-of v8, v7, Ljava/util/Map;

    if-eqz v8, :cond_e

    move-object v8, v7

    check-cast v8, Ljava/util/Map;

    goto :goto_6

    :cond_e
    move-object v8, v9

    :goto_6
    if-eqz v8, :cond_f

    .line 527
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_f

    .line 529
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 532
    :cond_f
    instance-of v8, v6, Ljava/util/Map;

    if-eqz v8, :cond_10

    move-object v9, v6

    check-cast v9, Ljava/util/Map;

    :cond_10
    if-eqz v9, :cond_11

    .line 534
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_11

    .line 536
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 539
    :cond_11
    invoke-static {v7}, Lo/SearchIndexableResource;->d(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v5

    .line 540
    invoke-static {v6}, Lo/SearchIndexableResource;->d(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v8

    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    .line 542
    invoke-virtual {v5, v8}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 543
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    .line 545
    :cond_12
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_13

    return v5

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_14
    if-le v0, v1, :cond_15

    return v5

    :cond_15
    if-le v1, v0, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    return v2
.end method

.method private static d(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4

    .line 330
    instance-of v0, p0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 339
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 340
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 343
    :cond_2
    check-cast p0, Ljava/lang/Double;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public static d(I)Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-static {v0, p0}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 85
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    .line 107
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-void

    .line 111
    :cond_0
    new-instance v2, Lo/SearchIndexableResource$1;

    invoke-direct {v2}, Lo/SearchIndexableResource$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v1

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-eqz v1, :cond_f

    move-object v12, v6

    move-object v11, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, -0x1

    :goto_1
    if-ge v6, v5, :cond_c

    .line 128
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lo/TextInputTimePickerView;

    .line 129
    invoke-interface {v12}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v8

    .line 130
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/TextInputTimePickerView;

    .line 131
    invoke-interface {v11}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x64

    .line 133
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 134
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 136
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    move-object v15, v1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v4, :cond_2

    .line 137
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 138
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 139
    invoke-static {v1, v3}, Lo/SearchIndexableResource;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move v13, v2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 147
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 149
    instance-of v2, v1, Ljava/util/List;

    if-nez v2, :cond_3

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v8, v13, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 153
    :cond_3
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 154
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    goto :goto_3

    .line 158
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 162
    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 163
    :goto_4
    invoke-static {v1}, Lo/SearchIndexableResource;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 165
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 166
    invoke-static {v8}, Lo/SearchIndexableResource;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    const-string v15, "to"

    if-eqz v3, :cond_7

    .line 169
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_7

    if-eqz v9, :cond_7

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 170
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    move/from16 v17, v7

    :goto_5
    if-eqz v1, :cond_8

    if-eqz v9, :cond_8

    .line 173
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 174
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v7, "from"

    .line 175
    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-interface {v3, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 182
    :cond_8
    instance-of v1, v8, Ljava/util/List;

    if-eqz v1, :cond_9

    .line 183
    check-cast v8, Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 185
    :cond_9
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    move/from16 v17, v7

    .line 194
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_b

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v17

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v1, v6, 0x1

    .line 203
    invoke-interface {v0, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move v7, v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v13, -0x1

    move v6, v1

    goto/16 :goto_1

    :cond_c
    if-nez v8, :cond_d

    .line 211
    invoke-interface {v0, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    if-eqz v9, :cond_e

    .line 213
    invoke-interface {v0, v10, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_7
    add-int/lit8 v5, v10, 0x1

    move v1, v9

    move-object v7, v11

    move-object v6, v12

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 220
    :cond_f
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8
    if-lt v1, v5, :cond_10

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 225
    :cond_10
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TextInputTimePickerView;

    .line 226
    invoke-interface {v1}, Lo/TextInputTimePickerView;->d()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/SearchIndexableResource;->a(Ljava/util/List;)Ljava/util/List;

    goto :goto_9

    :cond_11
    return-void
.end method

.method public static e(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lo/TextInputTimePickerView;",
            ">;)I"
        }
    .end annotation

    .line 238
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TextInputTimePickerView;

    .line 239
    invoke-interface {v1}, Lo/TextInputTimePickerView;->e()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 262
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 265
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 269
    :cond_0
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 270
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-string v2, "from"

    .line 271
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_1
    instance-of v1, v3, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 281
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string v1, "to"

    .line 284
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 285
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 286
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 288
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 290
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_6

    if-nez p0, :cond_5

    const-string v0, "null"

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->b:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Query key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lo/SpinnerAdapter;->a(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/Throwable;)V

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_2
    return-object p0
.end method

.method public static e(II)Ljava/util/Map;
    .locals 2

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "from"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "to"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static e(Ljava/util/List;)Lo/TextInputTimePickerView;
    .locals 1

    .line 35
    new-instance v0, Lo/FontsContract;

    invoke-static {p0}, Lo/SearchIndexableResource;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/FontsContract;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 378
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
