.class public Lcom/netflix/model/leafs/originals/HorizontalBillboardBackground;
.super Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/originals/BillboardBackgroundImpl;-><init>(Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HorizontalBackground"

    return-object v0
.end method
