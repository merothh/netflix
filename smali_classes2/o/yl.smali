.class public final Lo/yl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/yl$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/yl$Application;


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lo/yQ;

.field private final h:Lo/ym;

.field private final i:Lo/zE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/yl$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/yl$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/yl;->d:Lo/yl$Application;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/zE;Lo/yQ;Lo/ym;)V
    .locals 1

    const-string v0, "mUserAgent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mMslClient"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mRequestFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iput-object p2, p0, Lo/yl;->i:Lo/zE;

    iput-object p3, p0, Lo/yl;->g:Lo/yQ;

    iput-object p4, p0, Lo/yl;->h:Lo/ym;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/yl;->e:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/yl;->b:Ljava/util/HashMap;

    return-void
.end method

.method private final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lo/yl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    iget-object v4, p0, Lo/yl;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 91
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    const-string v0, "nf_user_fetchAllUserProfiles"

    const-string v4, "Profile %s authorization data call did not reported back yet"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 92
    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "nf_user_fetchAllUserProfiles"

    const-string v1, "Profile data retrieved for all profiles!"

    .line 97
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lo/yl;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    iget-object v0, p0, Lo/yl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "nf_user_fetchAllUserProfiles"

    const-string v1, "Check if some profile is added in between..."

    .line 101
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lo/yl;->b()V

    .line 103
    iget-object v0, p0, Lo/yl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_2

    const-string v0, "nf_user_fetchAllUserProfiles"

    const-string v1, "All profiles authorization tokens retrieved..."

    .line 104
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lo/yl;->h:Lo/ym;

    if-eqz v0, :cond_3

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lo/ym;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    :cond_2
    const-string v0, "nf_user_fetchAllUserProfiles"

    const-string v1, "Need to fetch newly added %d profile(s)"

    new-array v3, v3, [Ljava/lang/Object;

    .line 107
    iget-object v4, p0, Lo/yl;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final synthetic a(Lo/yl;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/yl;->a()V

    return-void
.end method

.method private final b()V
    .locals 4

    .line 118
    iget-object v0, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "nf_user_fetchAllUserProfiles"

    const-string v1, "No profiles found, it should NOT happen!"

    .line 120
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object v0, Lo/LegacyErrorStrings;->aq:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v1, "CommonStatus.NO_PROFILES_FOUND"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, v0}, Lo/yl;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 126
    iget-object v2, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Ljava/lang/String;)Lo/ze;

    move-result-object v2

    if-nez v2, :cond_1

    .line 128
    iget-object v2, p0, Lo/yl;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lo/yl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "profileId"

    .line 133
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/yl;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void

    .line 118
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<com.netflix.mediaclient.service.webclient.model.leafs.UserProfile>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic b(Lo/yl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lo/yl;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public static final synthetic b(Lo/yl;Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lo/yl;->d(Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private final declared-synchronized c(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lo/yl;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lo/yl;->h:Lo/ym;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/ym;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 p1, 0x0

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/yl;->c:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final synthetic d(Lo/yl;)Ljava/util/HashMap;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/yl;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method private final d(Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 66
    new-instance p3, Lo/yl$Activity;

    invoke-direct {p3, p0, p1}, Lo/yl$Activity;-><init>(Lo/yl;Ljava/lang/String;)V

    .line 80
    iget-object p4, p0, Lo/yl;->g:Lo/yQ;

    check-cast p3, Lo/yq;

    invoke-virtual {p4, p1, p3}, Lo/yQ;->a(Ljava/lang/String;Lo/yq;)Lo/yA;

    move-result-object p3

    const-string p4, "request"

    .line 81
    invoke-static {p3, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p4, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/yA;->c(Lo/zX;)V

    .line 82
    iget-object p1, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    check-cast p3, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public static final synthetic e(Lo/yl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl;
    .locals 0

    .line 15
    iget-object p0, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    return-object p0
.end method

.method private final e(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "nf_user_fetchAllUserProfiles"

    const-string v2, "Fetch profile %s auth data"

    .line 39
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    iget-object v0, p0, Lo/yl;->i:Lo/zE;

    iget-object v2, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j()Lo/zX;

    move-result-object v2

    const-string v3, "mUserAgent.mslUserCredentialRegistry"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/zX;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lo/zE;->b(Ljava/lang/String;Ljava/lang/String;)Lo/aid;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "fetchProfileAuthorizationCredentials failed, userId token was not found for current user id. It should not happen!"

    .line 43
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object p1, Lo/LegacyErrorStrings;->an:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v0, "CommonStatus.MSL_USER_ID_TOKEN_NOT_FOUND"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0, p1}, Lo/yl;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 49
    :cond_0
    new-instance v1, Lo/yl$TaskDescription;

    invoke-direct {v1, p0, p1, v0}, Lo/yl$TaskDescription;-><init>(Lo/yl;Ljava/lang/String;Lo/aid;)V

    .line 60
    iget-object v2, p0, Lo/yl;->g:Lo/yQ;

    check-cast v1, Lo/yq;

    invoke-virtual {v2, p1, v1}, Lo/yQ;->c(Ljava/lang/String;Lo/yq;)Lo/yC;

    move-result-object v1

    const-string v2, "request"

    .line 61
    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    check-cast v0, Lo/aie;

    invoke-virtual {v2, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/yC;->c(Lo/zX;)V

    .line 62
    iget-object p1, p0, Lo/yl;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lo/yl;->b()V

    return-void
.end method
