.class public abstract Lcom/netflix/mediaclient/media/manifest/Url;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Url;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Url;

    const-string v1, "cdn_id"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "url"

    .line 35
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Url;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static listFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/media/manifest/Url;->fromJson(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/Url;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Url;
    .locals 1

    .line 50
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Url;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Url;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Url$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Url$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract cdnId()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdn_id"
    .end annotation
.end method

.method public abstract url()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end method
