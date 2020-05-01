.class public Lcom/netflix/mediaclient/partner/reference/NetflixSignup;
.super Ljava/lang/Object;
.source "NetflixSignup.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/Partner$Signup;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_partner"


# instance fields
.field private final owner:Lcom/netflix/mediaclient/partner/Partner;

.field private final service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/partner/Partner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->owner:Lcom/netflix/mediaclient/partner/Partner;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExternalUserData(Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V
    .locals 6

    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "getExternalUserData:: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserData:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequest;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/PartnerRequest;-><init>(Lcom/netflix/mediaclient/partner/PartnerRequestType;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->owner:Lcom/netflix/mediaclient/partner/Partner;

    invoke-interface {v2}, Lcom/netflix/mediaclient/partner/Partner;->getPartnerCommunicationHandler()Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "Partner communication handler is missing. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponseForPartnerCommunicationHandleIsNull(Lcom/netflix/mediaclient/partner/PartnerRequest;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netflix/mediaclient/partner/ResponseListener;->onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v1, "nf_partner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Partner communiction handler found, but requested service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not implemented by this class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponseForServiceMismatch(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netflix/mediaclient/partner/ResponseListener;->onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "nf_partner"

    const-string/jumbo v4, "Partner communiction handler found, send getExternalUserData request"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getIntentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->owner:Lcom/netflix/mediaclient/partner/Partner;

    invoke-interface {v1}, Lcom/netflix/mediaclient/partner/Partner;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "user_id"

    invoke-static {p2}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v2, v0, v3}, Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;->launchWithIntent(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;)V

    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Partner communication handler found, send getExternalUserData request done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    return-object v0
.end method

.method public requestExternalUserConfirmation(Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V
    .locals 6

    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "requestExternalUserConfirmation:: start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserConfirmation:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerRequest;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/PartnerRequest;-><init>(Lcom/netflix/mediaclient/partner/PartnerRequestType;Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->owner:Lcom/netflix/mediaclient/partner/Partner;

    invoke-interface {v2}, Lcom/netflix/mediaclient/partner/Partner;->getPartnerCommunicationHandler()Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "Partner communication handler is missing. This should NOT happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponseForPartnerCommunicationHandleIsNull(Lcom/netflix/mediaclient/partner/PartnerRequest;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netflix/mediaclient/partner/ResponseListener;->onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v1, "nf_partner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Partner communiction handler found, but requested service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not implemented by this class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->service:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponseForServiceMismatch(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/netflix/mediaclient/partner/ResponseListener;->onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "nf_partner"

    const-string/jumbo v4, "Partner communiction handler found, send requestExternalUserConfirmation request"

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getIntentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;->owner:Lcom/netflix/mediaclient/partner/Partner;

    invoke-interface {v1}, Lcom/netflix/mediaclient/partner/Partner;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "user_id"

    invoke-static {p2}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v2, v0, v3}, Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;->launchWithIntent(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;)V

    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Partner communication handler found, send requestExternalUserConfirmation request done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
