.class public interface abstract Lcom/netflix/model/leafs/social/NotificationsListSummary;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract baseTrackId()I
.end method

.method public abstract makeCopy(Ljava/util/List;)Lcom/netflix/model/leafs/social/NotificationsListSummary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;)",
            "Lcom/netflix/model/leafs/social/NotificationsListSummary;"
        }
    .end annotation
.end method

.method public abstract mdpTrackId()I
.end method

.method public abstract notifications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract playerTrackId()I
.end method

.method public abstract requestId()Ljava/lang/String;
.end method
