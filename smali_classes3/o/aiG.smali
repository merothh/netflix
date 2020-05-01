.class public final Lo/aiG;
.super Ljava/lang/Object;
.source ""


# static fields
# The value of this static final field might be set in the static constructor
.field private static final a:Ljava/lang/String; = "nf_partner_PServiceRequestUtils"

.field public static final b:Lo/aiG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/aiG;

    invoke-direct {v0}, Lo/aiG;-><init>()V

    sput-object v0, Lo/aiG;->b:Lo/aiG;

    const-string v0, "nf_partner_PServiceRequestUtils"

    .line 20
    sput-object v0, Lo/aiG;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lo/TextValueSanitizer;->a:Lo/TextValueSanitizer$TaskDescription;

    invoke-virtual {v0, p1}, Lo/TextValueSanitizer$TaskDescription;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Lcom/netflix/cl/model/android/PartnerInputSource;)J
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelIdValue"

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/android/PartnerInput;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, p2, p1, v2}, Lcom/netflix/cl/model/context/android/PartnerInput;-><init>(Lcom/netflix/cl/model/android/PartnerInputSource;Ljava/lang/String;Ljava/lang/Float;)V

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final d(Lo/Am;)Z
    .locals 3

    const-string v0, "serviceManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lo/aiG;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    sget-object p1, Lo/aiG;->a:Ljava/lang/String;

    const-string v0, "force enabled partner features"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/amh;->c()V

    :cond_1
    const-string v2, "serviceManager.configuration!!"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/cz;->E()Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PartnerIntegrationConfig;->sfinderConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    .line 53
    :cond_4
    invoke-static {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;->isSfinderEnabled(Lcom/netflix/mediaclient/service/webclient/model/leafs/SfinderConfig;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_1
    return v1
.end method

.method public final e()Z
    .locals 1

    .line 23
    sget-object v0, Lo/ev;->b:Lo/ev$StateListAnimator;

    invoke-virtual {v0}, Lo/ev$StateListAnimator;->d()Z

    move-result v0

    return v0
.end method
