.class abstract Lo/PreferenceCategory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PreferenceFrameLayout;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/PreferenceCategory;->a:Z

    return-void
.end method

.method private final c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;
    .locals 3

    .line 177
    instance-of v0, p1, Lo/PrinterId;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    check-cast p1, Lo/PrinterId;

    invoke-virtual {p1}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_3

    .line 178
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

    goto/16 :goto_3

    .line 179
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

    goto/16 :goto_3

    .line 180
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

    goto/16 :goto_3

    .line 181
    :cond_3
    instance-of v0, p1, Lo/PrintJobInfo;

    if-eqz v0, :cond_5

    check-cast p1, Lo/PrintJobInfo;

    invoke-virtual {p1}, Lo/PrintJobInfo;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lo/SeekBarPreference;->b()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lo/SeekBarPreference;->d()Lcom/google/gson/JsonPrimitive;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonElement;

    goto/16 :goto_3

    .line 182
    :cond_5
    instance-of v0, p1, Lo/PrintJobId;

    const-string v1, "GsonNull.INSTANCE"

    if-eqz v0, :cond_6

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonElement;

    goto :goto_3

    .line 183
    :cond_6
    instance-of v0, p1, Lo/VolumePreference;

    if-eqz v0, :cond_8

    .line 184
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 185
    check-cast p1, Ljava/lang/Iterable;

    .line 345
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    .line 185
    invoke-direct {p0, v1}, Lo/PreferenceCategory;->c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 186
    :cond_7
    check-cast v0, Lcom/google/gson/JsonElement;

    goto :goto_3

    .line 188
    :cond_8
    instance-of v0, p1, Lo/PrintJob;

    if-eqz v0, :cond_a

    .line 189
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 190
    check-cast p1, Ljava/util/Map;

    .line 347
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RecommendationInfo;

    .line 190
    invoke-direct {p0, v1}, Lo/PreferenceCategory;->c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_2

    .line 191
    :cond_9
    check-cast v0, Lcom/google/gson/JsonElement;

    goto :goto_3

    .line 193
    :cond_a
    instance-of v0, p1, Lo/PrintedPdfDocument;

    if-eqz v0, :cond_b

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonElement;

    :goto_3
    return-object v0

    .line 194
    :cond_b
    instance-of v0, p1, Lo/TwoStatePreference;

    if-nez v0, :cond_e

    .line 195
    instance-of v0, p1, Lo/PrinterDiscoverySession;

    if-nez v0, :cond_d

    .line 196
    instance-of v0, p1, Lo/PrintDocumentAdapter;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 195
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 194
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method protected final a(Lo/RecommendationInfo;)Ljava/lang/String;
    .locals 1

    .line 215
    instance-of v0, p1, Lo/PrinterId;

    if-eqz v0, :cond_0

    .line 216
    check-cast p1, Lo/PrinterId;

    invoke-virtual {p1}, Lo/PrinterId;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/io/Reader;)Lo/RecommendationInfo;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-string p1, "$root"

    .line 118
    invoke-virtual {p0, v0, p1}, Lo/PreferenceCategory;->e(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Lcom/google/gson/stream/JsonReader;)Lo/RecommendationInfo;
.end method

.method protected abstract c(Lcom/google/gson/stream/JsonReader;)Lo/RecommendationInfo;
.end method

.method protected final d(Lo/RecommendationInfo;)Ljava/lang/Integer;
    .locals 1

    .line 202
    instance-of v0, p1, Lo/PrinterInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrinterInfo;

    invoke-virtual {p1}, Lo/PrinterInfo;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected final d(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Lo/RecommendationInfo;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    .line 142
    invoke-static {v0, v1}, Lo/PreferenceGroup;->a(D)Lo/PrinterInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    check-cast p1, Lo/RecommendationInfo;

    return-object p1

    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while parsing number - key: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public d(Ljava/lang/String;)Lo/RecommendationInfo;
    .locals 1

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1}, Lo/PreferenceFrameLayout$Application;->b(Lo/PreferenceFrameLayout;Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object p1

    return-object p1
.end method

.method protected final e(Lo/RecommendationInfo;)Ljava/lang/Long;
    .locals 2

    .line 209
    instance-of v0, p1, Lo/PrinterInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lo/PrinterInfo;

    invoke-virtual {p1}, Lo/PrinterInfo;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected final e(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Lo/RecommendationInfo;
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v1, Lo/PreferenceActivity;->c:[I

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 131
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 132
    sget-object p1, Lo/PrintJobId;->e:Lo/PrintJobId;

    check-cast p1, Lo/RecommendationInfo;

    goto :goto_1

    .line 129
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lo/PreferenceCategory;->d(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Lo/RecommendationInfo;

    move-result-object p1

    goto :goto_1

    .line 128
    :pswitch_2
    new-instance p2, Lo/PrinterId;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reader.nextString()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lo/PrinterId;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Lo/RecommendationInfo;

    goto :goto_1

    .line 127
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 342
    invoke-static {}, Lo/PrintFileDocumentAdapter;->b()Lo/PrintJobInfo;

    move-result-object p1

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {}, Lo/PrintFileDocumentAdapter;->a()Lo/PrintJobInfo;

    move-result-object p1

    .line 341
    :goto_0
    check-cast p1, Lo/RecommendationInfo;

    goto :goto_1

    .line 126
    :pswitch_4
    invoke-virtual {p0, p1}, Lo/PreferenceCategory;->b(Lcom/google/gson/stream/JsonReader;)Lo/RecommendationInfo;

    move-result-object p1

    goto :goto_1

    .line 125
    :pswitch_5
    invoke-virtual {p0, p1}, Lo/PreferenceCategory;->c(Lcom/google/gson/stream/JsonReader;)Lo/RecommendationInfo;

    move-result-object p1

    :goto_1
    return-object p1

    .line 134
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", got token: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final e(Ljava/util/Map;Z)Lo/RecommendationInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lo/RecommendationInfo;",
            ">;Z)",
            "Lo/RecommendationInfo;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 149
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, v0}, Lo/PreferenceCategory;->c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const-string v0, "$expires"

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    invoke-virtual {p0, v0}, Lo/PreferenceCategory;->e(Lo/RecommendationInfo;)Ljava/lang/Long;

    move-result-object v3

    const-string v0, "$timestamp"

    .line 160
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RecommendationInfo;

    invoke-virtual {p0, v0}, Lo/PreferenceCategory;->e(Lo/RecommendationInfo;)Ljava/lang/Long;

    move-result-object v4

    const-string v0, "$size"

    .line 161
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RecommendationInfo;

    invoke-virtual {p0, p1}, Lo/PreferenceCategory;->d(Lo/RecommendationInfo;)Ljava/lang/Integer;

    move-result-object v5

    .line 162
    new-instance p1, Lo/TwoStatePreference;

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v1 .. v9}, Lo/TwoStatePreference;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILo/amc;)V

    check-cast p1, Lo/RecommendationInfo;

    goto :goto_1

    .line 170
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RecommendationInfo;

    invoke-virtual {p0, p1}, Lo/PreferenceCategory;->e(Lo/RecommendationInfo;)Ljava/lang/Long;

    move-result-object p1

    .line 171
    new-instance p2, Lo/PrintedPdfDocument;

    invoke-direct {p2, p1}, Lo/PrintedPdfDocument;-><init>(Ljava/lang/Long;)V

    move-object p1, p2

    check-cast p1, Lo/RecommendationInfo;

    :goto_1
    return-object p1
.end method

.method protected final e()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lo/PreferenceCategory;->a:Z

    return v0
.end method
