.class Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;
.super Ljava/util/TimerTask;
.source "PlayerAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setVideoBitrateRange on open 0-MaxVBRThreshold()!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$InitialVideoBitrateRangeTimeoutTask;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$100(Lcom/netflix/mediaclient/service/player/PlayerAgent;)Lcom/netflix/mediaclient/javabridge/ui/IMedia;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$5300()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/IMedia;->setVideoBitrateRange(II)V

    return-void
.end method
