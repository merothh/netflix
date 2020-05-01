.class public Lcom/netflix/android/org/json/CDL;
.super Ljava/lang/Object;
.source "CDL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lcom/netflix/android/org/json/JSONTokener;)Ljava/lang/String;
    .locals 4

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONTokener;->next()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONTokener;->back()V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONTokener;->next()C

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing close quote \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONTokener;->back()V

    const-string/jumbo v0, ""

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method public static rowToJSONArray(Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;
    .locals 5

    const/16 v4, 0x2c

    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    :cond_0
    invoke-static {p0}, Lcom/netflix/android/org/json/CDL;->getValue(Lcom/netflix/android/org/json/JSONTokener;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONTokener;->next()C

    move-result v1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    if-eq v1, v4, :cond_3

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    :goto_0
    if-eq v1, v4, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad character \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONTokener;->next()C

    move-result v1

    goto :goto_0
.end method

.method public static rowToJSONObject(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    invoke-static {p1}, Lcom/netflix/android/org/json/CDL;->rowToJSONArray(Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/netflix/android/org/json/JSONArray;->toJSONObject(Lcom/netflix/android/org/json/JSONArray;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rowToString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x2c

    const/16 v9, 0xa

    const/16 v8, 0x22

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    if-lez v0, :cond_0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v8, :cond_5

    :cond_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-lt v6, v7, :cond_2

    if-eq v6, v8, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    :goto_1
    invoke-static {p0, p1}, Lcom/netflix/android/org/json/CDL;->rowToJSONObject(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1
.end method

.method public static toJSONArray(Lcom/netflix/android/org/json/JSONArray;Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/netflix/android/org/json/CDL;->toJSONArray(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    invoke-static {p0}, Lcom/netflix/android/org/json/CDL;->rowToJSONArray(Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/android/org/json/CDL;->toJSONArray(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONTokener;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/android/org/json/CDL;->toJSONArray(Lcom/netflix/android/org/json/JSONTokener;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->optJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->names()Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/netflix/android/org/json/CDL;->rowToString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p0}, Lcom/netflix/android/org/json/CDL;->toString(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toString(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONArray;->optJSONObject(I)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lcom/netflix/android/org/json/JSONObject;->toJSONArray(Lcom/netflix/android/org/json/JSONArray;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/org/json/CDL;->rowToString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
