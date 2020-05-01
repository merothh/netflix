.class public Lo/acC;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    .line 28
    const-class v1, Lo/fN;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lo/fL;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lo/fK;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lo/fM;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lo/fJ;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lo/fO;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lo/fR;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lo/fS;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Lo/fP;->e([Ljava/lang/Class;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "signInConfigData"

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object p0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->abAllocations:Ljava/util/List;

    invoke-static {p0}, Lo/cP;->d(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
