.class public abstract Lcom/netflix/model/leafs/originals/BillboardVideo;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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
            "Lcom/netflix/model/leafs/originals/BillboardVideo;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/netflix/model/leafs/originals/AutoValue_BillboardVideo$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/AutoValue_BillboardVideo$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract autoPlay()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "autoPlay"
    .end annotation
.end method

.method public abstract isTrailer()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isTrailer"
    .end annotation
.end method

.method public abstract motionId()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motionId"
    .end annotation
.end method

.method public abstract motionShouldLoop()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motionShouldLoop"
    .end annotation
.end method

.method public abstract motionUrl()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "motionUrl"
    .end annotation
.end method
