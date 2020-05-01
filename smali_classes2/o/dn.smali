.class public Lo/dn;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static d(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)Lo/dh;
    .locals 2

    .line 26
    instance-of v0, p0, Lcom/netflix/mediaclient/drm/InAppWidevineMediaDrm$ProvisionRequest;

    if-eqz v0, :cond_0

    const-string v0, "nf_net"

    const-string v1, "Netflix Embedded Widevine provisioning request"

    .line 27
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lo/dg;

    invoke-direct {v0, p0, p1}, Lo/dg;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lo/adk;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lo/cZ;

    invoke-direct {v0, p0, p1}, Lo/cZ;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lo/da;

    invoke-direct {v0, p0, p1}, Lo/da;-><init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V

    return-object v0
.end method
