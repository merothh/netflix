.class public Lcom/netflix/mediaclient/partner/reference/NetflixPartner;
.super Ljava/lang/Object;
.source "NetflixPartner.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/Partner;


# instance fields
.field private comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

.field private componentName:Landroid/content/ComponentName;

.field private signup:Lcom/netflix/mediaclient/partner/Partner$Signup;

.field private sso:Lcom/netflix/mediaclient/partner/Partner$SSO;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/partner/reference/NetflixSSO;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/partner/reference/NetflixSSO;-><init>(Lcom/netflix/mediaclient/partner/Partner;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->sso:Lcom/netflix/mediaclient/partner/Partner$SSO;

    new-instance v0, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/partner/reference/NetflixSignup;-><init>(Lcom/netflix/mediaclient/partner/Partner;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->signup:Lcom/netflix/mediaclient/partner/Partner$Signup;

    iput-object p2, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPartnerCommunicationHandler()Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    return-object v0
.end method

.method public getSSO()Lcom/netflix/mediaclient/partner/Partner$SSO;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->sso:Lcom/netflix/mediaclient/partner/Partner$SSO;

    return-object v0
.end method

.method public getSignup()Lcom/netflix/mediaclient/partner/Partner$Signup;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->signup:Lcom/netflix/mediaclient/partner/Partner$Signup;

    return-object v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->sso:Lcom/netflix/mediaclient/partner/Partner$SSO;

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->signup:Lcom/netflix/mediaclient/partner/Partner$Signup;

    iput-object v0, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/partner/reference/NetflixPartner;->componentName:Landroid/content/ComponentName;

    return-void
.end method
