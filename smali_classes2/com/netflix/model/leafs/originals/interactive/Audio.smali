.class public abstract Lcom/netflix/model/leafs/originals/interactive/Audio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/Audio$TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
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
            "Lcom/netflix/model/leafs/originals/interactive/Audio;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;->setDefaultVolume(F)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;->setDefaultId(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;->setDefaultDelay(F)Lcom/netflix/model/leafs/originals/interactive/$AutoValue_Audio$GsonTypeAdapter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract delay()F
.end method

.method public abstract id()Ljava/lang/String;
.end method

.method public abstract url()Ljava/lang/String;
.end method

.method public abstract volume()F
.end method
