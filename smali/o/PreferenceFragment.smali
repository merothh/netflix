.class final Lo/PreferenceFragment;
.super Lo/PreferenceCategory;
.source ""


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lo/PreferenceCategory;-><init>(Z)V

    return-void
.end method

.method private final c(Lo/VolumePreference;)Lo/RapporEncoder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/VolumePreference;",
            ")",
            "Lo/RapporEncoder<",
            "Lo/DiskWriteViolation;",
            ">;"
        }
    .end annotation

    .line 296
    check-cast p1, Ljava/lang/Iterable;

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 342
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 343
    check-cast v1, Lo/RecommendationInfo;

    .line 298
    instance-of v2, v1, Lo/PrinterId;

    if-eqz v2, :cond_0

    new-instance v2, Lo/DiskReadViolation;

    check-cast v1, Lo/PrinterId;

    invoke-virtual {v1}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lo/DiskReadViolation;-><init>(Ljava/lang/String;)V

    check-cast v2, Lo/DiskWriteViolation;

    goto :goto_1

    .line 299
    :cond_0
    instance-of v2, v1, Lo/PrintServicesLoader;

    if-eqz v2, :cond_1

    new-instance v2, Lo/StorageVolume;

    check-cast v1, Lo/PrintServicesLoader;

    invoke-virtual {v1}, Lo/PrintServicesLoader;->g()I

    move-result v1

    invoke-direct {v2, v1}, Lo/StorageVolume;-><init>(I)V

    check-cast v2, Lo/DiskWriteViolation;

    goto :goto_1

    .line 300
    :cond_1
    instance-of v2, v1, Lo/PrintManager;

    if-eqz v2, :cond_2

    new-instance v2, Lo/StorageVolume;

    check-cast v1, Lo/PrintManager;

    invoke-virtual {v1}, Lo/PrintManager;->g()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-direct {v2, v1}, Lo/StorageVolume;-><init>(I)V

    check-cast v2, Lo/DiskWriteViolation;

    goto :goto_1

    .line 301
    :cond_2
    instance-of v2, v1, Lo/PrintJobInfo;

    if-eqz v2, :cond_3

    new-instance v2, Lo/VolumeRecord;

    check-cast v1, Lo/PrintJobInfo;

    invoke-virtual {v1}, Lo/PrintJobInfo;->a()Z

    move-result v1

    invoke-direct {v2, v1}, Lo/VolumeRecord;-><init>(Z)V

    check-cast v2, Lo/DiskWriteViolation;

    goto :goto_1

    .line 302
    :cond_3
    instance-of v2, v1, Lo/PrintJobId;

    if-eqz v2, :cond_4

    sget-object v1, Lo/StorageManagerInternal;->b:Lo/StorageManagerInternal;

    move-object v2, v1

    check-cast v2, Lo/DiskWriteViolation;

    .line 306
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_4
    instance-of p1, v1, Lo/PrintServiceRecommendationsLoader;

    if-eqz p1, :cond_5

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while parsing reference path, only ints and"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " longs are allowed, got double: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 305
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error while parsing reference path, only primitives are allowed, got: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 344
    :cond_6
    check-cast v0, Ljava/util/List;

    .line 308
    invoke-static {v0}, Lo/RapporConfig;->c(Ljava/util/List;)Lo/RapporEncoder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic b(Lcom/google/gson/stream/JsonReader;)Lo/RecommendationInfo;
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lo/PreferenceFragment;->e(Lcom/google/gson/stream/JsonReader;)Lo/VolumePreference;

    move-result-object p1

    check-cast p1, Lo/RecommendationInfo;

    return-object p1
.end method

.method protected c(Lcom/google/gson/stream/JsonReader;)Lo/RecommendationInfo;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 231
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 233
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 235
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lo/PreferenceFragment;->e(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object v2

    .line 236
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    const-string v1, "$type"

    .line 242
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    invoke-virtual {p0, v1}, Lo/PreferenceFragment;->a(Lo/RecommendationInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 285
    invoke-virtual {p0}, Lo/PreferenceFragment;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    invoke-static {v0}, Lo/PrintFileDocumentAdapter;->a(Ljava/util/Map;)Lo/PrintJob;

    move-result-object p1

    goto :goto_1

    .line 288
    :cond_1
    invoke-static {v0}, Lo/PrintFileDocumentAdapter;->b(Ljava/util/Map;)Lo/PrintJob;

    move-result-object p1

    .line 285
    :goto_1
    check-cast p1, Lo/RecommendationInfo;

    goto/16 :goto_2

    .line 244
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1b893

    const-string v4, "$size"

    const-string v5, "$timestamp"

    const-string v6, "value"

    if-eq v2, v3, :cond_5

    const v3, 0x2dd951

    if-eq v2, v3, :cond_4

    const v3, 0x5c4d208

    if-ne v2, v3, :cond_7

    const-string v2, "error"

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 269
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    if-eqz v1, :cond_3

    .line 271
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RecommendationInfo;

    invoke-virtual {p0, p1}, Lo/PreferenceFragment;->e(Lo/RecommendationInfo;)Ljava/lang/Long;

    move-result-object p1

    .line 272
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    invoke-virtual {p0, v0}, Lo/PreferenceFragment;->d(Lo/RecommendationInfo;)Ljava/lang/Integer;

    move-result-object v0

    .line 273
    new-instance v2, Lo/PrintDocumentAdapter;

    .line 274
    invoke-virtual {v1}, Lo/RecommendationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 275
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 273
    invoke-direct {v2, v1, v3, p1, v0}, Lo/PrintDocumentAdapter;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 270
    move-object p1, v2

    check-cast p1, Lo/RecommendationInfo;

    goto :goto_2

    .line 280
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error without defined value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_4
    const-string v2, "atom"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lo/PreferenceFragment;->e(Ljava/util/Map;Z)Lo/RecommendationInfo;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string v2, "ref"

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 248
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    .line 249
    instance-of v2, v1, Lo/VolumePreference;

    if-eqz v2, :cond_6

    .line 250
    check-cast v1, Lo/VolumePreference;

    invoke-direct {p0, v1}, Lo/PreferenceFragment;->c(Lo/VolumePreference;)Lo/RapporEncoder;

    move-result-object p1

    const-string v1, "$expires"

    .line 251
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    invoke-virtual {p0, v1}, Lo/PreferenceFragment;->e(Lo/RecommendationInfo;)Ljava/lang/Long;

    move-result-object v1

    .line 252
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/RecommendationInfo;

    invoke-virtual {p0, v2}, Lo/PreferenceFragment;->e(Lo/RecommendationInfo;)Ljava/lang/Long;

    move-result-object v2

    .line 253
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    invoke-virtual {p0, v0}, Lo/PreferenceFragment;->d(Lo/RecommendationInfo;)Ljava/lang/Integer;

    move-result-object v0

    .line 254
    new-instance v3, Lo/PrinterDiscoverySession;

    invoke-direct {v3, p1, v1, v2, v0}, Lo/PrinterDiscoverySession;-><init>(Lo/RapporEncoder;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 249
    move-object p1, v3

    check-cast p1, Lo/RecommendationInfo;

    :goto_2
    return-object p1

    .line 261
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path found for reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 291
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method protected e(Lcom/google/gson/stream/JsonReader;)Lo/VolumePreference;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 314
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "array"

    .line 315
    invoke-virtual {p0, p1, v1}, Lo/PreferenceFragment;->e(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object v1

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 319
    invoke-virtual {p0}, Lo/PreferenceFragment;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lo/PrintFileDocumentAdapter;->a(Ljava/util/List;)Lo/VolumePreference;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lo/PrintFileDocumentAdapter;->c(Ljava/util/List;)Lo/VolumePreference;

    move-result-object p1

    :goto_1
    return-object p1
.end method
