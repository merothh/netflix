.class public abstract Lcom/netflix/model/leafs/blades/PreplayItemAction;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/netflix/model/leafs/blades/PreplayItemAction;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/16 p0, -0x78

    .line 35
    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;->setDefaultTrackId(I)Lcom/netflix/model/leafs/blades/AutoValue_PreplayItemAction$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract bookmarkPosition()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bookmarkPosition"
    .end annotation
.end method

.method public abstract doNotIncrementInterrupter()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "doNotIncrementInterrupter"
    .end annotation
.end method

.method public abstract ignoreBookmark()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ignoreBookmark"
    .end annotation
.end method

.method public abstract name()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end method

.method public abstract trackId()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation
.end method

.method public abstract type()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end method

.method public abstract videoId()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoId"
    .end annotation
.end method
