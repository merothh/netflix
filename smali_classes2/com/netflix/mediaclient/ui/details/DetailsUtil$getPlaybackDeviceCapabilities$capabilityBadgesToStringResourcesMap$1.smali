.class public final Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;
.super Ljava/util/EnumMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DJ;->c(Lo/Bc;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 233
    invoke-direct {p0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 236
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->c:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p1, Ljava/lang/Enum;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->d:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p1, Ljava/lang/Enum;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->a:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p1, Ljava/lang/Enum;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->e:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p1, Ljava/lang/Enum;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->do:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;->b:Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p1, Ljava/lang/Enum;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->dp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1

    .line 233
    invoke-super {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;)Z
    .locals 0

    .line 233
    invoke-super {p0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Collection;
    .locals 1

    .line 233
    invoke-super {p0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;Ljava/lang/Integer;)Z
    .locals 0

    .line 233
    invoke-super {p0, p1, p2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Integer;)Z
    .locals 0

    .line 233
    invoke-super {p0, p1}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 233
    invoke-super {p0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method

.method public c(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;)Ljava/lang/Integer;
    .locals 0

    .line 233
    invoke-super {p0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->a(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->b(Ljava/lang/Integer;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;)Ljava/lang/Integer;
    .locals 0

    .line 233
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public e(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 233
    invoke-super {p0, p1, p2}, Ljava/util/EnumMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 1

    .line 233
    invoke-super {p0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->e(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->e(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    instance-of v0, p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->c(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 233
    instance-of v1, p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljava/lang/Integer;

    :cond_1
    if-eqz v0, :cond_2

    check-cast p1, Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->b(Lcom/netflix/mediaclient/ui/details/SupportedCapabilities;Ljava/lang/Integer;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->c()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsUtil$getPlaybackDeviceCapabilities$capabilityBadgesToStringResourcesMap$1;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
