.class public Lcom/netflix/model/leafs/social/IrisNotificationSummary;
.super Ljava/lang/Object;
.source "IrisNotificationSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SocialNotificationSummary"


# instance fields
.field private bWasRead:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation
.end field

.field private bWasThanked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isThanked"
    .end annotation
.end field

.field private bodyText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromUser"
    .end annotation
.end field

.field private headerText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageAltText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageAltText"
    .end annotation
.end field

.field private imageTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageTarget"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private inQueue:Z

.field private messageString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgString"
    .end annotation
.end field

.field private showTimestamp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showTimestamp"
    .end annotation
.end field

.field private showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showType"
    .end annotation
.end field

.field private storyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storyId"
    .end annotation
.end field

.field private textTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textTarget"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private tvCardUrl:Ljava/lang/String;

.field private type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgType"
    .end annotation
.end field

.field private videoId:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 358
    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .prologue
    const/16 v7, 0x14

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/16 v0, 0x18

    new-array v6, v0, [Ljava/lang/String;

    .line 326
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    .line 328
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    .line 330
    const/4 v0, 0x2

    aget-object v1, v6, v0

    .line 331
    const/4 v0, 0x3

    aget-object v2, v6, v0

    .line 332
    const/4 v0, 0x4

    aget-object v3, v6, v0

    .line 333
    const/4 v0, 0x5

    aget-object v4, v6, v0

    .line 334
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    .line 336
    const/4 v0, 0x6

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    .line 337
    const/4 v0, 0x7

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    .line 338
    const/16 v0, 0x8

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    .line 339
    const/16 v0, 0x9

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    .line 340
    const/16 v0, 0xa

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    .line 341
    const/16 v0, 0xb

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    .line 342
    const/16 v0, 0xc

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    .line 343
    const/16 v0, 0xd

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    .line 344
    const/16 v0, 0xe

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    .line 345
    const/16 v0, 0xf

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    .line 346
    const/16 v0, 0x10

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 347
    const/16 v0, 0x11

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    .line 348
    const/16 v0, 0x12

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    .line 349
    const/16 v0, 0x13

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    .line 350
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 353
    :cond_0
    const/16 v0, 0x15

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    .line 354
    const/16 v0, 0x16

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    .line 355
    const/16 v0, 0x17

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public static getNotificationType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 417
    if-ne p0, p1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 421
    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 424
    goto :goto_0

    .line 427
    :cond_3
    check-cast p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 429
    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 430
    iget-object v2, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 431
    goto :goto_0

    .line 433
    :cond_4
    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 434
    goto :goto_0

    .line 437
    :cond_5
    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    iget-boolean v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 438
    goto :goto_0

    .line 441
    :cond_6
    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    iget-boolean v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 442
    goto :goto_0

    .line 445
    :cond_7
    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 446
    goto :goto_0

    .line 449
    :cond_8
    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    iget-boolean v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 450
    goto :goto_0
.end method

.method public fillVideoDetails(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 235
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$Summary;

    .line 236
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    .line 237
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 238
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    .line 239
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTvCardUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    .line 240
    const-string/jumbo v0, "inQueue"

    invoke-virtual {p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$InQueue;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    .line 241
    return-void
.end method

.method public getBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAltText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getInQueueValue()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    return v0
.end method

.method public getMessageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTimestamp()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    return v0
.end method

.method public getShowType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getStoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    return-object v0
.end method

.method public getTVCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    return-wide v0
.end method

.method public getType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getWasRead()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    return v0
.end method

.method public getWasThanked()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 99
    sget-boolean v1, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "SocialNotificationSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Populating with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 105
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const-string/jumbo v1, "SocialNotificationSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping null value for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    goto :goto_0

    .line 111
    :sswitch_0
    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "storyId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "msgType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "msgString"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "fromUser"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "imageAltText"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "imageTarget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "showTimestamp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v4, "header"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v4, "body"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v4, "textTarget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v4, "imageUrl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v4, "isRead"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v4, "isThanked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v4, "showType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xf

    goto/16 :goto_1

    .line 116
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    goto/16 :goto_0

    .line 119
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getNotificationType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    goto/16 :goto_0

    .line 122
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    :pswitch_4
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    .line 126
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->populate(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 129
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    goto/16 :goto_0

    .line 132
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    goto/16 :goto_0

    .line 141
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 150
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    goto/16 :goto_0

    .line 156
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    goto/16 :goto_0

    .line 159
    :pswitch_f
    const-string/jumbo v0, "movie"

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_2
    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_2

    .line 163
    :cond_5
    return-void

    .line 111
    :sswitch_data_0
    .sparse-switch
        -0x7dada934 -> :sswitch_7
        -0x73395781 -> :sswitch_e
        -0x704f6710 -> :sswitch_1
        -0x57d9710e -> :sswitch_3
        -0x4a2f6d6b -> :sswitch_4
        -0x48cb1d73 -> :sswitch_9
        -0x4657ca20 -> :sswitch_d
        -0x333c9dec -> :sswitch_c
        -0x22f08567 -> :sswitch_8
        -0x1431e829 -> :sswitch_f
        -0x12450765 -> :sswitch_6
        0xd1b -> :sswitch_0
        0x2e39a2 -> :sswitch_a
        0x3492916 -> :sswitch_5
        0x5018025b -> :sswitch_2
        0x6f0a4d1e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    sget-boolean v2, Lcom/netflix/mediaclient/service/falkor/Falkor;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 168
    const-string/jumbo v2, "SocialNotificationSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Populating with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 223
    :goto_1
    return v0

    .line 170
    :sswitch_0
    const-string/jumbo v3, "id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "storyId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "msgType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "msgString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "fromUser"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "timestamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "imageAltText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "imageTarget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "showTimestamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v3, "header"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v3, "body"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v3, "textTarget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "imageUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "isRead"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "isThanked"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "showType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_0

    .line 172
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    :goto_2
    move v0, v1

    .line 223
    goto/16 :goto_1

    .line 175
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    goto :goto_2

    .line 178
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getNotificationType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    goto :goto_2

    .line 181
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    goto :goto_2

    .line 184
    :pswitch_4
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    .line 185
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    goto :goto_2

    .line 188
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    goto :goto_2

    .line 191
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    goto :goto_2

    .line 194
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    goto :goto_2

    .line 197
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    goto :goto_2

    .line 200
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    goto :goto_2

    .line 203
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    goto :goto_2

    .line 206
    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    goto :goto_2

    .line 209
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    goto :goto_2

    .line 212
    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    goto :goto_2

    .line 215
    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    goto :goto_2

    .line 218
    :pswitch_f
    const-string/jumbo v0, "movie"

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_3
    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_3

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7dada934 -> :sswitch_7
        -0x73395781 -> :sswitch_e
        -0x704f6710 -> :sswitch_1
        -0x57d9710e -> :sswitch_3
        -0x4a2f6d6b -> :sswitch_4
        -0x48cb1d73 -> :sswitch_9
        -0x4657ca20 -> :sswitch_d
        -0x333c9dec -> :sswitch_c
        -0x22f08567 -> :sswitch_8
        -0x1431e829 -> :sswitch_f
        -0x12450765 -> :sswitch_6
        0xd1b -> :sswitch_0
        0x2e39a2 -> :sswitch_a
        0x3492916 -> :sswitch_5
        0x5018025b -> :sswitch_2
        0x6f0a4d1e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setWasRead(Z)V
    .locals 0

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    .line 305
    return-void
.end method

.method public setWasThanked(Z)V
    .locals 0

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SocialNotificationSummary [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", storyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", friendProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bWasRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bWasThanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 372
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 373
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 374
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 376
    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    if-eqz v1, :cond_0

    .line 377
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 378
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 379
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 380
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 382
    :cond_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 383
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 384
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 385
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 386
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 387
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 388
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 389
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 390
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 391
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 392
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 393
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 394
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 395
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 396
    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v1, :cond_1

    .line 397
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 399
    :cond_1
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 400
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 401
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 402
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 403
    return-void
.end method
