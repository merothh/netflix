.class public abstract Lcom/netflix/mediaclient/media/manifest/Location;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IIILjava/lang/String;)Lcom/netflix/mediaclient/media/manifest/Location;
    .locals 1

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Location;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Location;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static getLocation(Ljava/lang/String;Ljava/util/List;)Lcom/netflix/mediaclient/media/manifest/Location;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;)",
            "Lcom/netflix/mediaclient/media/manifest/Location;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Location;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/Location;

    .line 46
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/manifest/Location;->key()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/mediaclient/media/manifest/Location;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/media/manifest/AutoValue_Location$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/manifest/AutoValue_Location$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract key()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end method

.method public abstract level()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end method

.method public abstract rank()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rank"
    .end annotation
.end method

.method public abstract weight()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation
.end method
