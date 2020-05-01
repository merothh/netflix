.class Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnExpirationUpdateListenerWrapper"
.end annotation


# instance fields
.field private originalListener:Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;->originalListener:Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Original listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnExpirationUpdateListenerWrapper;->originalListener:Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;->onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V

    return-void
.end method
