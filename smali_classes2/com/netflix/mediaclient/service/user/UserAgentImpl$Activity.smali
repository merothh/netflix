.class Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zX;
.implements Lo/ze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/user/UserAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field private b:Ljava/lang/String;

.field private c:Lo/aie;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 2747
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;)V
    .locals 0

    .line 2747
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;
    .locals 0

    .line 2747
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 0

    .line 2747
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;
    .locals 0

    .line 2747
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "useragent_current_profile_id"

    if-nez p1, :cond_0

    const-string p1, "nf_service_useragent"

    const-string v1, ""

    .line 2838
    invoke-static {p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "TEMP_PROFILE_ID"

    .line 2840
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2841
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;
    .locals 0

    .line 2747
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2907
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "nf_service_useragent"

    const-string v2, "Update user credentials: %s : %s, %s : %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2908
    iget-object v0, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d:Ljava/lang/String;

    .line 2909
    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b:Ljava/lang/String;

    return-void
.end method

.method private f()Lo/aie;
    .locals 7

    const-string v0, "nf_service_useragent"

    const-string v1, "getMSLUserCredentialRegistry:: User profile is NOT known to MSL, get cookies for UserAuthenticationData."

    .line 2795
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d()Ljava/lang/String;

    move-result-object v1

    .line 2798
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e()Ljava/lang/String;

    move-result-object v2

    .line 2801
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    new-array v3, v5, [Ljava/lang/Object;

    .line 2802
    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v6, "getMSLUserCredentialRegistry:: Netflix ID is NOT known for profile %s even if it should be!"

    invoke-static {v0, v6, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2805
    :goto_0
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v3, v5, [Ljava/lang/Object;

    .line 2806
    iget-object v6, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v6, "getMSLUserCredentialRegistry:: Secure Netflix ID is NOT known for profile %s even if it should be!"

    invoke-static {v0, v6, v3}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    .line 2811
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c:Lo/aie;

    return-object v0

    :cond_2
    new-array v3, v5, [Ljava/lang/Object;

    .line 2814
    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "getMSLUserCredentialRegistry:: Authorization cookies known for profile %s"

    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2815
    new-instance v0, Lo/ahY;

    invoke-direct {v0, v1, v2}, Lo/ahY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private h()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 1

    .line 2892
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2897
    :cond_0
    invoke-interface {v0}, Lo/cz;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public O_()Lo/aie;
    .locals 3

    .line 2768
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2771
    invoke-interface {v0}, Lo/cz;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2776
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v0

    .line 2777
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "nf_service_useragent"

    if-eqz v1, :cond_1

    const-string v0, "getMSLUserCredentialRegistry:: User profile is not known, regular workflow"

    .line 2778
    invoke-static {v2, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c:Lo/aie;

    return-object v0

    .line 2782
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/zE;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "getMSLUserCredentialRegistry:: User profile is known to MSL, regular workflow."

    .line 2784
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c:Lo/aie;

    return-object v0

    .line 2788
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->f()Lo/aie;

    move-result-object v0

    return-object v0

    .line 2772
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c:Lo/aie;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 2852
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/cI;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lo/afP;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 2821
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 2824
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2826
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e(Lo/aie;)V

    .line 2827
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2857
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->c()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/cI;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lo/afP;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "nf_service_useragent"

    const-string v1, "We did not received authorization credentials!"

    .line 2916
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    monitor-exit p0

    return v0

    .line 2920
    :cond_0
    :try_start_1
    iget-object v1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "nf_service_useragent"

    const-string v1, "We did not received back userId!"

    .line 2921
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2922
    monitor-exit p0

    return v0

    .line 2925
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    .line 2926
    iget-object v2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v0, "nf_service_useragent"

    const-string v1, "Same user, update cookies!"

    .line 2927
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 2929
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getUserCredentialProvider()Lo/Ar;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lo/Ar;->b(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2930
    monitor-exit p0

    return v3

    :cond_2
    :try_start_3
    const-string v2, "nf_service_useragent"

    const-string v4, "User in update %s differs than current user %s, profile is changed, DO NOT update cookies!"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 2933
    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    aput-object p1, v5, v0

    aput-object v1, v5, v3

    invoke-static {v2, v4, v5}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2934
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2757
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2863
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d:Ljava/lang/String;

    return-object v0

    .line 2866
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2870
    :cond_1
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2878
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b:Ljava/lang/String;

    return-object v0

    .line 2881
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2885
    :cond_1
    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized e(Lo/aie;)V
    .locals 0

    monitor-enter p0

    .line 2832
    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c:Lo/aie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2833
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 2939
    :try_start_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d:Ljava/lang/String;

    .line 2940
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 2947
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->g()V

    const/4 v0, 0x0

    .line 2948
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 2762
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e:Ljava/lang/String;

    return-object v0
.end method
