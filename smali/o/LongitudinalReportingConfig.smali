.class public final Lo/LongitudinalReportingConfig;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final a(Lo/DifferentialPrivacyConfig;Lo/PrintDocumentInfo;)Lo/DifferentialPrivacyConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;",
            "Lo/PrintDocumentInfo;",
            ")",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string v2, "$expires"

    invoke-interface {p0, v2}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lo/DifferentialPrivacyConfig;->e(J)Lo/DifferentialPrivacyConfig;

    .line 175
    :cond_0
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string v2, "$timestamp"

    invoke-interface {p0, v2}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lo/DifferentialPrivacyConfig;->e(J)Lo/DifferentialPrivacyConfig;

    .line 176
    :cond_1
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->i()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, "$size"

    invoke-interface {p0, v0}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-interface {v0, p1}, Lo/DifferentialPrivacyConfig;->c(Ljava/lang/Number;)Lo/DifferentialPrivacyConfig;

    :cond_2
    return-object p0
.end method

.method private static final a(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/RecommendationInfo;",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;Z)",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 56
    instance-of v0, p0, Lo/PrintJob;

    if-eqz v0, :cond_3

    .line 57
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    .line 58
    check-cast p0, Ljava/util/Map;

    .line 194
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    if-eqz p2, :cond_1

    .line 59
    instance-of v2, v0, Lo/PrintJobId;

    if-nez v2, :cond_0

    .line 60
    :cond_1
    invoke-interface {p1, v1}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    .line 61
    invoke-static {v0, p1, p2}, Lo/LongitudinalReportingConfig;->a(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto/16 :goto_3

    .line 66
    :cond_3
    instance-of v0, p0, Lo/VolumePreference;

    if-eqz v0, :cond_5

    .line 67
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->g()Lo/DifferentialPrivacyConfig;

    .line 68
    check-cast p0, Ljava/lang/Iterable;

    .line 196
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    .line 69
    invoke-static {v0, p1, p2}, Lo/LongitudinalReportingConfig;->a(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;

    goto :goto_1

    .line 71
    :cond_4
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->j()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto/16 :goto_3

    .line 73
    :cond_5
    instance-of v0, p0, Lo/PrinterId;

    if-eqz v0, :cond_6

    check-cast p0, Lo/PrinterId;

    invoke-virtual {p0}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto/16 :goto_3

    .line 74
    :cond_6
    instance-of v0, p0, Lo/PrinterInfo;

    if-eqz v0, :cond_7

    check-cast p0, Lo/PrinterInfo;

    invoke-virtual {p0}, Lo/PrinterInfo;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->c(Ljava/lang/Number;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto/16 :goto_3

    .line 75
    :cond_7
    instance-of v0, p0, Lo/PrintJobInfo;

    if-eqz v0, :cond_8

    check-cast p0, Lo/PrintJobInfo;

    invoke-virtual {p0}, Lo/PrintJobInfo;->a()Z

    move-result p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->e(Z)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto/16 :goto_3

    .line 76
    :cond_8
    instance-of v0, p0, Lo/PrintJobId;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->h()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto/16 :goto_3

    .line 77
    :cond_9
    instance-of v0, p0, Lo/TwoStatePreference;

    const-string v1, "atom"

    const-string v2, "value"

    const-string v3, "$type"

    if-eqz v0, :cond_d

    .line 78
    move-object v0, p0

    check-cast v0, Lo/TwoStatePreference;

    invoke-virtual {v0}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object v4

    if-nez v4, :cond_a

    if-eqz p2, :cond_a

    goto/16 :goto_3

    .line 81
    :cond_a
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    move-result-object p2

    .line 82
    invoke-interface {p2, v3}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p2

    invoke-interface {p2, v1}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p2

    .line 83
    check-cast p0, Lo/PrintDocumentInfo;

    invoke-static {p2, p0}, Lo/LongitudinalReportingConfig;->a(Lo/DifferentialPrivacyConfig;Lo/PrintDocumentInfo;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    .line 84
    invoke-interface {p0, v2}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    .line 85
    sget-object p0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-virtual {v0}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 86
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->h()Lo/DifferentialPrivacyConfig;

    goto :goto_2

    .line 88
    :cond_b
    invoke-virtual {v0}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->c(Lcom/google/gson/JsonElement;)Lo/DifferentialPrivacyConfig;

    .line 90
    :goto_2
    invoke-virtual {v0}, Lo/TwoStatePreference;->f()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "_sentinel"

    .line 91
    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lo/DifferentialPrivacyConfig;->e(Z)Lo/DifferentialPrivacyConfig;

    .line 93
    :cond_c
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto :goto_3

    .line 96
    :cond_d
    instance-of p2, p0, Lo/PrintedPdfDocument;

    if-eqz p2, :cond_e

    .line 97
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 98
    invoke-interface {p1, v3}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 99
    check-cast p0, Lo/PrintDocumentInfo;

    invoke-static {p1, p0}, Lo/LongitudinalReportingConfig;->a(Lo/DifferentialPrivacyConfig;Lo/PrintDocumentInfo;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto :goto_3

    .line 102
    :cond_e
    instance-of p2, p0, Lo/PrintDocumentAdapter;

    if-eqz p2, :cond_f

    .line 103
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 104
    invoke-interface {p1, v3}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    const-string p2, "error"

    invoke-interface {p1, p2}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 105
    move-object p2, p0

    check-cast p2, Lo/PrintDocumentInfo;

    invoke-static {p1, p2}, Lo/LongitudinalReportingConfig;->a(Lo/DifferentialPrivacyConfig;Lo/PrintDocumentInfo;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 106
    invoke-interface {p1, v2}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    check-cast p0, Lo/PrintDocumentAdapter;

    invoke-virtual {p0}, Lo/PrintDocumentAdapter;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    goto :goto_3

    .line 109
    :cond_f
    instance-of p2, p0, Lo/PrinterDiscoverySession;

    if-eqz p2, :cond_10

    .line 110
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 111
    invoke-interface {p1, v3}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    const-string p2, "ref"

    invoke-interface {p1, p2}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 112
    move-object p2, p0

    check-cast p2, Lo/PrintDocumentInfo;

    invoke-static {p1, p2}, Lo/LongitudinalReportingConfig;->a(Lo/DifferentialPrivacyConfig;Lo/PrintDocumentInfo;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    .line 113
    invoke-interface {p1, v2}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p1

    check-cast p0, Lo/PrinterDiscoverySession;

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->j()Lo/RapporEncoder;

    move-result-object p0

    invoke-static {p1, p0}, Lo/LongitudinalReportingConfig;->b(Lo/DifferentialPrivacyConfig;Lo/RapporEncoder;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static synthetic b(Lo/RecommendationInfo;Lcom/google/gson/Gson;ZZLcom/netflix/falcor/impl/parser/JsonGraphFormat;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 37
    sget-object p4, Lcom/netflix/falcor/impl/parser/JsonGraphFormat;->c:Lcom/netflix/falcor/impl/parser/JsonGraphFormat;

    :cond_2
    move-object v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    move v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    .line 38
    invoke-static/range {v1 .. v6}, Lo/LongitudinalReportingConfig;->c(Lo/RecommendationInfo;Lcom/google/gson/Gson;ZZLcom/netflix/falcor/impl/parser/JsonGraphFormat;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lo/DifferentialPrivacyConfig;Lo/RapporEncoder;)Lo/DifferentialPrivacyConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;",
            "Lo/RapporEncoder<",
            "+",
            "Lo/DiskWriteViolation;",
            ">;)",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 181
    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->g()Lo/DifferentialPrivacyConfig;

    .line 182
    check-cast p1, Lo/anb;

    .line 204
    invoke-interface {p1}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DiskWriteViolation;

    .line 184
    instance-of v1, v0, Lo/DiskReadViolation;

    if-eqz v1, :cond_1

    check-cast v0, Lo/DiskReadViolation;

    invoke-virtual {v0}, Lo/DiskReadViolation;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 185
    :cond_1
    instance-of v1, v0, Lo/StorageVolume;

    if-eqz v1, :cond_2

    check-cast v0, Lo/StorageVolume;

    invoke-virtual {v0}, Lo/StorageVolume;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lo/DifferentialPrivacyConfig;->e(J)Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 186
    :cond_2
    instance-of v1, v0, Lo/VolumeRecord;

    if-eqz v1, :cond_3

    check-cast v0, Lo/VolumeRecord;

    invoke-virtual {v0}, Lo/VolumeRecord;->d()Z

    move-result v0

    invoke-interface {p0, v0}, Lo/DifferentialPrivacyConfig;->e(Z)Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 187
    :cond_3
    instance-of v0, v0, Lo/StorageManagerInternal;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->h()Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 190
    :cond_4
    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->j()Lo/DifferentialPrivacyConfig;

    return-object p0
.end method

.method public static final c(Lo/RecommendationInfo;Lcom/google/gson/Gson;ZZLcom/netflix/falcor/impl/parser/JsonGraphFormat;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "$this$toJsonString"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "format"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 41
    new-instance p5, Lo/RecommendationService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/4 v8, 0x0

    move-object v1, p5

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v1 .. v8}, Lo/RecommendationService;-><init>(Lcom/google/gson/Gson;IIZIILo/amc;)V

    check-cast p5, Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p2, Lo/AlarmClock;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lo/AlarmClock;-><init>(Lcom/google/gson/Gson;ZIILo/amc;)V

    move-object p5, p2

    check-cast p5, Lo/DifferentialPrivacyConfig;

    .line 45
    :goto_0
    sget-object p1, Lo/LongitudinalReportingEncoder;->d:[I

    invoke-virtual {p4}, Lcom/netflix/falcor/impl/parser/JsonGraphFormat;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p4, 0x2

    if-ne p1, p4, :cond_1

    xor-int/lit8 p1, p3, 0x1

    .line 47
    invoke-static {p0, p5, p1}, Lo/LongitudinalReportingConfig;->d(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    xor-int/lit8 p1, p3, 0x1

    .line 46
    invoke-static {p0, p5, p1}, Lo/LongitudinalReportingConfig;->a(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    .line 48
    :goto_1
    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->o()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final d(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/RecommendationInfo;",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;Z)",
            "Lo/DifferentialPrivacyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 124
    instance-of v0, p0, Lo/PrintJob;

    if-eqz v0, :cond_3

    .line 125
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    .line 126
    check-cast p0, Ljava/util/Map;

    .line 198
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    if-eqz p2, :cond_1

    .line 127
    instance-of v2, v0, Lo/PrintJobId;

    if-nez v2, :cond_0

    .line 128
    :cond_1
    invoke-interface {p1, v1}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    .line 129
    invoke-static {v0, p1, p2}, Lo/LongitudinalReportingConfig;->d(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto/16 :goto_3

    .line 135
    :cond_3
    instance-of v0, p0, Lo/VolumePreference;

    if-eqz v0, :cond_5

    .line 136
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->g()Lo/DifferentialPrivacyConfig;

    .line 137
    check-cast p0, Ljava/lang/Iterable;

    .line 200
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    .line 138
    invoke-static {v0, p1, p2}, Lo/LongitudinalReportingConfig;->d(Lo/RecommendationInfo;Lo/DifferentialPrivacyConfig;Z)Lo/DifferentialPrivacyConfig;

    goto :goto_1

    .line 140
    :cond_4
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->j()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto/16 :goto_3

    .line 142
    :cond_5
    instance-of p2, p0, Lo/PrinterId;

    if-eqz p2, :cond_6

    check-cast p0, Lo/PrinterId;

    invoke-virtual {p0}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto/16 :goto_3

    .line 143
    :cond_6
    instance-of p2, p0, Lo/PrinterInfo;

    if-eqz p2, :cond_7

    check-cast p0, Lo/PrinterInfo;

    invoke-virtual {p0}, Lo/PrinterInfo;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->c(Ljava/lang/Number;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto/16 :goto_3

    .line 144
    :cond_7
    instance-of p2, p0, Lo/PrintJobInfo;

    if-eqz p2, :cond_8

    check-cast p0, Lo/PrintJobInfo;

    invoke-virtual {p0}, Lo/PrintJobInfo;->a()Z

    move-result p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->e(Z)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto/16 :goto_3

    .line 145
    :cond_8
    instance-of p2, p0, Lo/PrintJobId;

    if-eqz p2, :cond_9

    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->h()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto/16 :goto_3

    .line 146
    :cond_9
    instance-of p2, p0, Lo/TwoStatePreference;

    if-eqz p2, :cond_b

    .line 148
    move-object p2, p0

    check-cast p2, Lo/TwoStatePreference;

    invoke-virtual {p2}, Lo/TwoStatePreference;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    move-result-object v0

    const-string v1, "$type"

    .line 150
    invoke-interface {v0, v1}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object v0

    const-string v1, "atom"

    invoke-interface {v0, v1}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object v0

    .line 151
    check-cast p0, Lo/PrintDocumentInfo;

    invoke-static {v0, p0}, Lo/LongitudinalReportingConfig;->a(Lo/DifferentialPrivacyConfig;Lo/PrintDocumentInfo;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    const-string v0, "value"

    .line 152
    invoke-interface {p0, v0}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    invoke-virtual {p2}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-interface {p0, p2}, Lo/DifferentialPrivacyConfig;->c(Lcom/google/gson/JsonElement;)Lo/DifferentialPrivacyConfig;

    .line 153
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto :goto_3

    .line 155
    :cond_a
    invoke-virtual {p2}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-interface {p1, p0}, Lo/DifferentialPrivacyConfig;->c(Lcom/google/gson/JsonElement;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto :goto_3

    .line 158
    :cond_b
    instance-of p2, p0, Lo/PrinterDiscoverySession;

    if-eqz p2, :cond_d

    .line 159
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->g()Lo/DifferentialPrivacyConfig;

    .line 160
    check-cast p0, Lo/PrinterDiscoverySession;

    invoke-virtual {p0}, Lo/PrinterDiscoverySession;->j()Lo/RapporEncoder;

    move-result-object p0

    check-cast p0, Lo/anb;

    .line 202
    invoke-interface {p0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/DiskWriteViolation;

    .line 161
    invoke-virtual {p2}, Lo/DiskWriteViolation;->c()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/DifferentialPrivacyConfig;->a(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    goto :goto_2

    .line 163
    :cond_c
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->j()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    goto :goto_3

    .line 165
    :cond_d
    instance-of p2, p0, Lo/PrintedPdfDocument;

    if-eqz p2, :cond_e

    .line 167
    invoke-interface {p1}, Lo/DifferentialPrivacyConfig;->a()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    const-string p1, "_sentinel"

    invoke-interface {p0, p1}, Lo/DifferentialPrivacyConfig;->d(Ljava/lang/String;)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lo/DifferentialPrivacyConfig;->e(Z)Lo/DifferentialPrivacyConfig;

    move-result-object p0

    invoke-interface {p0}, Lo/DifferentialPrivacyConfig;->d()Lo/DifferentialPrivacyConfig;

    move-result-object p0

    :goto_3
    return-object p0

    .line 169
    :cond_e
    instance-of p0, p0, Lo/PrintDocumentAdapter;

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "legacy format does not support error"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
