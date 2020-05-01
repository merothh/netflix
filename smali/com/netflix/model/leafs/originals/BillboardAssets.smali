.class public Lcom/netflix/model/leafs/originals/BillboardAssets;
.super Ljava/lang/Object;
.source "BillboardAssets.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "Assets"


# instance fields
.field private awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

.field private background:Lcom/netflix/model/leafs/originals/BillboardBackground;

.field private backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

.field private dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

.field private logo:Lcom/netflix/model/leafs/originals/BillboardLogo;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v1, v2}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/originals/BillboardAssets;->populate(Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    return-object v0
.end method

.method public getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->background:Lcom/netflix/model/leafs/originals/BillboardBackground;

    return-object v0
.end method

.method public getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    return-object v0
.end method

.method public getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    return-object v0
.end method

.method public getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Assets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardLogo;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardLogo;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    goto :goto_0

    :sswitch_0
    const-string/jumbo v4, "logo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "background"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "backgroundPortrait"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "dateBadge"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "awardsHeadline"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackground;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardBackground;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->background:Lcom/netflix/model/leafs/originals/BillboardBackground;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;-><init>(Lcom/google/gson/JsonElement;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    goto/16 :goto_0

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_1
        -0x1076a76b -> :sswitch_3
        0x32c5ab -> :sswitch_0
        0x251166e9 -> :sswitch_2
        0x74eaadaa -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Assets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Populating with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v3, "logo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "background"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "dateBadge"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "backgroundPortrait"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "awardsHeadline"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardLogo;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardLogo;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->logo:Lcom/netflix/model/leafs/originals/BillboardLogo;

    :goto_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackground;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardBackground;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->background:Lcom/netflix/model/leafs/originals/BillboardBackground;

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->dateBadge:Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    goto :goto_2

    :pswitch_3
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->backgroundPortrait:Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    goto :goto_2

    :pswitch_4
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    invoke-direct {v0, p2}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/originals/BillboardAssets;->awardsHeadline:Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_1
        -0x1076a76b -> :sswitch_2
        0x32c5ab -> :sswitch_0
        0x251166e9 -> :sswitch_3
        0x74eaadaa -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
