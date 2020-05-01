.class public final Lo/cd;
.super Lo/bV;
.source ""

# interfaces
.implements Lo/cc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/cd$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/cd$StateListAnimator;

# The value of this static final field might be set in the static constructor
.field private static final l:Ljava/lang/String; = "nf_moneyball_agent"

# The value of this static final field might be set in the static constructor
.field private static final n:Ljava/lang/String; = "requestContext"


# instance fields
.field private a:Lo/ca;

.field private final b:Lo/cF;

.field private c:I

.field private d:Lcom/netflix/mediaclient/android/app/Status;

.field private f:Lo/bW;

.field private g:Ljava/lang/String;

.field private final h:Landroid/content/Context;

.field private final i:Lo/cG;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/cd$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/cd$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/cd;->e:Lo/cd$StateListAnimator;

    const-string v0, "nf_moneyball_agent"

    .line 194
    sput-object v0, Lo/cd;->l:Ljava/lang/String;

    const-string v0, "requestContext"

    .line 195
    sput-object v0, Lo/cd;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/cG;)V
    .locals 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mConfigurationAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lo/bV;-><init>()V

    iput-object p1, p0, Lo/cd;->h:Landroid/content/Context;

    iput-object p2, p0, Lo/cd;->i:Lo/cG;

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lo/cd;->c:I

    .line 39
    iget-object p1, p0, Lo/cd;->h:Landroid/content/Context;

    invoke-static {p1}, Lo/adi;->e(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lo/cd;->c:I

    .line 40
    sget-object p1, Lo/cd;->l:Ljava/lang/String;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget v1, p0, Lo/cd;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Current app version code=%d"

    invoke-static {p1, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 42
    iget-object p1, p0, Lo/cd;->h:Landroid/content/Context;

    invoke-static {p1}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/cd;->j:Ljava/lang/String;

    .line 43
    sget-object p1, Lo/cd;->l:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lo/cd;->j:Ljava/lang/String;

    aput-object v0, p2, v2

    const-string v0, "Current softwareVersion=%s"

    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    new-instance p1, Lo/cF;

    iget p2, p0, Lo/cd;->c:I

    iget-object v0, p0, Lo/cd;->h:Landroid/content/Context;

    invoke-static {v0}, Lo/adi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo/dj;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lo/cF;-><init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/cd;->b:Lo/cF;

    return-void
.end method

.method public static final synthetic a(Lo/cd;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/cd;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object p0
.end method

.method private final a(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;->getContextData()Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AUIContextData;->getUserInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "authURL"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lo/cd;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lo/cd;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/cd;->h:Landroid/content/Context;

    return-object p0
.end method

.method private final b(Ljava/util/List;Lo/cb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cb;",
            ")V"
        }
    .end annotation

    .line 99
    sget-object v0, Lo/cd;->l:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "fetchData %s"

    invoke-static {v0, v3, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    new-instance v0, Lo/cd$ActionBar;

    invoke-direct {v0, p0, p2}, Lo/cd$ActionBar;-><init>(Lo/cd;Lo/cb;)V

    .line 114
    invoke-virtual {p0}, Lo/cd;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object p2, p0, Lo/cd;->f:Lo/bW;

    if-nez p2, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    check-cast v0, Lo/cb;

    invoke-virtual {p2, p1, v0}, Lo/bW;->b(Ljava/util/List;Lo/cb;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 116
    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {p2, p1, v0, v2}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lo/cd;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d(Lo/cd;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/cd;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/cd;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic e(Lo/cd;Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lo/cd;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;)V

    return-void
.end method

.method private final j()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/cd;->a:Lo/ca;

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/ApiEndpointRegistry;

    return-object v0
.end method

.method public agentName()Ljava/lang/String;
    .locals 1

    const-string v0, "moneyball"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/cd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)V
    .locals 2

    const-string v0, "callData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lo/cd;->l:Ljava/lang/String;

    const-string v1, "nextMode"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lo/cd$TaskDescription;

    invoke-direct {v0, p0, p2}, Lo/cd$TaskDescription;-><init>(Lo/cd;Lo/cb;)V

    .line 172
    invoke-virtual {p0}, Lo/cd;->getNetflixPlatform()Lo/SmartSelectSprite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    iget-object p2, p0, Lo/cd;->f:Lo/bW;

    if-nez p2, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    check-cast v0, Lo/cb;

    invoke-virtual {p2, p1, v0}, Lo/bW;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballCallData;Lo/cb;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/SmartSelectSprite;->a(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 174
    sget-object v0, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lo/cb;->onDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/MoneyballData;Lcom/netflix/mediaclient/android/app/Status;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V
    .locals 6

    const-string v0, "flow"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lo/cd;->l:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "fetch flow:%s mode:%s"

    invoke-static {v0, v5, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v0, v1, [Ljava/lang/String;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\"aui\", \"moneyball\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\"aui\",\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lo/cd;->n:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 123
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 126
    new-instance p2, Lo/cd$Activity;

    invoke-direct {p2, p0, p3}, Lo/cd$Activity;-><init>(Lo/cd;Lo/cb;)V

    check-cast p2, Lo/cb;

    .line 122
    invoke-direct {p0, p1, p2}, Lo/cd;->b(Ljava/util/List;Lo/cb;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lo/cb;)V
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lo/cd;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "simpleSilverSignUp"

    .line 149
    invoke-virtual {p0, v0, p1, p2}, Lo/cd;->b(Ljava/lang/String;Ljava/lang/String;Lo/cb;)V

    return-void
.end method

.method public b(Lo/cb;)V
    .locals 2

    const-string v0, "cb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lo/cd;->l:Ljava/lang/String;

    const-string v1, "getPath"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[\"aui\",\"phoneCodes\"]"

    .line 180
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0, p1}, Lo/cd;->b(Ljava/util/List;Lo/cb;)V

    return-void
.end method

.method public d()Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/cd;->a:Lo/ca;

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/AUIApiEndpointRegistry;

    return-object v0
.end method

.method protected doInit()V
    .locals 10

    .line 50
    new-instance v0, Lo/bW;

    invoke-virtual {p0}, Lo/cd;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/cc;

    iget-object v3, p0, Lo/cd;->i:Lo/cG;

    check-cast v3, Lo/cz;

    invoke-direct {v0, v1, v2, v3}, Lo/bW;-><init>(Landroid/content/Context;Lo/cc;Lo/cz;)V

    iput-object v0, p0, Lo/cd;->f:Lo/bW;

    .line 51
    invoke-direct {p0}, Lo/cd;->j()V

    .line 52
    new-instance v0, Lo/ca;

    iget-object v5, p0, Lo/cd;->h:Landroid/content/Context;

    invoke-virtual {p0}, Lo/cd;->getUserAgent()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v6

    invoke-virtual {p0}, Lo/cd;->getOfflineAgent()Lo/nS;

    move-result-object v8

    iget-object v9, p0, Lo/cd;->i:Lo/cG;

    move-object v4, v0

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lo/ca;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cd;Lo/nS;Lo/cG;)V

    iput-object v0, p0, Lo/cd;->a:Lo/ca;

    .line 53
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {p0, v0}, Lo/cd;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public e()Lo/cF;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/cd;->b:Lo/cF;

    return-object v0
.end method
