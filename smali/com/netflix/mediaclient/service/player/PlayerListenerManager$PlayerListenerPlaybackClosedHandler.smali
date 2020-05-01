.class Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;
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
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;->this$0:Lcom/netflix/mediaclient/service/player/PlayerListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$1;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerPlaybackClosedHandler;-><init>(Lcom/netflix/mediaclient/service/player/PlayerListenerManager;)V

    return-void
.end method


# virtual methods
.method public varargs handle(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;->playbackClosed()V

    .line 305
    return-void
.end method
