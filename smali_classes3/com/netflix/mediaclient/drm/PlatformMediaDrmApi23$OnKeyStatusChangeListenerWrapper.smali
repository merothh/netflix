.class Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnKeyStatusChangeListenerWrapper"
.end annotation


# instance fields
.field private originalListener:Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;

.field final synthetic this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;->this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 70
    iput-object p2, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;->originalListener:Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Original listener can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;->originalListener:Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;

    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23$OnKeyStatusChangeListenerWrapper;->this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;

    invoke-static {p3}, Lcom/netflix/mediaclient/drm/PlatformMediaDrmApi23;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;->onKeyStatusChange(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[BLjava/util/List;Z)V

    return-void
.end method
