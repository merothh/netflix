.class Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;
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
    .line 239
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;->this$0:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnNccpErrorHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;)V

    return-void
.end method


# virtual methods
.method public varargs handle(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    if-eqz v0, :cond_0

    .line 250
    aget-object v0, p2, v2

    check-cast v0, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->onNccpError(Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V

    goto :goto_0
.end method
