.class abstract Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;
.super Lcom/netflix/model/leafs/social/UserNotificationSummary;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/String;

.field private final eventGuid:Ljava/lang/String;

.field private final friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

.field private final header:Ljava/lang/String;

.field private final imageAltText:Ljava/lang/String;

.field private final imageTarget:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final inQueue:Z

.field private final landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

.field private final messageGuid:Ljava/lang/String;

.field private final messageName:Ljava/lang/String;

.field private final messageString:Ljava/lang/String;

.field private final read:Z

.field private final showTimestamp:Z

.field private final textTarget:Ljava/lang/String;

.field private final timestamp:J

.field private final trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

.field private final tvCardUrl:Ljava/lang/String;

.field private final urlTarget:Ljava/lang/String;

.field private final videoId:Ljava/lang/String;

.field private final videoTitle:Ljava/lang/String;

.field private final videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;ZJZLcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;Lcom/netflix/model/leafs/social/FriendProfile;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 80
    invoke-direct {p0}, Lcom/netflix/model/leafs/social/UserNotificationSummary;-><init>()V

    move-object v1, p1

    .line 81
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageName:Ljava/lang/String;

    move-object v1, p2

    .line 82
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageGuid:Ljava/lang/String;

    move-object v1, p3

    .line 83
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->eventGuid:Ljava/lang/String;

    move-object v1, p4

    .line 84
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoId:Ljava/lang/String;

    move-object v1, p5

    .line 85
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v1, p6

    .line 86
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoTitle:Ljava/lang/String;

    move v1, p7

    .line 87
    iput-boolean v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->inQueue:Z

    move-object v1, p8

    .line 88
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageUrl:Ljava/lang/String;

    move-object v1, p9

    .line 89
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageAltText:Ljava/lang/String;

    move-object v1, p10

    .line 90
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageTarget:Ljava/lang/String;

    move-object v1, p11

    .line 91
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->tvCardUrl:Ljava/lang/String;

    move-object v1, p12

    .line 92
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->header:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 93
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->body:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 94
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->textTarget:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 95
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->urlTarget:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 96
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move/from16 v1, p17

    .line 97
    iput-boolean v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->read:Z

    move-wide/from16 v1, p18

    .line 98
    iput-wide v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->timestamp:J

    move/from16 v1, p20

    .line 99
    iput-boolean v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->showTimestamp:Z

    move-object/from16 v1, p21

    .line 100
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-object/from16 v1, p22

    .line 101
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    move-object/from16 v1, p23

    .line 102
    iput-object v1, v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public body()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->body:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 270
    :cond_0
    instance-of v1, p1, Lcom/netflix/model/leafs/social/UserNotificationSummary;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 271
    check-cast p1, Lcom/netflix/model/leafs/social/UserNotificationSummary;

    .line 272
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageName:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_0
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageGuid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 273
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageGuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_1
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->eventGuid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->eventGuid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->eventGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_2
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 275
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_3
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v1, :cond_5

    .line 276
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_4
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoTitle:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 277
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->videoTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_5
    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->inQueue:Z

    .line 278
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->inQueue()Z

    move-result v3

    if-ne v1, v3, :cond_13

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageUrl:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 279
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_6
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageAltText:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 280
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageAltText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageAltText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_7
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageTarget:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 281
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->imageTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_8
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->tvCardUrl:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 282
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->tvCardUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->tvCardUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_9
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->header:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 283
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->header()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->header()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_a
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->body:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 284
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->body()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_b

    :cond_c
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->body()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_b
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->textTarget:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 285
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->textTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_c

    :cond_d
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->textTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_c
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->urlTarget:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 286
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->urlTarget()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_d

    :cond_e
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->urlTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_d
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    if-nez v1, :cond_f

    .line 287
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_e

    :cond_f
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_e
    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->read:Z

    .line 288
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->read()Z

    move-result v3

    if-ne v1, v3, :cond_13

    iget-wide v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->timestamp:J

    .line 289
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->timestamp()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->showTimestamp:Z

    .line 290
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->showTimestamp()Z

    move-result v3

    if-ne v1, v3, :cond_13

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    if-nez v1, :cond_10

    .line 291
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_f

    :cond_10
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_f
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    if-nez v1, :cond_11

    .line 292
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_10

    :cond_11
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_10
    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageString:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 293
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_11

    :cond_12
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/UserNotificationSummary;->messageString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_11

    :cond_13
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_14
    return v2
.end method

.method public eventGuid()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->eventGuid:Ljava/lang/String;

    return-object v0
.end method

.method public friendProfile()Lcom/netflix/model/leafs/social/FriendProfile;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromUser"
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 302
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 304
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageGuid:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 306
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->eventGuid:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 308
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoId:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 310
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 312
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoTitle:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 314
    iget-boolean v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->inQueue:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_6

    const/16 v3, 0x4cf

    goto :goto_6

    :cond_6
    const/16 v3, 0x4d5

    :goto_6
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 316
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageUrl:Ljava/lang/String;

    if-nez v3, :cond_7

    const/4 v3, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 318
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageAltText:Ljava/lang/String;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 320
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageTarget:Ljava/lang/String;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 322
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->tvCardUrl:Ljava/lang/String;

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 324
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->header:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 326
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->body:Ljava/lang/String;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 328
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->textTarget:Ljava/lang/String;

    if-nez v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_d
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 330
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->urlTarget:Ljava/lang/String;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 332
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    if-nez v3, :cond_f

    const/4 v3, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_f
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 334
    iget-boolean v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->read:Z

    if-eqz v3, :cond_10

    const/16 v3, 0x4cf

    goto :goto_10

    :cond_10
    const/16 v3, 0x4d5

    :goto_10
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 336
    iget-wide v6, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->timestamp:J

    const/16 v3, 0x20

    ushr-long v8, v6, v3

    xor-long/2addr v6, v8

    long-to-int v3, v6

    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 338
    iget-boolean v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->showTimestamp:Z

    if-eqz v3, :cond_11

    goto :goto_11

    :cond_11
    const/16 v4, 0x4d5

    :goto_11
    xor-int/2addr v0, v4

    mul-int v0, v0, v2

    .line 340
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    if-nez v3, :cond_12

    const/4 v3, 0x0

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_12
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 342
    iget-object v3, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    if-nez v3, :cond_13

    const/4 v3, 0x0

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_13
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 344
    iget-object v2, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageString:Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public header()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->header:Ljava/lang/String;

    return-object v0
.end method

.method public imageAltText()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public imageTarget()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageTarget:Ljava/lang/String;

    return-object v0
.end method

.method public imageUrl()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public inQueue()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->inQueue:Z

    return v0
.end method

.method public landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    return-object v0
.end method

.method public messageGuid()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public messageName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageName:Ljava/lang/String;

    return-object v0
.end method

.method public messageString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgString"
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageString:Ljava/lang/String;

    return-object v0
.end method

.method public read()Z
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->read:Z

    return v0
.end method

.method public showTimestamp()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->showTimestamp:Z

    return v0
.end method

.method public textTarget()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->textTarget:Ljava/lang/String;

    return-object v0
.end method

.method public timestamp()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->timestamp:J

    return-wide v0
.end method

.method public toBuilder()Lcom/netflix/model/leafs/social/UserNotificationSummary$Builder;
    .locals 2

    .line 350
    new-instance v0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$Builder;-><init>(Lcom/netflix/model/leafs/social/UserNotificationSummary;Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserNotificationSummary{messageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventGuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->eventGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->inQueue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageAltText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageAltText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->imageTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tvCardUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->tvCardUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->textTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->urlTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", landingPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->landingPage:Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", showTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->showTimestamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", friendProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->friendProfile:Lcom/netflix/model/leafs/social/FriendProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackingInfo()Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->trackingInfo:Lcom/netflix/model/leafs/social/UserNotificationLandingTrackingInfo;

    return-object v0
.end method

.method public tvCardUrl()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->tvCardUrl:Ljava/lang/String;

    return-object v0
.end method

.method public urlTarget()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->urlTarget:Ljava/lang/String;

    return-object v0
.end method

.method public videoId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public videoTitle()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public videoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/netflix/model/leafs/social/$$AutoValue_UserNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method
