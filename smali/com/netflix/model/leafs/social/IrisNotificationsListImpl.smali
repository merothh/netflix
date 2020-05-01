.class public Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;
.super Ljava/lang/Object;
.source "IrisNotificationsListImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end field

.field summary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->summary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    const-class v1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Ljava/util/List;Lcom/netflix/falkor/ModelProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;",
            "Lcom/netflix/falkor/ModelProxy",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorIrisNotification;

    iget-object v1, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->video:Lcom/netflix/falkor/Ref;

    invoke-virtual {v1}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/netflix/falkor/ModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/branches/FalkorVideo;

    iget-object v3, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v3, v1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->fillVideoDetails(Lcom/netflix/model/branches/FalkorVideo;)V

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    iget-object v0, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->summary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    iput-object p2, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->summary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 0

    return-object p0
.end method

.method public getSocialNotifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    return-object v0
.end method

.method public getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->summary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->summary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;->notifications:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
