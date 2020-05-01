.class public Lcom/netflix/android/org/json/JSONML;
.super Ljava/lang/Object;
.source "JSONML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lcom/netflix/android/org/json/XMLTokener;ZLcom/netflix/android/org/json/JSONArray;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x0

    const/16 v8, 0x5b

    const/16 v7, 0x2d

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->more()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Bad XML"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a closing name instead of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_1b

    const-string/jumbo v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_3
    sget-object v1, Lcom/netflix/android/org/json/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v7, :cond_5

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v7, :cond_4

    const-string/jumbo v0, "-->"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->back()V

    goto :goto_0

    :cond_5
    if-ne v0, v8, :cond_7

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "CDATA"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->next()C

    move-result v0

    if-ne v0, v8, :cond_6

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_7
    const/4 v0, 0x1

    :cond_8
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    const-string/jumbo v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_9
    sget-object v2, Lcom/netflix/android/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_a
    :goto_1
    if-gtz v0, :cond_8

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_c
    sget-object v1, Lcom/netflix/android/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    const-string/jumbo v0, "?>"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad tagName \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v3}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    new-instance v4, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v4}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    if-eqz p1, :cond_12

    invoke-virtual {v3, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    if-eqz p2, :cond_10

    invoke-virtual {p2, v3}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    :cond_10
    :goto_2
    move-object v1, v5

    :goto_3
    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    :cond_11
    if-nez v1, :cond_13

    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_12
    const-string/jumbo v1, "tagName"

    invoke-virtual {v4, v1, v0}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    if-eqz p2, :cond_10

    invoke-virtual {p2, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_2

    :cond_13
    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_15

    if-eqz p1, :cond_14

    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_14

    invoke-virtual {v3, v4}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    :cond_14
    sget-object v2, Lcom/netflix/android/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_1d

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_1a

    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_15
    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_17

    const-string/jumbo v2, "tagName"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string/jumbo v2, "childNode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    const-string/jumbo v0, "Reserved attribute."

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Lcom/netflix/android/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v2, v6, :cond_19

    invoke-virtual {p0}, Lcom/netflix/android/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    instance-of v6, v2, Ljava/lang/String;

    if-nez v6, :cond_18

    const-string/jumbo v0, "Missing value"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_18
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/android/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    move-object v1, v5

    goto :goto_3

    :cond_19
    const-string/jumbo v6, ""

    invoke-virtual {v4, v1, v6}, Lcom/netflix/android/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    move-object v1, v2

    goto/16 :goto_3

    :cond_1a
    if-nez p2, :cond_0

    if-eqz p1, :cond_1c

    move-object v0, v3

    :cond_1b
    :goto_4
    return-object v0

    :cond_1c
    move-object v0, v4

    goto :goto_4

    :cond_1d
    sget-object v2, Lcom/netflix/android/org/json/XML;->GT:Ljava/lang/Character;

    if-eq v1, v2, :cond_1e

    const-string/jumbo v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1e
    invoke-static {p0, p1, v3}, Lcom/netflix/android/org/json/JSONML;->parse(Lcom/netflix/android/org/json/XMLTokener;ZLcom/netflix/android/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mismatched \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' and \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1f
    if-nez p1, :cond_20

    invoke-virtual {v3}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_20

    const-string/jumbo v0, "childNodes"

    invoke-virtual {v4, v0, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    :cond_20
    if-nez p2, :cond_0

    if-eqz p1, :cond_21

    move-object v0, v3

    goto :goto_4

    :cond_21
    move-object v0, v4

    goto :goto_4

    :cond_22
    if-eqz p2, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_23

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_23
    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto/16 :goto_0
.end method

.method public static toJSONArray(Lcom/netflix/android/org/json/XMLTokener;)Lcom/netflix/android/org/json/JSONArray;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/android/org/json/JSONML;->parse(Lcom/netflix/android/org/json/XMLTokener;ZLcom/netflix/android/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/XMLTokener;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONML;->toJSONArray(Lcom/netflix/android/org/json/XMLTokener;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Lcom/netflix/android/org/json/XMLTokener;)Lcom/netflix/android/org/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/android/org/json/JSONML;->parse(Lcom/netflix/android/org/json/XMLTokener;ZLcom/netflix/android/org/json/JSONArray;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/XMLTokener;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONML;->toJSONObject(Lcom/netflix/android/org/json/XMLTokener;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x3c

    const/16 v10, 0x2f

    const/16 v9, 0x22

    const/4 v1, 0x1

    const/16 v8, 0x3e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-virtual {v0}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netflix/android/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v5}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v6}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_4

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    if-lt v1, v4, :cond_3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    instance-of v5, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v5, :cond_6

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONML;->toString(Lcom/netflix/android/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    instance-of v5, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONML;->toString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public static toString(Lcom/netflix/android/org/json/JSONObject;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3c

    const/16 v8, 0x2f

    const/16 v6, 0x22

    const/16 v7, 0x3e

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "tagName"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "tagName"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "childNodes"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Lcom/netflix/android/org/json/XML;->noSpace(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v4}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "childNodes"

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v5

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v5, :cond_8

    invoke-virtual {v4, v1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/android/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    instance-of v6, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v6, :cond_6

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONML;->toString(Lcom/netflix/android/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    instance-of v6, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v6, :cond_7

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONML;->toString(Lcom/netflix/android/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
