.class Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;
.super Ljava/lang/Object;
.source "PlayerListenerManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;->this$0:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnBufferingUpdateHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;)V

    return-void
.end method


# virtual methods
.method public varargs handle(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 125
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 132
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->onBufferingUpdate(I)V

    goto :goto_0
.end method
