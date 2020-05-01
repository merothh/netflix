.class public final Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;
.super Ljava/lang/Object;
.source "AuthorizationCredentials.java"


# instance fields
.field public netflixId:Ljava/lang/String;

.field public secureNetflixId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/netflix/mediaclient/webapi/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    .line 29
    return-void
.end method
