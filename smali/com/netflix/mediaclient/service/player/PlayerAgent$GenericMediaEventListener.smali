.class Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;
.super Ljava/lang/Object;
.source "PlayerAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/EventListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/service/player/PlayerAgent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;-><init>(Lcom/netflix/mediaclient/service/player/PlayerAgent;)V

    return-void
.end method


# virtual methods
.method public received(Lcom/netflix/mediaclient/event/UIEvent;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Received a media event "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3600(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/NccpError;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3700(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/NccpError;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3800(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/OpenComplete;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3600(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/GenericMediaEvent;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/Buffering;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$3900(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Buffering;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/RemoveSubtitle;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RemoveSubtitle NOT supported since 4.0"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/ShowSubtitle;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ShowSubtitle NOT supported since 4.0"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4000(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/SubtitleData;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4100(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/AudioTrackChanged;)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4200(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Statechanged;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4300(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/BufferRange;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/UpdatePts;->getPts()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4400(Lcom/netflix/mediaclient/service/player/PlayerAgent;I)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/Error;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/Error;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4500(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Error;)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, Lcom/netflix/mediaclient/event/nrdp/media/Warning;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerAgent$GenericMediaEventListener;->this$0:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    check-cast p1, Lcom/netflix/mediaclient/event/nrdp/media/Warning;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$4600(Lcom/netflix/mediaclient/service/player/PlayerAgent;Lcom/netflix/mediaclient/event/nrdp/media/Warning;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/event/UIEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
