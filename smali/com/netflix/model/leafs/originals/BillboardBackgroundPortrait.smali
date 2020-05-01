.class public Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;
.super Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;
.source "BillboardBackgroundPortrait.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/AbstractBillboardAsset;-><init>(Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Background"

    return-object v0
.end method
