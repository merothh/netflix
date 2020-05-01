.class Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;
.super Ljava/lang/Object;
.source "PlayerListenerManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;->this$0:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerOnSubtitleFailedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;)V

    return-void
.end method


# virtual methods
.method public varargs handle(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->onSubtitleFailed()V

    :cond_0
    return-void
.end method
