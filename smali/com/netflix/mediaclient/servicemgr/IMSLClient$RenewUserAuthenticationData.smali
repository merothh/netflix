.class public Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
.super Ljava/lang/Object;
.source "IMSLClient.java"


# instance fields
.field public masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field public userId:Ljava/lang/String;

.field public userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 254
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 255
    return-void
.end method
