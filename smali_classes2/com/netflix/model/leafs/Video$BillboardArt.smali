.class public Lcom/netflix/model/leafs/Video$BillboardArt;
.super Lo/BlockedNumberContract;
.source ""

# interfaces
.implements Lo/DocumentsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillboardArt"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private imageTypeIdentifier:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 636
    invoke-direct {p0}, Lo/BlockedNumberContract;-><init>()V

    const-string v0, "BillboardArt"

    .line 638
    iput-object v0, p0, Lcom/netflix/model/leafs/Video$BillboardArt;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageTypeIdentifier()Ljava/lang/String;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/netflix/model/leafs/Video$BillboardArt;->imageTypeIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/netflix/model/leafs/Video$BillboardArt;->url:Ljava/lang/String;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 6

    .line 656
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_5

    .line 657
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 662
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 663
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x2260ae42

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x1c56f

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "imageTypeIdentifier"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_0

    .line 665
    :cond_3
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$BillboardArt;->imageTypeIdentifier:Ljava/lang/String;

    goto :goto_0

    .line 664
    :cond_4
    invoke-static {v1}, Lo/adN;->e(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/Video$BillboardArt;->url:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-void
.end method