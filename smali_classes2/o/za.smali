.class public Lo/za;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/hF;


# instance fields
.field private a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

.field private final b:Lo/cz;

.field private final c:Lo/hy;

.field private final d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

.field private e:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

.field private final f:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Lo/cG;Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lo/bV;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 37
    iput-object v0, p0, Lo/za;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 39
    new-instance v0, Lo/za$1;

    invoke-direct {v0, p0}, Lo/za$1;-><init>(Lo/za;)V

    iput-object v0, p0, Lo/za;->f:Landroid/telephony/PhoneStateListener;

    .line 64
    iput-object p1, p0, Lo/za;->b:Lo/cz;

    .line 65
    iput-object p2, p0, Lo/za;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    .line 66
    new-instance p1, Lo/hy;

    invoke-virtual {p0}, Lo/za;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lo/za;->b:Lo/cz;

    invoke-direct {p1, p2, v0}, Lo/hy;-><init>(Landroid/content/Context;Lo/cz;)V

    iput-object p1, p0, Lo/za;->c:Lo/hy;

    return-void
.end method

.method static synthetic b(Lo/za;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
    .locals 0

    .line 28
    iget-object p0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 167
    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    if-eqz v0, :cond_0

    const-string v0, "nf_voip_agent"

    const-string v1, "--- VOIPAGENT destroyVoipEngineIfExist"

    .line 168
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->n()V

    .line 170
    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->x()V

    .line 171
    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 173
    iput-object v0, p0, Lo/za;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lo/za;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lo/za;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lo/za;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->z()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "voip"

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 161
    invoke-direct {p0}, Lo/za;->c()V

    .line 162
    invoke-virtual {p0}, Lo/za;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 163
    iget-object v1, p0, Lo/za;->f:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public c(Ljava/lang/String;Lo/zc;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lo/za;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v0

    iget-object v1, p0, Lo/za;->c:Lo/hy;

    invoke-virtual {v1, p1, p2}, Lo/hy;->d(Ljava/lang/String;Lo/zc;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public d()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .line 182
    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    return-object v0
.end method

.method public d(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 11

    .line 124
    invoke-static {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Z

    move-result v0

    const-string v1, "nf_voip_agent"

    if-nez v0, :cond_0

    const-string p1, "Invalid call config data"

    .line 125
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getSdkType()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lo/za;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 135
    iget-object p1, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    return-object p1

    .line 138
    :cond_1
    invoke-direct {p0}, Lo/za;->c()V

    .line 140
    new-instance v10, Lo/yV;

    invoke-virtual {p0}, Lo/za;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lo/za;->getServiceNotificationHelper()Lo/Ac;

    move-result-object v5

    iget-object v6, p0, Lo/za;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    iget-object v7, p0, Lo/za;->b:Lo/cz;

    .line 141
    invoke-virtual {p0}, Lo/za;->getErrorHandler()Lo/zF;

    move-result-object v9

    move-object v2, v10

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v9}, Lo/yV;-><init>(Landroid/content/Context;Lo/za;Lo/Ac;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lo/zF;)V

    iput-object v10, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    const-string p1, "Instantiating Linphone VoIP engine"

    .line 143
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lo/za;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 148
    iget-object v2, p0, Lo/za;->f:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    iput-object v0, p0, Lo/za;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 154
    iget-object p1, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->g()V

    .line 156
    iget-object p1, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    return-object p1
.end method

.method public d(Lo/cV;)V
    .locals 4

    .line 94
    new-instance v0, Lo/za$2;

    invoke-direct {v0, p0, p1}, Lo/za$2;-><init>(Lo/za;Lo/cV;)V

    .line 103
    invoke-virtual {p0}, Lo/za;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object p1

    iget-object v1, p0, Lo/za;->c:Lo/hy;

    invoke-static {}, Lo/hw;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lo/za;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0, v3}, Lo/hy;->e(Ljava/util/List;Lo/cV;Z)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lo/za;->c()V

    return-void
.end method

.method protected doInit()V
    .locals 1

    .line 191
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lo/za;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Lo/za;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/za;->a:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->w()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
