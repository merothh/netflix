.class public interface abstract Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onKeyStatusChange(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[BLjava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/drm/NetflixMediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;",
            ">;Z)V"
        }
    .end annotation
.end method
