.class public final Lo/DocumentsContract;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;
    .locals 1

    const-string v0, "$this$getAtomValueOrConvertToJson"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p0, Lo/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lo/TwoStatePreference;

    invoke-virtual {p0}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object p0

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lo/MultiSelectListPreference;->b:Lo/MultiSelectListPreference;

    invoke-virtual {v0, p0}, Lo/MultiSelectListPreference;->b(Lo/RecommendationInfo;)Lcom/google/gson/JsonElement;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final e(Lo/TwoStatePreference;)Lo/PrintDocumentInfo;
    .locals 11

    const-string v0, "$this$atomOrEmbeddedSentinel"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lo/TwoStatePreference;->a()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "_sentinel"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "$expires"

    .line 20
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    move-object v1, p0

    :cond_0
    move-object v4, v1

    const-string p0, "value"

    .line 27
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 30
    new-instance p0, Lo/TwoStatePreference;

    const-string v0, "innerValue"

    invoke-static {v3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lo/TwoStatePreference;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILo/amc;)V

    check-cast p0, Lo/PrintDocumentInfo;

    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Lo/PrintedPdfDocument;

    invoke-direct {p0, v4}, Lo/PrintedPdfDocument;-><init>(Ljava/lang/Long;)V

    check-cast p0, Lo/PrintDocumentInfo;

    goto :goto_0

    .line 35
    :cond_2
    check-cast p0, Lo/PrintDocumentInfo;

    :goto_0
    return-object p0
.end method
