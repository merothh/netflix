.class public Lcom/netflix/mediaclient/jsapi/PartnerJSObject;
.super Lcom/netflix/mediaclient/jsapi/JSObject;
.source "PartnerJSObject.java"


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String; = "n_partner_api"

.field private static final JSAPI_handleExternalUserAuth:Ljava/lang/String; = "nrdpPartner.Sso._handleExternalUserAuth"

.field private static final JSAPI_handleExternalUserConfirmation:Ljava/lang/String; = "nrdpPartner.Signup._handleExternalUserConfirmation"

.field private static final JSAPI_handleExternalUserData:Ljava/lang/String; = "nrdpPartner.Signup._handleExternalUserData"

.field private static final JSAPI_handleExternalUserToken:Ljava/lang/String; = "nrdpPartner.Sso._handleExternalUserToken"

.field private static final TAG:Ljava/lang/String; = "nf_partner"


# instance fields
.field private comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

.field private partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/JSObject;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerFactory;

    invoke-direct {v0}, Lcom/netflix/mediaclient/partner/PartnerFactory;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerFactory;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->getErrorForPartner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->returnResultToJS(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static getErrorForPartner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "idx"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v1, "errcode"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private returnResultToJS(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->toJavaScript(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_partner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Injecting event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private toJavaScript(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:(function() { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " console.log(\'Sending event...\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " console.log(\'Event sent.\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExternalSignUpServices()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getExternalSignUpServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalSsoServices()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getExternalSsoServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_partner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nrdpPartner.Signup.getExternalUserData: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", idx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getExternalUserToken(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_partner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nrdpPartner.Sso.getExternalUserToken:: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", idx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "n_partner_api"

    return-object v0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/netflix/mediaclient/jsapi/JSObject;->release()V

    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/PartnerFactory;->releasePartners()V

    iput-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    iput-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    return-void
.end method

.method public requestExternalUserAuth(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_partner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nrdpPartner.Sso.requestExternalUserAuth:: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", idx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$2;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestExternalUserConfirmation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_partner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nrdpPartner.Signup.requestExternalUserConfirmation: service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", idx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
