.class public final Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PlayerStateChanged.java"


# instance fields
.field private mPlayerState:Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string/jumbo v0, "PLAYER_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;->mJson:Lorg/json/JSONObject;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;->mPlayerState:Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;

    return-void
.end method


# virtual methods
.method public getPlayerState()Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/target/PlayerStateChanged;->mPlayerState:Lcom/netflix/mediaclient/service/mdx/message/target/PlayerState;

    return-object v0
.end method
