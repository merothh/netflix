.class public abstract Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract baseTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.end method

.method public abstract build()Lcom/netflix/model/leafs/social/UserNotificationsListSummary;
.end method

.method public abstract mdpTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.end method

.method public abstract notifications(Ljava/util/List;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;"
        }
    .end annotation
.end method

.method public abstract playerTrackId(I)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.end method

.method public abstract requestId(Ljava/lang/String;)Lcom/netflix/model/leafs/social/UserNotificationsListSummary$Builder;
.end method
