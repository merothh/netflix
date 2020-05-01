.class public final Lo/is$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "InsomniaJobScheduler"

    .line 56
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/is$Activity;-><init>()V

    return-void
.end method

.method public static final synthetic d(Lo/is$Activity;)I
    .locals 0

    .line 56
    invoke-direct {p0}, Lo/is$Activity;->e()I

    move-result p0

    return p0
.end method

.method private final e()I
    .locals 1

    .line 61
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/cz;)Lo/is;
    .locals 8

    const-string v0, "netflixJobScheduler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceFetcher"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falkorAgent"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationAgent"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lo/ix;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lo/ix;-><init>(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/nS;Lo/cz;)V

    check-cast v0, Lo/is;

    return-object v0

    .line 80
    :cond_0
    new-instance p5, Lo/is;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lo/is;-><init>(Lo/iy;Lo/xZ;Lo/hW;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/cz;)V

    return-object p5
.end method
