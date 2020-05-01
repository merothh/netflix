.class public abstract Lcom/netflix/model/leafs/originals/VideoAssets;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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
            "Lcom/netflix/model/leafs/originals/VideoAssets;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/netflix/model/leafs/originals/AutoValue_VideoAssets$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/AutoValue_VideoAssets$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract horizontalBackground()Lcom/netflix/model/leafs/originals/BillboardVideo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "horizontalBackground"
    .end annotation
.end method
