.class public final Lo/aeI;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeI$Application;
    }
.end annotation


# static fields
.field private static b:Lo/aeI$Application;

.field public static final c:Lo/aeI;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lo/aeI;

    invoke-direct {v0}, Lo/aeI;-><init>()V

    sput-object v0, Lo/aeI;->c:Lo/aeI;

    .line 36
    new-instance v0, Lo/aeI$Application;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lo/aeI$Application;-><init>(ZZILo/amc;)V

    sput-object v0, Lo/aeI;->b:Lo/aeI$Application;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "VMAutoPlayRepo"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final h()Z
    .locals 3

    .line 116
    sget-object v0, Lo/hl;->c:Lo/hl$TaskDescription;

    invoke-virtual {v0}, Lo/hl$TaskDescription;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v2, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->c()Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 124
    invoke-interface {v0}, Lo/BC;->disableVideoMerchAutoPlay()Z

    move-result v1

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 63
    invoke-direct {p0}, Lo/aeI;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lo/aeI;->b:Lo/aeI$Application;

    invoke-virtual {v0}, Lo/aeI$Application;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lo/aeI;->b:Lo/aeI$Application;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v3, v2}, Lo/aeI$Application;->b(Lo/aeI$Application;ZZILjava/lang/Object;)Lo/aeI$Application;

    move-result-object v0

    sput-object v0, Lo/aeI;->b:Lo/aeI$Application;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    .line 91
    invoke-direct {p0}, Lo/aeI;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lo/aeI;->b:Lo/aeI$Application;

    invoke-virtual {v0}, Lo/aeI$Application;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lo/aeI;->b:Lo/aeI$Application;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/aeI$Application;->b(Lo/aeI$Application;ZZILjava/lang/Object;)Lo/aeI$Application;

    move-result-object v0

    sput-object v0, Lo/aeI;->b:Lo/aeI$Application;

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 55
    invoke-direct {p0}, Lo/aeI;->h()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 3

    .line 39
    invoke-direct {p0}, Lo/aeI;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 43
    sget-object v2, Lo/aeI;->b:Lo/aeI$Application;

    invoke-virtual {v2}, Lo/aeI$Application;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final e()Z
    .locals 3

    .line 74
    invoke-direct {p0}, Lo/aeI;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    sget-object v2, Lo/aeI;->b:Lo/aeI$Application;

    invoke-virtual {v2}, Lo/aeI$Application;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final f()V
    .locals 4

    .line 129
    new-instance v0, Lo/aeI$Application;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lo/aeI$Application;-><init>(ZZILo/amc;)V

    sput-object v0, Lo/aeI;->b:Lo/aeI$Application;

    return-void
.end method
