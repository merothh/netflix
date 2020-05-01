.class public final Lo/Pa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AL;


# instance fields
.field private final e:Lo/AL;


# direct methods
.method public constructor <init>(Lo/AL;)V
    .locals 1

    const-string v0, "notificationSummary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Pa;->e:Lo/AL;

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->body()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/Pa;

    if-eqz v0, :cond_0

    check-cast p1, Lo/Pa;

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    iget-object p1, p1, Lo/Pa;->e:Lo/AL;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public eventGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->eventGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public header()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->header()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageAltText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->imageAltText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->imageTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->imageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inQueue()Z
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->inQueue()Z

    move-result v0

    return v0
.end method

.method public landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Z)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0, p1}, Lo/AL;->makeCopy(Z)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object p1

    return-object p1
.end method

.method public messageGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->messageGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public messageString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->messageString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->read()Z

    move-result v0

    return v0
.end method

.method public showTimestamp()Z
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->showTimestamp()Z

    move-result v0

    return v0
.end method

.method public timestamp()J
    .locals 2

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->timestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationUIModelV2(notificationSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Pa;->e:Lo/AL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v0

    return-object v0
.end method

.method public urlTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->urlTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->videoId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->videoTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    iget-object v0, p0, Lo/Pa;->e:Lo/AL;

    invoke-interface {v0}, Lo/AL;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method
