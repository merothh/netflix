.class public abstract Lcom/netflix/model/leafs/originals/BillboardCTA;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
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
            "Lcom/netflix/model/leafs/originals/BillboardCTA;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/AutoValue_BillboardCTA$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract billboardPhase()Ljava/lang/String;
.end method

.method public abstract bookmarkPosition()Ljava/lang/String;
.end method

.method public abstract galleryId()Ljava/lang/String;
.end method

.method public abstract ignoreBookmark()Z
.end method

.method public abstract index()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract sequenceNumber()Ljava/lang/String;
.end method

.method public abstract suppressPostPlay()Z
.end method

.method public abstract type()Ljava/lang/String;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method
