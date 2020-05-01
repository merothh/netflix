.class public abstract Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;
.super Lcom/netflix/model/leafs/originals/interactive/template/Element;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/netflix/model/leafs/originals/interactive/template/Element;-><init>()V

    return-void
.end method

.method public static builder()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
    .locals 1

    .line 31
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/interactive/template/$$$AutoValue_ImageElement$Builder;-><init>()V

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
            "Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_ImageElement$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/model/leafs/originals/interactive/template/$AutoValue_ImageElement$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public assetId()Ljava/lang/String;
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->image()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "assetId"

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 63
    instance-of v0, p1, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    if-eqz v0, :cond_1

    .line 64
    check-cast p1, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;

    .line 65
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/netflix/model/leafs/originals/interactive/template/Element;->hashCode()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/netflix/model/leafs/originals/interactive/template/ImageElement;->assetId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    const v1, 0xf4243

    mul-int v0, v0, v1

    return v0
.end method

.method abstract image()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toBuilder()Lcom/netflix/model/leafs/originals/interactive/template/ImageElement$Builder;
.end method
