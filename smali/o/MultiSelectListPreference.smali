.class public final Lo/MultiSelectListPreference;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Lo/MultiSelectListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lo/MultiSelectListPreference;

    invoke-direct {v0}, Lo/MultiSelectListPreference;-><init>()V

    sput-object v0, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lo/MultiSelectListPreference;->b(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Lo/VolumePreference;)Lcom/google/gson/JsonArray;
    .locals 3

    const-string v0, "array"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 50
    check-cast p1, Ljava/lang/Iterable;

    .line 131
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    .line 50
    sget-object v2, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-direct {v2, v1}, Lo/MultiSelectListPreference;->a(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(Lo/PrintDocumentInfo;)Lcom/google/gson/JsonElement;
    .locals 7

    const-string v0, "primitive"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    instance-of v0, p1, Lo/PrinterId;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    check-cast p1, Lo/PrinterId;

    invoke-virtual {p1}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 57
    :cond_0
    instance-of v0, p1, Lo/PrintServicesLoader;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    check-cast p1, Lo/PrintServicesLoader;

    invoke-virtual {p1}, Lo/PrintServicesLoader;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 58
    :cond_1
    instance-of v0, p1, Lo/PrintManager;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    check-cast p1, Lo/PrintManager;

    invoke-virtual {p1}, Lo/PrintManager;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 59
    :cond_2
    instance-of v0, p1, Lo/PrintServiceRecommendationsLoader;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    check-cast p1, Lo/PrintServiceRecommendationsLoader;

    invoke-virtual {p1}, Lo/PrintServiceRecommendationsLoader;->g()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 60
    :cond_3
    instance-of v0, p1, Lo/PrintJobInfo;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    check-cast p1, Lo/PrintJobInfo;

    invoke-virtual {p1}, Lo/PrintJobInfo;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 61
    :cond_4
    instance-of v0, p1, Lo/PrintJobId;

    if-eqz v0, :cond_5

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    const-string v0, "GsonNull.INSTANCE"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 62
    :cond_5
    instance-of v0, p1, Lo/TwoStatePreference;

    const-string v1, "value"

    const/4 v2, 0x1

    const-string v3, "_sentinel"

    const-string v4, "$expires"

    if-eqz v0, :cond_9

    .line 63
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    move-object v2, p1

    check-cast v2, Lo/TwoStatePreference;

    invoke-virtual {v2}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 66
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/google/gson/JsonPrimitive;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v3, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v4, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 67
    :cond_6
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->i()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v2, Lcom/google/gson/JsonPrimitive;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast v2, Lcom/google/gson/JsonElement;

    const-string v1, "$size"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 68
    :cond_7
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->c()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {p1, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast p1, Lcom/google/gson/JsonElement;

    const-string v1, "$timestamp"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 69
    :cond_8
    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_2

    .line 71
    :cond_9
    instance-of v0, p1, Lo/PrinterDiscoverySession;

    if-eqz v0, :cond_b

    .line 72
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 73
    check-cast p1, Lo/PrinterDiscoverySession;

    invoke-virtual {p1}, Lo/PrinterDiscoverySession;->j()Lo/RapporEncoder;

    move-result-object p1

    check-cast p1, Lo/anb;

    .line 133
    invoke-interface {p1}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/DiskWriteViolation;

    .line 73
    invoke-virtual {v1}, Lo/DiskWriteViolation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_a
    check-cast v0, Lcom/google/gson/JsonElement;

    goto :goto_2

    .line 76
    :cond_b
    instance-of v0, p1, Lo/PrintedPdfDocument;

    if-eqz v0, :cond_d

    .line 77
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 78
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 79
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    new-instance p1, Lcom/google/gson/JsonPrimitive;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {p1, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v4, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 80
    :cond_c
    check-cast v0, Lcom/google/gson/JsonElement;

    goto :goto_2

    .line 82
    :cond_d
    instance-of v0, p1, Lo/PrintDocumentAdapter;

    if-eqz v0, :cond_f

    .line 83
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 84
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    move-object v3, p1

    check-cast v3, Lo/PrintDocumentAdapter;

    invoke-virtual {v3}, Lo/PrintDocumentAdapter;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 87
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    .line 88
    invoke-virtual {p1}, Lo/PrintDocumentInfo;->d()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_e

    check-cast p1, Ljava/lang/Number;

    goto :goto_1

    .line 89
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 87
    :goto_1
    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 85
    invoke-virtual {v0, v4, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 92
    check-cast v0, Lcom/google/gson/JsonElement;

    :goto_2
    return-object v0

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final b(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "obj"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lo/PrintJob;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrintJob;

    invoke-virtual {p0, p1}, Lo/MultiSelectListPreference;->d(Lo/PrintJob;)Lcom/google/gson/JsonObject;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p1, Lo/PrintDocumentInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lo/PrintDocumentInfo;

    invoke-virtual {p0, p1}, Lo/MultiSelectListPreference;->b(Lo/PrintDocumentInfo;)Lcom/google/gson/JsonElement;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_1
    instance-of v0, p1, Lo/VolumePreference;

    if-eqz v0, :cond_2

    check-cast p1, Lo/VolumePreference;

    invoke-virtual {p0, p1}, Lo/MultiSelectListPreference;->b(Lo/VolumePreference;)Lcom/google/gson/JsonArray;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public d(Lo/PrintJob;)Lcom/google/gson/JsonObject;
    .locals 4

    const-string v0, "obj"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 44
    check-cast p1, Ljava/util/Map;

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    .line 44
    sget-object v3, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-direct {v3, v1}, Lo/MultiSelectListPreference;->a(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
