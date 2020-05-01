.class public abstract Lcom/netflix/model/leafs/blades/SkipContentData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
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
            "Lcom/netflix/model/leafs/blades/SkipContentData;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/netflix/model/leafs/blades/$AutoValue_SkipContentData$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/blades/$AutoValue_SkipContentData$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/4 p0, -0x1

    .line 28
    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/blades/$AutoValue_SkipContentData$GsonTypeAdapter;->setDefaultEnd(I)Lcom/netflix/model/leafs/blades/$AutoValue_SkipContentData$GsonTypeAdapter;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/blades/$AutoValue_SkipContentData$GsonTypeAdapter;->setDefaultStart(I)Lcom/netflix/model/leafs/blades/$AutoValue_SkipContentData$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract end()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end method

.method public abstract label()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end method

.method public abstract start()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end method

.method public abstract type()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end method
