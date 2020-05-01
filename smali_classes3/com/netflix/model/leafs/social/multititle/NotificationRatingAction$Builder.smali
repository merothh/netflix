.class public abstract Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract action(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction$Builder;
.end method

.method public abstract actionType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction$Builder;
.end method

.method public abstract build()Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction;
.end method

.method public abstract trackingInfo(Lcom/netflix/model/leafs/social/UserNotificationActionTrackingInfo;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction$Builder;
.end method

.method public abstract videoType(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lcom/netflix/model/leafs/social/multititle/NotificationRatingAction$Builder;
.end method
