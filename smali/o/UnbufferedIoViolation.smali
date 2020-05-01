.class public final Lo/UnbufferedIoViolation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/NetworkViolation;
.implements Lo/NonSdkApiUsedViolation;
.implements Lo/SqliteObjectLeakedViolation;
.implements Lo/InstanceCountViolation;
.implements Lo/ServiceConnectionLeakedViolation;


# static fields
.field public static final a:Lo/UnbufferedIoViolation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/UnbufferedIoViolation;

    invoke-direct {v0}, Lo/UnbufferedIoViolation;-><init>()V

    sput-object v0, Lo/UnbufferedIoViolation;->a:Lo/UnbufferedIoViolation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(J)Lo/SqliteObjectLeakedViolation;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lo/UnbufferedIoViolation;->j(J)Lo/UnbufferedIoViolation;

    move-result-object p1

    check-cast p1, Lo/SqliteObjectLeakedViolation;

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(JJ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic c(J)Lo/InstanceCountViolation;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lo/UnbufferedIoViolation;->i(J)Lo/UnbufferedIoViolation;

    move-result-object p1

    check-cast p1, Lo/InstanceCountViolation;

    return-object p1
.end method

.method public c()Lo/UnbufferedIoViolation;
    .locals 0

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public synthetic d(J)Lo/NonSdkApiUsedViolation;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lo/UnbufferedIoViolation;->e(J)Lo/UnbufferedIoViolation;

    move-result-object p1

    check-cast p1, Lo/NonSdkApiUsedViolation;

    return-object p1
.end method

.method public d(JJLo/ServiceConnectionLeakedViolation$Activity;)V
    .locals 0

    .line 5
    invoke-static/range {p0 .. p5}, Lo/ServiceConnectionLeakedViolation$ActionBar;->b(Lo/ServiceConnectionLeakedViolation;JJLo/ServiceConnectionLeakedViolation$Activity;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pathPrefix"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/util/List;Lo/IntentReceiverLeakedViolation;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/IntentReceiverLeakedViolation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/RecommendationInfo;",
            ">;"
        }
    .end annotation

    const-string p2, "paths"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lo/akI;->b()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e()Lo/ServiceConnectionLeakedViolation;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lo/UnbufferedIoViolation;->c()Lo/UnbufferedIoViolation;

    move-result-object v0

    check-cast v0, Lo/ServiceConnectionLeakedViolation;

    return-object v0
.end method

.method public e(J)Lo/UnbufferedIoViolation;
    .locals 0

    return-object p0
.end method

.method public e(Ljava/lang/String;Lo/RecommendationInfo;Ljava/lang/Long;)V
    .locals 0

    const-string p3, "path"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "jsonGraphValue"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public i(J)Lo/UnbufferedIoViolation;
    .locals 0

    return-object p0
.end method

.method public j(J)Lo/UnbufferedIoViolation;
    .locals 0

    return-object p0
.end method
