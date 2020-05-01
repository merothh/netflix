.class public Lcom/netflix/mediaclient/service/user/UserAgentImpl;
.super Lo/bV;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/user/UserAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;,
        Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;,
        Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;,
        Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;
    }
.end annotation


# instance fields
.field a:Lo/cW;

.field private b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

.field private c:Lo/ym;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

.field private g:Lcom/netflix/mediaclient/android/app/Status;

.field private h:Z

.field private i:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;

.field private j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

.field private k:Z

.field private l:Lo/yQ;

.field private m:Z

.field private n:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

.field private o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

.field private final p:Lo/yq;

.field private s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private t:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 177
    invoke-direct {p0}, Lo/bV;-><init>()V

    .line 151
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g:Lcom/netflix/mediaclient/android/app/Status;

    .line 163
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->m:Z

    .line 171
    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    .line 247
    new-instance v2, Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a:Lo/cW;

    .line 1858
    new-instance v2, Lcom/netflix/mediaclient/service/user/UserAgentImpl$15;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$15;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->p:Lo/yq;

    .line 2587
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    .line 179
    const-class p1, Landroid/content/Context;

    invoke-static {p1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "useragent_userprofiles_data"

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p1}, Lo/yv;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->G()V

    return-void
.end method

.method private E()V
    .locals 2

    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s()Z

    move-result v0

    const-string v1, "nf_service_useragent"

    if-eqz v0, :cond_3

    const-string v0, "Mobile only plan, check restrictions..."

    .line 265
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lo/aek;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Amazon tablets are not allowed to be used for Mobile Only plan!"

    .line 267
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->W()V

    goto :goto_1

    .line 269
    :cond_0
    invoke-static {}, Lo/adq;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/adq;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "Android STB or TV is not allowed for Mobile Only plan!"

    .line 270
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->W()V

    goto :goto_1

    :cond_3
    const-string v0, "Not mobile only plan"

    .line 276
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private F()Ljava/lang/String;
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "useragent_current_profile_id"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private G()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 190
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    sget-object v2, Lo/jE;->b:Lo/jE$ActionBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/jE$ActionBar;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private I()V
    .locals 3

    .line 313
    const-class v0, Lo/zQ;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zQ;

    const-string v1, "nf_service_useragent"

    if-nez v0, :cond_0

    const-string v0, "SafetyNet client not found in lookup, this should not happen!"

    .line 315
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "Device supports SafetyNet, but attestation is in progress"

    .line 319
    invoke-static {v1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$10;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/zQ;)V

    .line 336
    invoke-interface {v0, v1}, Lo/zQ;->c(Lo/zQ$Activity;)V

    return-void
.end method

.method private J()V
    .locals 3

    .line 1762
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->h()V

    .line 1765
    new-instance v0, Lo/aea;

    invoke-direct {v0}, Lo/aea;-><init>()V

    const-string v1, "useragent_userprofiles_data"

    .line 1767
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "useragent_user_data"

    .line 1768
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "useragent_current_profile_id"

    .line 1769
    invoke-virtual {v0, v1}, Lo/aea;->b(Ljava/lang/String;)Z

    const-string v1, "nf_user_status_loggedin"

    const/4 v2, 0x0

    .line 1772
    invoke-virtual {v0, v1, v2}, Lo/aea;->c(Ljava/lang/String;Z)Z

    .line 1774
    invoke-virtual {v0}, Lo/aea;->b()V

    return-void
.end method

.method private K()V
    .locals 4

    .line 437
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j()Lo/zX;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/cz;->d(Lo/zX;ZLo/cJ;)V

    .line 440
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$34;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$34;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lo/ym;)V

    return-void
.end method

.method private L()V
    .locals 0

    .line 643
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->J()V

    return-void
.end method

.method private M()V
    .locals 2

    .line 495
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lo/CarrierIdentifier;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.ui.error.ACTION_ACCOUNT_INACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private N()V
    .locals 2

    .line 1733
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "SignInWithAutoLoginToken"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->existExclusiveSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    goto :goto_0

    .line 1735
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "SignIn"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->existExclusiveSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private O()V
    .locals 1

    const/4 v0, 0x0

    .line 2043
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 2044
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 2045
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/yn;->c(Landroid/content/Context;)V

    return-void
.end method

.method private P()V
    .locals 2

    .line 2031
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/yn;->e(Landroid/content/Context;)V

    .line 2033
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.category.PUSH"

    .line 2034
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2035
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 2036
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v0

    const-string v1, "Login complete"

    invoke-interface {v0, v1}, Lo/zu;->d(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method private Q()Z
    .locals 1

    .line 1949
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private R()V
    .locals 2

    const-string v0, "Logout complete"

    const-string v1, "nf_service_useragent"

    .line 1781
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/yn;->a(Landroid/content/Context;)V

    .line 1784
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object v1

    invoke-interface {v1}, Lo/zE;->a()V

    .line 1785
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->i()V

    .line 1787
    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1789
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->e()Lo/zu;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/zu;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1790
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1791
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    .line 1792
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 1793
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 1794
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->n:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 1795
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->J()V

    .line 1796
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/PartnerReceiver;->d(Landroid/content/Context;Z)V

    .line 1797
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->O()V

    return-void
.end method

.method private S()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 4

    .line 2367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2370
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v2, :cond_1

    .line 2371
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private T()V
    .locals 3

    .line 2392
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    .line 2393
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    .line 2394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    .line 2395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->i:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;

    invoke-virtual {v1, v2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private static U()V
    .locals 3

    .line 2963
    new-instance v0, Lo/afK;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/afK;-><init>(Landroid/content/Context;)V

    .line 2964
    invoke-virtual {v0}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2965
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/VisitorDeviceId;

    invoke-virtual {v0}, Lo/afK;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netflix/cl/model/event/session/VisitorDeviceId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private V()Z
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "fallbackToPrimaryAccount"

    .line 2380
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->S()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2387
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    return v0
.end method

.method private W()V
    .locals 3

    .line 2735
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-interface {v0}, Lo/bO;->e()Lo/hT;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lo/hT;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/service/user/UserAgent;)Lo/hR;

    move-result-object v0

    .line 2736
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getErrorHandler()Lo/zF;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/zF;->d(Lo/hR;)Z

    return-void
.end method

.method private X()V
    .locals 3

    .line 2402
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->i:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterUserAgentEventReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_service_useragent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object p1
.end method

.method private a(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .line 1801
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$13;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/util/List;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/ahY;Lo/ym;Z)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j(Lo/ym;)V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 5

    .line 1832
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1833
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "useragent_userprofiles_data"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1834
    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1835
    invoke-static {v0}, Lo/yv;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    .line 1837
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1843
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1851
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1853
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lo/yv;->d(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/KidsMode;

    invoke-direct {v1}, Lcom/netflix/cl/model/context/KidsMode;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 413
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/ProfileGuid;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/ProfileGuid;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 414
    iget-object v0, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 415
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/NetflixId;

    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/NetflixId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;)V
    .locals 3

    .line 1986
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const-string p1, "mListOfUserProfiles is null"

    .line 1987
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o(Ljava/lang/String;)V

    return-void

    .line 1991
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->G()V

    .line 1993
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1994
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1995
    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1996
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-interface {p1, v0}, Lo/bO;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1997
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1998
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->y()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 2001
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d([Ljava/lang/String;)V

    .line 2003
    sget-object p1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    const-string v0, "nf_service_useragent"

    if-ne p2, p1, :cond_3

    const-string p1, "Reinit existing user on cold start, send check in."

    .line 2004
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->h()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->d:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;->c(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/yn;->e(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string p1, "Login or switch profile, notify others..."

    .line 2008
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->P()V

    :goto_0
    return-void

    :cond_4
    const-string p1, "Activated ProfileId not found in list of user profiles: "

    .line 2016
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "doLogin activateAccByEmailPassword"

    .line 846
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "User is logged in! This should NOT happen!"

    .line 849
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->u:Lcom/netflix/mediaclient/StatusCode;

    const/4 p2, 0x0

    sget-object p3, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    const-string p4, "UserAgent: activateAccByEmailPassword fails, NRD registration exist"

    invoke-static {p1, p4, p2, p3}, Lo/aeu;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {p0, p1, p6}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    .line 851
    sget-object p1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const/4 p2, 0x0

    const-string p3, "SignIn"

    invoke-virtual {p1, p3, p2}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    return-void

    .line 855
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lo/aie;Lo/aie;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Ljava/lang/String;)V

    .line 578
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$32;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$32;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lo/aie;Lo/aie;)V

    .line 611
    iget-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p3, p1, v0}, Lo/yQ;->a(Ljava/lang/String;Lo/yq;)Lo/yA;

    move-result-object p3

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/yA;->c(Lo/zX;)V

    .line 613
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private a(Lo/ToggleButton;Lo/ym;)V
    .locals 3

    const-string v0, "nf_service_useragent"

    const-string v1, "loginUser tokenActivate"

    .line 1352
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "User is logged in! This should NOT happen!"

    .line 1354
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->u:Lcom/netflix/mediaclient/StatusCode;

    const/4 v0, 0x0

    sget-object v1, Lcom/netflix/mediaclient/util/log/RootCause;->m:Lcom/netflix/mediaclient/util/log/RootCause;

    const-string v2, "UserAgent: activateAccByToken fails, NRD registration exist"

    invoke-static {p1, v2, v0, v1}, Lo/aeu;->b(Lcom/netflix/mediaclient/StatusCode;Ljava/lang/String;ZLcom/netflix/mediaclient/util/log/RootCause;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    const/4 p1, 0x0

    .line 1356
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/cl/model/Error;)V

    return-void

    .line 1360
    :cond_0
    new-instance v0, Lo/ahY;

    iget-object v1, p1, Lo/ToggleButton;->a:Ljava/lang/String;

    iget-object p1, p1, Lo/ToggleButton;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lo/ahY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/ahY;Lo/ym;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Z
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->Q()Z

    move-result p0

    return p0
.end method

.method private synthetic ac()V
    .locals 3

    .line 2608
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getServiceNotificationHelper()Lo/Ac;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lo/Ac;->c(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Lorg/json/JSONObject;
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 3

    .line 1533
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1534
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_0

    .line 1535
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    goto :goto_0

    .line 1537
    :cond_0
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    new-instance v2, Lcom/netflix/cl/model/Error;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/cl/ExtLogger;->failedAction(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Z

    :goto_0
    const/4 p1, 0x0

    .line 1539
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->W()V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lo/ahY;Lo/ym;Z)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f(Lo/ym;)V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "nf_service_useragent"

    const-string v0, "new user data is null"

    .line 1299
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1303
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 1304
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->n:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 1305
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-static {p1, v0}, Lo/yv;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    return-void
.end method

.method private b(Lo/zE$Activity;)V
    .locals 6

    const-string v0, "nf_service_useragent"

    const-string v1, "recoverUserWithMslAuthData:: recover user state with msl auth data"

    .line 540
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v1, Lo/aic;

    iget-object v2, p1, Lo/zE$Activity;->e:Lo/ahS;

    iget-object v3, p1, Lo/zE$Activity;->c:Lo/ahX;

    invoke-direct {v1, v2, v3}, Lo/aic;-><init>(Lo/ahS;Lo/ahX;)V

    .line 542
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getUserCredentialProvider()Lo/Ar;

    move-result-object v2

    iget-object v3, p1, Lo/zE$Activity;->d:Ljava/lang/String;

    invoke-interface {v2, v3}, Lo/Ar;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 545
    iget-object v5, p1, Lo/zE$Activity;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "recoverUserWithMslAuthData:: cookies found for user %s, trying relogin with failback"

    invoke-static {v0, v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 546
    new-instance v0, Lo/ahY;

    iget-object v3, v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v2, v2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lo/ahY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object p1, p1, Lo/zE$Activity;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Lo/aie;Lo/aie;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 0

    .line 451
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUser()Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isNotActiveOrOnHold()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1821
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object p1
.end method

.method private c(Lo/ahY;Lo/ym;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Z)Lo/yq;
    .locals 7

    .line 1151
    new-instance v6, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$2;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lo/ym;ZLo/ahY;)V

    return-object v6
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Lorg/json/JSONObject;
    .locals 2

    .line 1113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "cause"

    .line 1115
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "rawResponse"

    .line 1117
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1120
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "credentials"

    .line 1121
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "exist"

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    .line 1123
    :try_start_1
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1124
    iget-object p2, p3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p2, "netflixId"

    .line 1125
    iget-object v1, p3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    :cond_1
    iget-object p2, p3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string p2, "secureNetflixId"

    .line 1128
    iget-object v1, p3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1130
    :cond_2
    iget-object p2, p3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p2, "userId"

    .line 1131
    iget-object p3, p3, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 1134
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-object v0
.end method

.method private c(Lcom/netflix/cl/model/Error;)V
    .locals 2

    .line 1742
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "SignInWithAutoLoginToken"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->existExclusiveSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    goto :goto_0

    .line 1744
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-string v1, "SignIn"

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->existExclusiveSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    sget-object v0, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->M()V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lo/aie;Lo/aie;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Lo/aie;Lo/aie;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/service/user/UserAgentImpl;[Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d([Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V
    .locals 9

    const-string v0, "nf_service_useragent"

    const-string v1, "Login via Dynecom"

    .line 894
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v8, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;

    invoke-direct {v8, p0, p6}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 981
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lo/cz;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/cJ;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)Lo/ym;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c:Lo/ym;

    return-object p1
.end method

.method private d(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "nf_service_useragent"

    const-string v1, "Handle autologin via intent"

    .line 2576
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "token"

    .line 2577
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2578
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Token not found, autologin is not possible"

    .line 2579
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Execute autologin with token %s: "

    .line 2582
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2583
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->E()V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/cl/model/Error;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lcom/netflix/cl/model/Error;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Z)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Z)V

    return-void
.end method

.method private d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 3

    .line 1898
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "nf_service_useragent"

    const-string v0, "Current profile type changed - sending REFRESH_HOME intent"

    .line 1899
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/yn;->h(Landroid/content/Context;)V

    .line 1901
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.netflix.mediaclient.intent.action.REFRESH_HOME_LOLOMO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1902
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/bO;->d(Landroid/content/Context;)V

    .line 1906
    invoke-static {}, Lo/CarrierIdentifier;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Application is currently in foreground - restarting profiles gate"

    .line 1907
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    invoke-interface {p1, v0, v1}, Lo/bO;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .line 1489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Ljava/lang/String;)V

    const-string v0, "nf_service_useragent"

    const-string v1, "doSelectedProfile new profile, update..."

    .line 1491
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->O()V

    .line 1494
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1495
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesInCsv()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "onProfileDataFetched language changed, changeUser "

    .line 1496
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d([Ljava/lang/String;)V

    .line 1499
    :cond_1
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getSubtitlePreference()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    .line 1501
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v1, :cond_3

    .line 1502
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1503
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    const-class v2, Lcom/netflix/cl/model/context/KidsMode;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->removeExclusiveContext(Ljava/lang/Class;)Z

    .line 1505
    :cond_2
    sget-object v1, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-string v2, "NetflixId"

    invoke-virtual {v1, v2}, Lcom/netflix/cl/ExtLogger;->endExclusiveAction(Ljava/lang/String;)Z

    .line 1507
    :cond_3
    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1509
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1510
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/context/KidsMode;

    invoke-direct {v2}, Lcom/netflix/cl/model/context/KidsMode;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    :cond_4
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v4, "Set new profile %s"

    .line 1513
    invoke-static {v0, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v3

    const-string v2, "User credentials found: %s "

    .line 1515
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1516
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)Z

    .line 1517
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/NetflixId;

    iget-object p2, p2, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    invoke-direct {v1, p2}, Lcom/netflix/cl/model/event/session/NetflixId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 1518
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/ProfileGuid;

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/netflix/cl/model/event/session/ProfileGuid;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    goto :goto_0

    :cond_5
    const-string p2, "User credentials not returned! Failure!"

    .line 1520
    invoke-static {v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_0
    sget-object p2, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->b:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;)V

    .line 1523
    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(I)V

    .line 1524
    invoke-interface {p4}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 986
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object p1

    .line 987
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/cz;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "nf_service_useragent"

    const-string v0, "new userProfiles data is null"

    .line 1281
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1284
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    .line 1286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1287
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1288
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1290
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1294
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lo/yv;->d(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private d(Lo/ahY;Lo/ym;Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1015
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_service_useragent"

    const-string v3, "doActivateFetchConfigData: fetch account level config data shouldRetry %s"

    invoke-static {v2, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1017
    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$4;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ahY;Lo/ym;Z)V

    const-string p2, "TEMP_PROFILE_ID"

    .line 1043
    invoke-virtual {p0, p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    .line 1046
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/cS;->b(Landroid/content/Context;)V

    .line 1049
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object p2

    invoke-interface {p2, p1, v0, v1}, Lo/cz;->d(Lo/zX;ZLo/cJ;)V

    return-void
.end method

.method private d(Z)V
    .locals 4

    .line 281
    invoke-static {}, Lo/gx;->d()Z

    move-result v0

    const-string v1, "nf_service_useragent"

    if-nez v0, :cond_0

    const-string p1, "Client check is NOT approved. Skip for now"

    .line 282
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_0
    sget-object v0, Lo/nd;->b:Lo/nd;

    invoke-virtual {v0}, Lo/nd;->e()Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;

    move-result-object v0

    .line 287
    sget-object v2, Lcom/netflix/mediaclient/service/user/UserAgentImpl$29;->c:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/st/safetynet/SafetyNetAttestationState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 300
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Should we wait for pending attestation results ? %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->I()V

    goto :goto_0

    :cond_1
    const-string p1, "Do not wait for pending attestation results anymore."

    .line 304
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->W()V

    goto :goto_0

    :pswitch_1
    const-string p1, "Device is SafetyNet NOT approved, send error message."

    .line 296
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->W()V

    goto :goto_0

    :pswitch_2
    const-string p1, "Device is SafetyNet approved, user can proceed"

    .line 289
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d([Ljava/lang/String;)V
    .locals 2

    .line 703
    sget-object v0, Lo/ys;->a:Lo/ys;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lo/ys;->e(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;
    .locals 2

    .line 991
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 992
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->netflixId:Ljava/lang/String;

    invoke-static {p1, v1}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->secureNetflixId:Ljava/lang/String;

    invoke-static {p2, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 999
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 993
    :cond_2
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private e(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1528
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->m:Z

    .line 1529
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/yn;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "nf_service_useragent"

    const-string v0, "You can not create auto login token in production!"

    .line 2570
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ToggleButton;Lo/ym;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lo/ToggleButton;Lo/ym;)V

    return-void
.end method

.method private e(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "nf_service_useragent"

    const-string p2, "user is not active, need to bump him out to nonMember page"

    .line 460
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-static {p1}, Lo/cI;->e(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/EdgeStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/EdgeStack;->a()Z

    move-result p1

    .line 463
    invoke-static {}, Lo/afP;->e()Ljava/lang/String;

    move-result-object p2

    .line 464
    invoke-static {p2, p1}, Lo/afP;->d(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 468
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 471
    new-instance p2, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$35;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Z)V

    .line 488
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/yq;)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->M()V

    :goto_0
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 3

    const-string v0, "nf_service_useragent"

    const-string v1, "recover user state with cookies"

    .line 563
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v0, Lo/ahY;

    iget-object v1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->netflixId:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->secureNetflixId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ahY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object p1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Lo/aie;Lo/aie;)V

    return-void
.end method

.method private e(Ljava/lang/String;Lo/aie;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 1470
    new-instance p4, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;

    invoke-direct {p4, p0, p1, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$8;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V

    .line 1483
    iget-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p3, p1, p4}, Lo/yQ;->a(Ljava/lang/String;Lo/yq;)Lo/yA;

    move-result-object p3

    .line 1484
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/yA;->c(Lo/zX;)V

    .line 1485
    invoke-virtual {p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private e(Lo/ahY;Lo/ym;)V
    .locals 1

    const/4 v0, 0x1

    .line 1010
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Lo/ahY;Lo/ym;Z)V

    return-void
.end method

.method private e(Lo/ahY;Lo/ym;Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1059
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_service_useragent"

    const-string v4, "doActivateFetchUser shouldRetry %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1060
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1061
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "This should NOT happen, userID exist in MSL registry %s"

    invoke-static {v2, v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    const-string v1, "TEMP_PROFILE_ID"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Ljava/lang/String;)V

    const-string v0, "fetching user data"

    .line 1068
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {p1}, Lo/ahY;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/ahY;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c(Lo/ahY;Lo/ym;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Z)Lo/yq;

    move-result-object p1

    .line 1071
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p2, p1}, Lo/yQ;->b(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method private e(Lo/yq;)V
    .locals 2

    .line 1260
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$9;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$9;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/yq;)V

    .line 1274
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lo/yQ;->a(Ljava/lang/String;Lo/yq;)Lo/yA;

    move-result-object p1

    .line 1275
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method static synthetic f(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->K()V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 7

    .line 618
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "useragent_userprofiles_data"

    invoke-static {v0, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v5, "nf_service_useragent"

    const-string v6, "User profiles JSON: %s"

    .line 619
    invoke-static {v5, v6, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz v0, :cond_0

    .line 622
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lo/CarrierIdentifier;->g()V

    .line 623
    invoke-static {v0}, Lo/yv;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    .line 624
    sget-object v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;->d:Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentImpl$ProfileActivatedSource;)V

    goto :goto_0

    :cond_0
    const-string p1, "User profiles JSON not found!"

    .line 626
    invoke-static {v5, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "useragent_user_data"

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string v1, "User JSON: %s"

    .line 629
    invoke-static {v5, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p1, :cond_1

    .line 632
    invoke-static {p1}, Lo/yv;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    .line 633
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getSubtitleDefaults()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->n:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    goto :goto_1

    :cond_1
    const-string p1, "User JSON not found!"

    .line 635
    invoke-static {v5, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private f(Lo/ym;)V
    .locals 2

    .line 1232
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$6;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 1250
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lo/yQ;->a(Ljava/lang/String;Lo/yq;)Lo/yA;

    move-result-object p1

    .line 1251
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method static synthetic g(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object p0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "nf_service_useragent"

    const-string v4, "Current profile ID: %s, user is logged in."

    .line 343
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/zE;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "User is NOT know to MSL, check if re-authorization data exist!"

    .line 346
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object v1

    invoke-interface {v1}, Lo/zE;->b()Lo/zE$Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    iget-object v4, v1, Lo/zE$Activity;->d:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lo/zE$Activity;)V

    return v2

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v4, "Restore data not found for %s, try to log in using cookies"

    .line 355
    invoke-static {v3, v4, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getUserCredentialProvider()Lo/Ar;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/Ar;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Cookies found for %s, trying to log in using cookies..."

    .line 359
    invoke-static {v3, p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 360
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return v2

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Restore data not found for %s, leave user in logout state"

    .line 364
    invoke-static {v3, p1, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 366
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->L()V

    return v0

    :cond_2
    const-string v1, "User is known to MSL, check restrictions...."

    .line 372
    invoke-static {v3, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->E()V

    .line 376
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getUserCredentialProvider()Lo/Ar;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/Ar;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object v1, v4, v0

    const-string v2, "Cookies found. all good for user, %s, %s"

    .line 378
    invoke-static {v3, v2, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 379
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return v0

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "Cookies NOT found for user %s, try to get them!"

    .line 385
    invoke-static {v3, v1, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 386
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$25;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v1, p1, v0}, Lo/yQ;->a(Ljava/lang/String;Lo/yq;)Lo/yA;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return v2
.end method

.method static synthetic h(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/ym;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c:Lo/ym;

    return-object p0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 3

    .line 1365
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1369
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v2, :cond_1

    .line 1370
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic i(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/yQ;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    return-object p0
.end method

.method static synthetic j(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/yq;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->p:Lo/yq;

    return-object p0
.end method

.method private j(Lo/ym;)V
    .locals 3

    const-string v0, "nf_service_useragent"

    const-string v1, "doLoginComplete"

    .line 1721
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/yn;->b(Landroid/content/Context;)V

    .line 1723
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->N()V

    .line 1724
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/yn;->c(Landroid/content/Context;Z)V

    .line 1725
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V

    .line 1726
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lo/CarrierIdentifier;->g()V

    .line 1728
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "nf_user_status_loggedin"

    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->ac()V

    return-void
.end method

.method static synthetic l(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->N()V

    return-void
.end method

.method private l(Ljava/lang/String;)Z
    .locals 6

    .line 2409
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->ag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "nf_service_useragent"

    const-string v5, "userEnteredPinMatchesStoredPin usrPin=%s"

    .line 2410
    invoke-static {v4, v5, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2412
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic m(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic n(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lcom/netflix/mediaclient/service/webclient/model/leafs/User;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    return-object p0
.end method

.method static synthetic o(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)Lo/Ac;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getServiceNotificationHelper()Lo/Ac;

    move-result-object p0

    return-object p0
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 2020
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 2021
    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    const-string v0, "nf_service_useragent"

    .line 2023
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2026
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    .line 2153
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$18;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 2165
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .locals 3

    .line 2203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    .line 2204
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->C()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2209
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->setConsumed(Z)V

    .line 2210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    invoke-static {v0, v1}, Lo/yv;->a(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 2211
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public C()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 2

    .line 2195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2199
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->y()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->y()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUmaAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public D()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;"
        }
    .end annotation

    .line 2136
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$16;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    .line 2137
    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    .line 2149
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 2708
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->k:Z

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 692
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 693
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .line 2353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAccountErrors statusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nf_service_useragent"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->U:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/StatusCode;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2356
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->V()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2357
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f()V

    goto :goto_0

    .line 2359
    :cond_0
    invoke-static {p1}, Lo/yn;->i(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/netflix/mediaclient/android/app/Status;Lo/ym;)V
    .locals 2

    .line 1750
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$14;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;Lo/ym;)V
    .locals 1

    .line 2418
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;

    invoke-direct {v0, p0, p4}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$24;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2438
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 2440
    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, p2}, Lo/yq;->a(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 2446
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 2447
    iget-object p4, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p4, p1, p2, p3, v0}, Lo/yQ;->d(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgent$PinType;Ljava/lang/String;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    .line 2449
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l(Ljava/lang/String;)Z

    move-result p1

    sget-object p2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, p2}, Lo/yq;->a(ZLcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x1

    .line 1402
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->m:Z

    .line 1404
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1405
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->cancelSession(Ljava/lang/Long;)Z

    :cond_0
    if-nez p2, :cond_1

    .line 1409
    sget-object p2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/SelectProfile;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/action/SelectProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    goto :goto_0

    .line 1411
    :cond_1
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->t:Ljava/lang/Long;

    .line 1414
    :goto_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "nf_service_useragent"

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_1

    .line 1421
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "We are already on profile %s. Do nothing."

    .line 1422
    invoke-static {v2, p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1423
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(I)V

    .line 1424
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/StatusCode;)V

    .line 1427
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/yn;->e(Landroid/content/Context;)V

    return-void

    :cond_3
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string v0, "selectProfile %s"

    .line 1431
    invoke-static {v2, v0, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->n()V

    .line 1436
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lo/zE;->b(Ljava/lang/String;Ljava/lang/String;)Lo/aid;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p1, "switchWebUserProfile failed, userId token was not found for current user id. It should not happen!"

    .line 1438
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cH:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(I)V

    .line 1440
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cH:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/StatusCode;)V

    return-void

    .line 1446
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 1447
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->setUmaAlert(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 1450
    :cond_5
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$7;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lo/aid;)V

    .line 1464
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v1, p1, v0}, Lo/yQ;->c(Ljava/lang/String;Lo/yq;)Lo/yC;

    move-result-object v0

    .line 1465
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Ljava/lang/String;Lo/aie;)Lo/zX;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/yC;->c(Lo/zX;)V

    .line 1466
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void

    :cond_6
    :goto_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 1415
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Unknown profile ID: %s or credentialUserId: %s"

    invoke-static {v2, p1, p2}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1416
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->ac:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(I)V

    .line 1417
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->ac:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b(Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2218
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nf_service_useragent"

    if-eqz v0, :cond_0

    invoke-static {p2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "record ums planSelection plandId: %s, priceTier:%s"

    .line 2220
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v0, p1, p2}, Lo/yQ;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    :cond_0
    const-string p1, "planId or priceTier is null - skip reporting"

    .line 2224
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/ym;)V
    .locals 9

    const-string v0, "nf_service_useragent"

    const-string v1, "editWebUserProfile"

    .line 1936
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    new-instance v8, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;

    const/4 v0, 0x0

    invoke-direct {v8, p0, p6, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lo/yQ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    .line 1939
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public a(Lo/ym;)V
    .locals 3

    const-string v0, "nf_service_useragent"

    const-string v1, "loginUserWithExistingTokens"

    .line 1335
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance v0, Lo/ahY;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    .line 1339
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    .line 1340
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/ahY;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/ahY;Lo/ym;)V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    const/4 v1, 0x0

    const-string v2, "nf_service_useragent"

    if-nez v0, :cond_0

    const-string v0, "isCurrentProfileInstantQueueEnabled is null"

    .line 737
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 741
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "isCurrentProfileInstantQueueEnabled called: %b "

    invoke-static {v2, v0, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 743
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isIQEnabled()Z

    move-result v0

    return v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "userAgent"

    return-object v0
.end method

.method public synthetic b()Lo/BC;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->y()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lo/zX;
    .locals 5

    .line 813
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/zE;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "nf_service_useragent"

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "MSL store does not know for profile %s"

    .line 818
    invoke-static {v4, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v1, "MSL store know for profile %s"

    .line 822
    invoke-static {v4, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 824
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$36;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$36;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Lo/aie;)Lo/zX;
    .locals 1

    .line 1084
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$3;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/String;Lo/aie;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2080
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nf_service_useragent"

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v2, "record ums impression msgType: %s, impressionType:%s"

    .line 2082
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2083
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v0, p1, p2}, Lo/yQ;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    :cond_0
    const-string p1, "msgName or impressionType is null - skip reporting"

    .line 2086
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Lo/ym;)V
    .locals 4

    .line 2741
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lo/yl;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMSLClient()Lo/zE;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-direct {v1, p0, v2, v3, p1}, Lo/yl;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/zE;Lo/yQ;Lo/ym;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lo/ym;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "nf_service_useragent"

    const-string v1, "getProductChoices"

    .line 2285
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    new-instance v3, Lcom/netflix/mediaclient/service/user/UserAgentImpl$21;

    invoke-direct {v3, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$21;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2296
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lo/yQ;->a(Lo/yq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2704
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->k:Z

    return-void
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "nf_service_useragent"

    if-nez p1, :cond_0

    const-string p1, "Intent is null"

    .line 2527
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2531
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.netflix.mediaclient.intent.action.USER_AUTOLOGIN"

    .line 2536
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2537
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v3, "com.netflix.mediaclient.intent.action.USER_CREATE_AUTOLOGIN_TOKEN"

    .line 2538
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2539
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p1, "Uknown command!"

    .line 2541
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 731
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUserGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;Lo/ym;)V
    .locals 6

    .line 1589
    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;

    invoke-direct {v1, p0, p4}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$12;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 1607
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    .line 1608
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    move-object v3, p2

    move-object v5, p3

    .line 1607
    invoke-virtual/range {v0 .. v5}, Lo/yQ;->a(Lo/yq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public c(JLo/ym;)V
    .locals 2

    if-eqz p3, :cond_0

    const-string v0, "nf_service_useragent"

    const-string v1, "Create auto login token"

    .line 2717
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;

    invoke-direct {v0, p0, p3}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$30;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2731
    iget-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p3, p1, p2, v0}, Lo/yQ;->d(JLo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void

    .line 2715
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Callback can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 2592
    sget-object v0, Lo/fU;->b:Lo/fU$StateListAnimator;

    invoke-virtual {v0}, Lo/fU$StateListAnimator;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "nf_service_useragent"

    const-string v0, "Autologin is NOT enabled"

    .line 2593
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2596
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "nf_service_useragent"

    const-string v0, "Autologin already started"

    .line 2597
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2600
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 2602
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "nf_service_useragent"

    const-string v1, "Autologin already started"

    .line 2603
    invoke-static {p1, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    monitor-exit v0

    return-void

    .line 2607
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/yo;

    invoke-direct {v2, p0}, Lo/yo;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2611
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "nf_service_useragent"

    const-string v1, "Token not found, autologin is not possible"

    .line 2612
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    monitor-exit v0

    return-void

    .line 2616
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v1, :cond_4

    const-string p1, "nf_service_useragent"

    const-string v1, "User is already logged in, autologin is NOT possible!"

    .line 2617
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    monitor-exit v0

    return-void

    :cond_4
    const-string v1, "nf_service_useragent"

    .line 2621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute autologin with token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2624
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/SignInWithAutoLoginToken;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/action/SignInWithAutoLoginToken;-><init>()V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 2625
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    new-instance v3, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;

    invoke-direct {v3, p0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$28;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Ljava/lang/Long;)V

    invoke-virtual {v2, p1, v3}, Lo/yQ;->d(Ljava/lang/String;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    .line 2663
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 2664
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;Lo/ym;)V
    .locals 3

    const-string v0, "nf_service_useragent"

    const-string v1, "removeWebUserProfile"

    .line 1943
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;)V

    invoke-virtual {v0, p1, v1}, Lo/yQ;->e(Ljava/lang/String;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public c(Lo/ym;)V
    .locals 1

    .line 504
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$33;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$33;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 529
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0}, Lo/yQ;->b(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public c(Lo/ym;Ljava/lang/String;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "getProductChoices"

    .line 2264
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$22;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$22;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2275
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0, p2}, Lo/yQ;->a(Lo/yq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public c(ZLjava/lang/String;)V
    .locals 3

    .line 2169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    const-string v1, "nf_service_useragent"

    if-eqz v0, :cond_2

    .line 2171
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getUmaAlert()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 2172
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isStale()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Current UMA is not stale or consumed, skipping server refresh."

    .line 2176
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "UMA refreshing from server..."

    .line 2173
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lo/yQ;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_1

    :cond_2
    const-string p1, "User is missing, unable to refresh user messages!"

    .line 2179
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public synthetic d(Ljava/lang/String;)Lo/BC;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object p1

    return-object p1
.end method

.method public d(Lo/ym;)V
    .locals 1

    .line 2456
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$27;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2487
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0}, Lo/yQ;->e(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public d(Lo/ym;Ljava/lang/String;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "Resolving expanded url from simple URL pattern"

    .line 2096
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$17;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$17;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2108
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0, p2}, Lo/yQ;->e(Lo/yq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 0

    .line 648
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->X()V

    .line 649
    invoke-super {p0}, Lo/bV;->destroy()V

    return-void
.end method

.method public doInit()V
    .locals 6

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->v()V

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->i:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Application;

    .line 208
    new-instance v0, Lo/yQ;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/yQ;-><init>(Landroid/content/Context;Lo/cz;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/afz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "nf_service_useragent"

    const-string v4, "Current device locale as raw user locale: %s"

    .line 211
    invoke-static {v0, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v2

    invoke-interface {v2}, Lo/cz;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lo/ys;->a:Lo/ys;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/ys;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lo/LegacyErrorStrings;->a:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    goto :goto_0

    :cond_0
    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    :goto_0
    iput-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g:Lcom/netflix/mediaclient/android/app/Status;

    .line 214
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->T()V

    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->U()V

    .line 217
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v4, Lcom/netflix/cl/model/event/session/UserInteraction;

    invoke-direct {v4}, Lcom/netflix/cl/model/event/session/UserInteraction;-><init>()V

    invoke-virtual {v2, v4}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 219
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->F()Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v1, "No profile ID, user is not logged in."

    .line 222
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_1

    .line 230
    :cond_1
    iget-object v5, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a:Lo/cW;

    .line 233
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j()Lo/zX;

    move-result-object v1

    invoke-interface {v0, v1, v3, v5}, Lo/cz;->d(Lo/zX;ZLo/cJ;)V

    return-void

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->aw()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j()Lo/zX;

    move-result-object v3

    xor-int/2addr v1, v4

    invoke-interface {v0, v3, v1, v5}, Lo/cz;->d(Lo/zX;ZLo/cJ;)V

    .line 242
    :cond_3
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_4
    return-void
.end method

.method public declared-synchronized e(Ljava/lang/String;)Lo/ze;
    .locals 5

    monitor-enter p0

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getUserCredentialProvider()Lo/Ar;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/Ar;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "nf_service_useragent"

    const-string v3, "No cookies for profile %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 765
    invoke-static {v0, v3, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 766
    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v3, "nf_service_useragent"

    const-string v4, "Cookies found for profile %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 769
    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 770
    new-instance p1, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;

    invoke-direct {p1, p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$31;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "loginUser activateAccByEmailPassword"

    .line 870
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    if-nez v0, :cond_0

    .line 873
    sget-object p1, Lo/LegacyErrorStrings;->W:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p6, p1}, Lo/ym;->c(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    .line 880
    :cond_0
    invoke-interface {v0}, Lo/cz;->I()V

    .line 882
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLo/ym;)V

    return-void
.end method

.method public e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/ym;)V
    .locals 8

    const-string v0, "nf_service_useragent"

    const-string v1, "addWebUserProfile"

    .line 1929
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    new-instance v7, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;

    const/4 v0, 0x0

    invoke-direct {v7, p0, p5, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$ActionBar;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;Lcom/netflix/mediaclient/service/user/UserAgentImpl$5;)V

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lo/yQ;->d(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    .line 1932
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public e(Lo/ToggleButton;Lo/ym;)V
    .locals 4

    const-string v0, "nf_service_useragent"

    const-string v1, "loginUserByTokens"

    .line 1316
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    new-instance v0, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    iget-object v1, p1, Lo/ToggleButton;->a:Ljava/lang/String;

    iget-object v2, p1, Lo/ToggleButton;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->a(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    .line 1323
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lo/ToggleButton;Lo/ym;)V

    return-void
.end method

.method public e(Lo/ym;)V
    .locals 2

    .line 1653
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "nf_service_useragent"

    const-string v0, "Can\'t log user out because agent has not been initialized!"

    .line 1654
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1657
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->c:Lo/ym;

    .line 1659
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1661
    invoke-interface {p1}, Lo/cz;->aq()V

    .line 1665
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getLoggingAgent()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object p1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->i()V

    .line 1666
    sget-object p1, Lo/ys;->a:Lo/ys;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/ys;->d(Landroid/content/Context;)V

    .line 1668
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1669
    sget-object p1, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->a(Lcom/netflix/mediaclient/StatusCode;)V

    return-void

    .line 1674
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz p1, :cond_5

    .line 1677
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.netflix.mediaclient.intent.category.PUSH"

    .line 1678
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1681
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->b(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1684
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1686
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getConfigurationAgent()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->b()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_cat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1687
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 1691
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->R()V

    return-void
.end method

.method public e(Lo/ym;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ym;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nf_service_useragent"

    const-string v1, "Checking video maturity for the logged in user"

    .line 2112
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$19;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$19;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2123
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0, p2}, Lo/yQ;->a(Lo/yq;Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public e(Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1619
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nf_service_useragent"

    const-string v4, "Force logout %b!"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1620
    invoke-static {}, Lo/CarrierIdentifier;->b()Z

    move-result v1

    .line 1621
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1622
    invoke-interface {v4}, Lo/SmartSelectSprite;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1624
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f()V

    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    const-string p1, "User playback is in progress, leave to PlayerActivity to redirect to logout page on end of playback!"

    .line 1627
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1631
    :cond_1
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/bO;->d(Landroid/content/Context;)V

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "forceLogoutUser:: UI is NOT visible, just kill all activities."

    .line 1636
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1633
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "forceLogoutUser:: Application is currently in foreground %b, - go to logout always %b"

    invoke-static {v2, p1, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1634
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/bO;->a(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public e()Z
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isNotActiveOrOnHold()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1957
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Lo/ym;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "getCurrentProfileGuid called"

    .line 748
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Lo/ym;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "fetchAvailableAvatarsList"

    .line 2228
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$20;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$20;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2239
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0}, Lo/yQ;->d(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public getAgentLoadEventName()Lcom/netflix/mediaclient/service/logging/perf/Sessions;
    .locals 1

    .line 654
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->d:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    return-object v0
.end method

.method public h()Lo/ze;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    return-object v0
.end method

.method public h(Lo/ym;)V
    .locals 1

    .line 2492
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$26;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2510
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0}, Lo/yQ;->a(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 5

    const-string v0, "nf_service_useragent"

    const-string v1, "getPrimaryProfileGuid"

    .line 2670
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 2672
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 2673
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isPrimaryProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2675
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    aput-object v4, v1, v3

    const/4 v3, 0x1

    .line 2676
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "primaryProfileName: %s, %s "

    .line 2674
    invoke-static {v0, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2677
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 2127
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "nf_service_useragent"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "sending umaAlertFeedback: %s"

    .line 2128
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v0, p1}, Lo/yQ;->a(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    :cond_0
    const-string p1, "umaAlertFeedback is empty - skip reporting"

    .line 2131
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public i(Lo/ym;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "getProductChoices"

    .line 2249
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$23;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$23;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;Lo/ym;)V

    .line 2260
    iget-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {p1, v0}, Lo/yQ;->h(Lo/yq;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public j()Lo/zX;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    const-string v0, "nf_service_useragent"

    const-string v1, "fetchProfileData"

    .line 2049
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    new-instance v0, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$11;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentImpl;)V

    .line 2076
    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v1, p1, v0}, Lo/yQ;->c(Ljava/lang/String;Lo/yq;)Lo/yC;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method

.method public k()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    .locals 1

    .line 2309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->n:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 6

    .line 1704
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getLanguagesList()Ljava/util/List;

    move-result-object v0

    .line 1709
    new-instance v2, Lo/afz;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lo/afz;-><init>(Ljava/lang/String;)V

    .line 1710
    sget-object v0, Lo/ys;->a:Lo/ys;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1712
    invoke-virtual {v2}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v0, v2}, Lo/afz;->c(Lo/afz;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v4, v1

    const-string v1, "nf_service_useragent"

    const-string v3, "nf_loc userPref:%s appLocaleRaw:%s - picking %s"

    invoke-static {v1, v3, v4}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1713
    invoke-virtual {v0, v2}, Lo/afz;->c(Lo/afz;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1705
    :cond_3
    :goto_2
    sget-object v0, Lo/ys;->a:Lo/ys;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/ys;->b(Landroid/content/Context;)Lo/afz;

    move-result-object v0

    invoke-virtual {v0}, Lo/afz;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 1

    .line 2190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->eogAlert:Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;
    .locals 1

    .line 2304
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->f:Lcom/netflix/mediaclient/service/webclient/model/leafs/SubtitlePreference;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1971
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-nez v0, :cond_0

    const-string v0, "nf_service_useragent"

    const-string v1, "getGeoCountry is null"

    .line 1972
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 1975
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getGeoCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->m:Z

    return v0
.end method

.method public q()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/KidsMode;

    invoke-direct {v1}, Lcom/netflix/cl/model/context/KidsMode;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    .line 428
    :cond_0
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/ProfileGuid;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/ProfileGuid;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/NetflixId;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->o:Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;->c(Lcom/netflix/mediaclient/service/user/UserAgentImpl$Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/NetflixId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e:Ljava/util/List;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isMobileOnlyPlan()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 2686
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->isAgeVerified()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()V
    .locals 2

    .line 2091
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v0}, Lo/yQ;->a()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    const-string v0, "nf_service_useragent"

    const-string v1, "Opting in to WhatsApp notifications"

    .line 2092
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v()V
    .locals 3

    .line 669
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/bO;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 671
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_service_useragent"

    const-string v2, "Is profile switching disabled: %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 1613
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->e(Z)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public y()Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->j:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    return-object v0
.end method

.method public z()V
    .locals 1

    .line 2515
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->l:Lo/yQ;

    invoke-virtual {v0}, Lo/yQ;->b()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/user/UserAgentImpl;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    return-void
.end method
