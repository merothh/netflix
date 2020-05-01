.class public final Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrm$KeyRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/PlatformMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# instance fields
.field private mKeyRequest:Landroid/media/MediaDrm$KeyRequest;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm$KeyRequest;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;->mKeyRequest:Landroid/media/MediaDrm$KeyRequest;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;->mKeyRequest:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$KeyRequest;->mKeyRequest:Landroid/media/MediaDrm$KeyRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
