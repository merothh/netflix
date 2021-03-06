.class public Lcom/netflix/msl/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final CHAR_EQUALS:C = '='

.field private static final CHAR_MINUS:C = '-'

.field private static final CHAR_PLUS:C = '+'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_UNDERSCORE:C = '_'

.field private static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/util/JsonUtils;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b64urlDecode(Ljava/lang/String;)[B
    .locals 4

    const/16 v0, 0x2d

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b64urlDecodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/netflix/msl/util/JsonUtils;->b64urlDecode(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/netflix/msl/util/JsonUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static b64urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netflix/msl/util/JsonUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/JsonUtils;->b64urlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b64urlEncode([B)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static createArray(Ljava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/netflix/android/org/json/JSONArray;"
        }
    .end annotation

    new-instance v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/netflix/android/org/json/JSONArray;

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/netflix/android/org/json/JSONObject;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/Number;

    if-nez v3, :cond_0

    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/netflix/android/org/json/JSONString;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/netflix/android/org/json/JSONString;

    new-instance v3, Lcom/netflix/android/org/json/JSONObject;

    invoke-interface {v0}, Lcom/netflix/android/org/json/JSONString;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/lang/Enum;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not JSON-compatible."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-object v1
.end method

.method public static equalSets(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONArray;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONArray;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_0

    instance-of v5, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    check-cast v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-static {v0, v1}, Lcom/netflix/msl/util/JsonUtils;->equals(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_4
    instance-of v5, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v5, :cond_5

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    check-cast v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-static {v0, v1}, Lcom/netflix/msl/util/JsonUtils;->equals(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_0
.end method

.method public static equals(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/android/org/json/JSONObject;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/netflix/android/org/json/JSONObject;->getNames(Lcom/netflix/android/org/json/JSONObject;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/netflix/android/org/json/JSONObject;->getNames(Lcom/netflix/android/org/json/JSONObject;)[Ljava/lang/String;

    move-result-object v0

    if-ne v5, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    array-length v1, v5

    array-length v4, v0

    if-eq v1, v4, :cond_5

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    array-length v7, v5

    if-ne v6, v7, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    array-length v0, v0

    if-eq v6, v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    invoke-interface {v1, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_10

    aget-object v1, v5, v4

    invoke-virtual {p0, v1}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    if-nez v1, :cond_c

    :cond_b
    move v0, v3

    goto :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_d

    move v0, v3

    goto :goto_0

    :cond_d
    instance-of v7, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v7, :cond_e

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    check-cast v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-static {v0, v1}, Lcom/netflix/msl/util/JsonUtils;->equals(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_0

    :cond_e
    instance-of v7, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v7, :cond_f

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    check-cast v1, Lcom/netflix/android/org/json/JSONArray;

    invoke-static {v0, v1}, Lcom/netflix/msl/util/JsonUtils;->equals(Lcom/netflix/android/org/json/JSONArray;Lcom/netflix/android/org/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_0
.end method

.method public static merge(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/android/org/json/JSONObject;
    .locals 6

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-static {p0}, Lcom/netflix/android/org/json/JSONObject;->getNames(Lcom/netflix/android/org/json/JSONObject;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Lcom/netflix/android/org/json/JSONObject;[Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/netflix/android/org/json/JSONObject;->getNames(Lcom/netflix/android/org/json/JSONObject;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Lcom/netflix/android/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public static objectEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/netflix/msl/util/JsonUtils;->equals(Lcom/netflix/android/org/json/JSONObject;Lcom/netflix/android/org/json/JSONObject;)Z

    move-result v0

    return v0
.end method
