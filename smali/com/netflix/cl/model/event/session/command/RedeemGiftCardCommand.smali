.class public Lcom/netflix/cl/model/event/session/command/RedeemGiftCardCommand;
.super Lcom/netflix/cl/model/event/session/command/Command;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/netflix/cl/model/event/session/command/Command;-><init>()V

    const-string v0, "RedeemGiftCardCommand"

    .line 19
    invoke-virtual {p0, v0}, Lcom/netflix/cl/model/event/session/command/RedeemGiftCardCommand;->addContextType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/netflix/cl/model/event/session/command/Command;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
