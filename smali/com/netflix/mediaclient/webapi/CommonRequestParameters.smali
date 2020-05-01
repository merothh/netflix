.class public final Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
.super Ljava/lang/Object;
.source "CommonRequestParameters.java"


# instance fields
.field public appVersion:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public deviceCategory:Ljava/lang/String;

.field public deviceType:Ljava/lang/String;

.field public geolocationCountry:Ljava/lang/String;

.field public languages:Ljava/lang/String;

.field public osVersion:Ljava/lang/String;

.field public profileToken:Ljava/lang/String;

.field public uiVersion:Ljava/lang/String;

.field public withCredentials:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceWithCredentials()Lcom/netflix/mediaclient/webapi/CommonRequestParameters;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;

    invoke-direct {v0}, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;-><init>()V

    .line 40
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/netflix/mediaclient/webapi/CommonRequestParameters;->withCredentials:Ljava/lang/Boolean;

    .line 41
    return-object v0
.end method
