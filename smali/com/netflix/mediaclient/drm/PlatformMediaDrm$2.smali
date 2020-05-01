.class Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->getProvisionRequest()Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

.field final synthetic val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Landroid/media/MediaDrm$ProvisionRequest;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;->this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    iput-object p2, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;->val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;->val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$2;->val$provisionRequest:Landroid/media/MediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
