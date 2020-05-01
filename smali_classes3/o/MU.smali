.class public final Lo/MU;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lo/MU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/MU;

    invoke-direct {v0}, Lo/MU;-><init>()V

    sput-object v0, Lo/MU;->a:Lo/MU;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lo/gz;->c:Lo/gz$Application;

    invoke-virtual {v0}, Lo/gz$Application;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 11
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    .line 12
    sget-object v1, Lo/gz;->c:Lo/gz$Application;

    invoke-virtual {v1}, Lo/gz$Application;->e()Z

    move-result v1

    .line 10
    invoke-virtual {p0, v0, v1}, Lo/MU;->e(ZZ)Z

    move-result v0

    return v0
.end method

.method public final e(ZZ)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
