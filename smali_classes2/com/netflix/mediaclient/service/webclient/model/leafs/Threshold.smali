.class public abstract Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
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
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_Threshold$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_Threshold$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract getRed()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "red"
    .end annotation
.end method

.method public abstract getYellow()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "yellow"
    .end annotation
.end method
