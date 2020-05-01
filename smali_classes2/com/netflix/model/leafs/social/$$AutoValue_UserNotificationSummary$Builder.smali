.class final Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;
.super Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private eventGuid:Ljava/lang/String;

.field private friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

.field private header:Ljava/lang/String;

.field private imageAltText:Ljava/lang/String;

.field private imageTarget:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private inQueue:Ljava/lang/Boolean;

.field private landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

.field private messageGuid:Ljava/lang/String;

.field private messageName:Ljava/lang/String;

.field private messageString:Ljava/lang/String;

.field private read:Ljava/lang/Boolean;

.field private showTimestamp:Ljava/lang/Boolean;

.field private textTarget:Ljava/lang/String;

.field private timestamp:Ljava/lang/Long;

.field private trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

.field private tvCardUrl:Ljava/lang/String;

.field private urlTarget:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/netflix/model/leafs/social/UserNotificationSummary;)V
    .locals 2

    .line 378
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;-><init>()V

    .line 379
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageName:Ljava/lang/String;

    .line 380
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageGuid:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->eventGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->eventGuid:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoId:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 384
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoTitle:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->inQueue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->inQueue:Ljava/lang/Boolean;

    .line 386
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageUrl:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageAltText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageAltText:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageTarget:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->tvCardUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->tvCardUrl:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->header()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->header:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->body()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->body:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->textTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->textTarget:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->urlTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->urlTarget:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    .line 395
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->read()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->read:Ljava/lang/Boolean;

    .line 396
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->timestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->timestamp:Ljava/lang/Long;

    .line 397
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->showTimestamp()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->showTimestamp:Ljava/lang/Boolean;

    .line 398
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    .line 399
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    .line 400
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/model/leafs/social/UserNotificationSummary;Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;-><init>(Lcom/netflix/model/leafs/social/UserNotificationSummary;)V

    return-void
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/netflix/model/leafs/social/UserNotificationSummary;
    .locals 27

    move-object/from16 v0, p0

    .line 515
    iget-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->inQueue:Ljava/lang/Boolean;

    const-string v2, ""

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " inQueue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    :cond_0
    iget-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->read:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    :cond_1
    iget-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->timestamp:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    :cond_2
    iget-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->showTimestamp:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " showTimestamp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    new-instance v1, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;

    move-object v3, v1

    iget-object v4, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageGuid:Ljava/lang/String;

    iget-object v6, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->eventGuid:Ljava/lang/String;

    iget-object v7, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoId:Ljava/lang/String;

    iget-object v8, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v9, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoTitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->inQueue:Ljava/lang/Boolean;

    .line 537
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iget-object v11, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageUrl:Ljava/lang/String;

    iget-object v12, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageAltText:Ljava/lang/String;

    iget-object v13, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageTarget:Ljava/lang/String;

    iget-object v14, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->tvCardUrl:Ljava/lang/String;

    iget-object v15, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->header:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->body:Ljava/lang/String;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->textTarget:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->urlTarget:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->read:Ljava/lang/Boolean;

    .line 547
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->timestamp:Ljava/lang/Long;

    .line 548
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->showTimestamp:Ljava/lang/Boolean;

    .line 549
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageString:Ljava/lang/String;

    move-object/from16 v26, v2

    invoke-direct/range {v3 .. v26}, Lcom/netflix/model/leafs/social/AutoValue_UserNotificationSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;ZJZLcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;Lcom/netflix/model/leafs/social/FriendProfile;Ljava/lang/String;)V

    return-object v1

    .line 528
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public eventGuid(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->eventGuid:Ljava/lang/String;

    return-object p0
.end method

.method public friendProfile(Lcom/netflix/model/leafs/social/FriendProfile;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    return-object p0
.end method

.method public header(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->header:Ljava/lang/String;

    return-object p0
.end method

.method public imageAltText(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageAltText:Ljava/lang/String;

    return-object p0
.end method

.method public imageTarget(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageTarget:Ljava/lang/String;

    return-object p0
.end method

.method public imageUrl(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public inQueue(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 434
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->inQueue:Ljava/lang/Boolean;

    return-object p0
.end method

.method public landingPage(Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    return-object p0
.end method

.method public messageGuid(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageGuid:Ljava/lang/String;

    return-object p0
.end method

.method public messageName(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageName:Ljava/lang/String;

    return-object p0
.end method

.method public messageString(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->messageString:Ljava/lang/String;

    return-object p0
.end method

.method public read(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 484
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->read:Ljava/lang/Boolean;

    return-object p0
.end method

.method public showTimestamp(Z)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 494
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->showTimestamp:Ljava/lang/Boolean;

    return-object p0
.end method

.method public textTarget(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->textTarget:Ljava/lang/String;

    return-object p0
.end method

.method public timestamp(J)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 489
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public trackingInfo(Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    return-object p0
.end method

.method public tvCardUrl(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->tvCardUrl:Ljava/lang/String;

    return-object p0
.end method

.method public urlTarget(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->urlTarget:Ljava/lang/String;

    return-object p0
.end method

.method public videoId(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method public videoTitle(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoTitle:Ljava/lang/String;

    return-object p0
.end method

.method public videoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object p0
.end method
