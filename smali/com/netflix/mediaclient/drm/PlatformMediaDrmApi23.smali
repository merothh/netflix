.class public Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;
.super Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;,
        Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;
    }
.end annotation


# instance fields
.field protected mOnExpirationUpdateListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;

.field protected mOnKeyStatusChangeListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi22;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->convertKeyStatuses(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static convertKeyStatus(Landroid/media/MediaDrm$KeyStatus;)Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;-><init>(Landroid/media/MediaDrm$KeyStatus;)V

    return-object v0
.end method

.method private static convertKeyStatuses(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 106
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaDrm$KeyStatus;

    invoke-static {v2}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->convertKeyStatus(Landroid/media/MediaDrm$KeyStatus;)Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public setOnExpirationUpdateListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mOnExpirationUpdateListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mOnExpirationUpdateListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;

    .line 42
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mOnExpirationUpdateListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOnKeyStatusChangeListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;-><init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mOnKeyStatusChangeListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mOnKeyStatusChangeListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->mOnKeyStatusChangeListener:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    return-void
.end method
