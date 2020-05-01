.class public Lcom/netflix/cl/util/ExtCLUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/cl/util/ExtCLUtils$DebugSessionType;
    }
.end annotation


# direct methods
.method public static addBooleanObjectArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Boolean;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_1

    .line 218
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 219
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static addEnumArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Enum;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    .line 261
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 262
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 264
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static addEnumToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Enum;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public static addFloatObjectArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Float;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_1

    .line 246
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 247
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static addJsonSerializerArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    .line 138
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 139
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 141
    invoke-interface {v2}, Lcom/netflix/cl/model/JsonSerializer;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p2, :cond_0

    .line 109
    invoke-interface {p2}, Lcom/netflix/cl/model/JsonSerializer;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public static addJsonToJson(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public static addLongObjectArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Long;)Lorg/json/JSONObject;
    .locals 4

    if-eqz p2, :cond_1

    .line 190
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 191
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static addObjectToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    .line 280
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 281
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object p0

    .line 285
    :cond_1
    instance-of v0, p2, [Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 286
    check-cast p2, [Ljava/lang/Long;

    check-cast p2, [Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addLongObjectArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Long;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 289
    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 290
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object p0

    .line 294
    :cond_3
    instance-of v0, p2, [Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 295
    check-cast p2, [Ljava/lang/Float;

    check-cast p2, [Ljava/lang/Float;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addFloatObjectArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Float;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 298
    :cond_4
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 303
    :cond_5
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 304
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 308
    :cond_6
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 309
    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addStringArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 312
    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 313
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object p0

    .line 317
    :cond_8
    instance-of v0, p2, [Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 318
    check-cast p2, [Ljava/lang/Boolean;

    check-cast p2, [Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addBooleanObjectArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 321
    :cond_9
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_a

    .line 322
    check-cast p2, Ljava/lang/Enum;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addEnumToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Enum;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 325
    :cond_a
    instance-of v0, p2, [Ljava/lang/Enum;

    if-eqz v0, :cond_b

    .line 326
    check-cast p2, [Ljava/lang/Enum;

    check-cast p2, [Ljava/lang/Enum;

    .line 327
    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addEnumArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/Enum;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 330
    :cond_b
    instance-of v0, p2, Lcom/netflix/cl/model/JsonSerializer;

    if-eqz v0, :cond_c

    .line 331
    check-cast p2, Lcom/netflix/cl/model/JsonSerializer;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addJsonSerializerToJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 334
    :cond_c
    instance-of v0, p2, [Lcom/netflix/cl/model/JsonSerializer;

    if-eqz v0, :cond_d

    .line 335
    check-cast p2, [Lcom/netflix/cl/model/JsonSerializer;

    check-cast p2, [Lcom/netflix/cl/model/JsonSerializer;

    invoke-static {p0, p1, p2}, Lcom/netflix/cl/util/ExtCLUtils;->addJsonSerializerArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Lcom/netflix/cl/model/JsonSerializer;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 338
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

.method public static addStringArrayToJson(Lorg/json/JSONObject;Ljava/lang/String;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    .line 151
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 152
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 154
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static addStringToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method private static toDebug(Lorg/json/JSONObject;)Lcom/netflix/cl/model/Debug;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    new-instance v0, Lcom/netflix/cl/model/Debug;

    invoke-direct {v0, p0}, Lcom/netflix/cl/model/Debug;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static toError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/netflix/cl/model/Error;
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, v0, p1}, Lcom/netflix/cl/util/ExtCLUtils;->toError(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)Lcom/netflix/cl/model/Error;

    move-result-object p0

    return-object p0
.end method

.method public static toError(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)Lcom/netflix/cl/model/Error;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_4

    if-nez p1, :cond_1

    .line 48
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    const-string v1, "className"

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "message"

    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "stackTrace"

    .line 60
    invoke-static {p2}, Lcom/netflix/cl/util/CLUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    :cond_4
    new-instance p2, Lcom/netflix/cl/model/Error;

    invoke-static {p1}, Lcom/netflix/cl/util/ExtCLUtils;->toDebug(Lorg/json/JSONObject;)Lcom/netflix/cl/model/Debug;

    move-result-object p1

    invoke-direct {p2, p0, p1, v0}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/Debug;Lcom/netflix/cl/model/Error;)V

    return-object p2
.end method
