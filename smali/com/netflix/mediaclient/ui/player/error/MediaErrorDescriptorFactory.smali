.class Lcom/netflix/mediaclient/ui/player/error/MediaErrorDescriptorFactory;
.super Ljava/lang/Object;
.source "MediaErrorDescriptorFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ErrorManager"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHandlerForMediaError(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ErrorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ErrorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForOpenDeviceFailureInStack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/Error;->checkForOpenDeviceFailureInStack()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureErrorDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureRestartErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureRestartErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/OpenDeviceFailureRestartErrorDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/AuthFailureErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/AuthFailureErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/AuthFailureErrorDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/StreamingFailureHttp420ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;->isValid(Lcom/netflix/mediaclient/event/nrdp/media/Error;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/JPlayerRestartErrorDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;->build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/Error;)Lcom/netflix/mediaclient/ui/player/error/DefaultMediaErrorDescriptor;

    move-result-object v0

    goto :goto_0
.end method
