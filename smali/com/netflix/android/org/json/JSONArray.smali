.class public Lcom/netflix/android/org/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private final myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/android/org/json/JSONTokener;)V
    .locals 3

    const/16 v2, 0x5d

    invoke-direct {p0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->back()V

    :goto_0
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->back()V

    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v1, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->back()V

    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    :sswitch_1
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONTokener;->back()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lcom/netflix/android/org/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    const-string/jumbo v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/android/org/json/JSONArray;-><init>(Lcom/netflix/android/org/json/JSONTokener;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/android/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDouble(I)D
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONArray(I)Lcom/netflix/android/org/json/JSONArray;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a JSONArray."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONObject(I)Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a JSONObject."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLong(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is not a number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not a string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNull(I)Z
    .locals 2

    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v3, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/android/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public optBoolean(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optDouble(I)D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/android/org/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optInt(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :goto_0
    return p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optJSONArray(I)Lcom/netflix/android/org/json/JSONArray;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/android/org/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/android/org/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optJSONObject(I)Lcom/netflix/android/org/json/JSONObject;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/android/org/json/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netflix/android/org/json/JSONObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/android/org/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :goto_0
    return-wide p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public put(D)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v0}, Lcom/netflix/android/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(I)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(ID)Lcom/netflix/android/org/json/JSONArray;
    .locals 2

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(II)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(IJ)Lcom/netflix/android/org/json/JSONArray;
    .locals 2

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    .locals 3

    invoke-static {p2}, Lcom/netflix/android/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    if-gez p1, :cond_0

    new-instance v0, Lcom/netflix/android/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/netflix/android/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    goto :goto_0
.end method

.method public put(ILjava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(ILjava/util/Map;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(IZ)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/netflix/android/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public put(J)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Ljava/util/Collection;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(Ljava/util/Map;)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/netflix/android/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0
.end method

.method public put(Z)Lcom/netflix/android/org/json/JSONArray;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONArray;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method public toJSONObject(Lcom/netflix/android/org/json/JSONArray;)Lcom/netflix/android/org/json/JSONObject;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v1}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/netflix/android/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/netflix/android/org/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/netflix/android/org/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/netflix/android/org/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/android/org/json/JSONArray;->length()I

    move-result v3

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    if-ne v3, v2, :cond_1

    iget-object v0, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lcom/netflix/android/org/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    :cond_0
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-object p1

    :cond_1
    if-eqz v3, :cond_0

    add-int v4, p3, p2

    move v1, v0

    :goto_1
    if-ge v0, v3, :cond_4

    if-eqz v1, :cond_2

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_2
    if-lez p2, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_3
    invoke-static {p1, v4}, Lcom/netflix/android/org/json/JSONObject;->indent(Ljava/io/Writer;I)V

    iget-object v1, p0, Lcom/netflix/android/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1, p2, v4}, Lcom/netflix/android/org/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_4
    if-lez p2, :cond_5

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_5
    invoke-static {p1, p3}, Lcom/netflix/android/org/json/JSONObject;->indent(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/netflix/android/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/netflix/android/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
