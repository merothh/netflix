.class public interface abstract Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi22;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;,
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;
    }
.end annotation


# static fields
.field public static final EVENT_SESSION_RECLAIMED:I = 0x5


# virtual methods
.method public abstract setOnExpirationUpdateListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnExpirationUpdateListener;Landroid/os/Handler;)V
.end method

.method public abstract setOnKeyStatusChangeListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$OnKeyStatusChangeListener;Landroid/os/Handler;)V
.end method
