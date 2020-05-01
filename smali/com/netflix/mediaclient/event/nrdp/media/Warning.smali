.class public Lcom/netflix/mediaclient/event/nrdp/media/Warning;
.super Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;
.source "Warning.java"


# static fields
.field public static final ATTR_ERROR:Ljava/lang/String; = "error"

.field public static final ATTR_ERRORCODE:Ljava/lang/String; = "errorcode"

.field public static final ATTR_STACK:Ljava/lang/String; = "stack"

.field public static final TYPE:Ljava/lang/String; = "warning"

.field public static final WARNING_SUBTITLE_FAILURE:Ljava/lang/String; = "NFErr_MC_SubtitleFailure"


# instance fields
.field private error:I

.field private stack:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "warning"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/event/nrdp/media/BaseMediaEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public containsInStack(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->stack:Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->stack:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v2, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->stack:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->stack:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "errorcode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->error:I

    return v0
.end method

.method protected populate(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "error"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->error:I

    const-string/jumbo v0, "stack"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/event/nrdp/media/Warning;->stack:Lorg/json/JSONArray;

    return-void
.end method
