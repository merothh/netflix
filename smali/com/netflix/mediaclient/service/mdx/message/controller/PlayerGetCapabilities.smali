.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PlayerGetCapabilities;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerGetCapabilities.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "PLAYER_GET_CAPABILITIES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method
