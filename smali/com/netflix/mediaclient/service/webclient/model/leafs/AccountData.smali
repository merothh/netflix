.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;
.super Ljava/lang/Object;
.source "AccountData.java"


# instance fields
.field private user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

.field private final userProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object v0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->userProfiles:Ljava/util/List;

    return-object v0
.end method

.method public setUser(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->user:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-void
.end method
