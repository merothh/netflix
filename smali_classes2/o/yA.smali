.class public Lo/yA;
.super Lo/ng;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ng<",
        "Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private b:Lo/yq;

.field private final e:Ljava/lang/String;

.field private v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lo/yA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/yA;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo/yq;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lo/ng;-><init>()V

    const-string v0, "[\"bind\"]"

    .line 31
    iput-object v0, p0, Lo/yA;->e:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lo/yA;->b:Lo/yq;

    .line 39
    iput-object p1, p0, Lo/yA;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Lo/agE;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lo/yA;->Z()Lo/zX;

    move-result-object v0

    invoke-interface {v0}, Lo/zX;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/agE;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lo/yA;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object v0

    iput-object v0, p0, Lo/yA;->v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    .line 55
    iget-object v0, p0, Lo/yA;->v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Lo/ng;->c(Lo/agE;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    return-object p1

    :cond_0
    const-string p1, "Cookies are missing in bind call, profile switch fail"

    .line 61
    sget-object v0, Lo/yA;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lo/yA;->b:Lo/yq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 86
    invoke-interface {v0, v1, p1}, Lo/yq;->e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;
    .locals 3

    .line 75
    sget-object v0, Lo/yA;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "String response to parse = %s"

    invoke-static {v0, p1, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 80
    iget-object p1, p0, Lo/yA;->v:Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    return-object p1
.end method

.method protected synthetic c(Lo/agE;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/yA;->b(Lo/agE;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    invoke-virtual {p0, p1}, Lo/yA;->e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V

    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/yA;->b:Lo/yq;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lo/yA;->w:Ljava/lang/String;

    iput-object v1, p1, Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;->userId:Ljava/lang/String;

    .line 94
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/yq;->e(Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/yA;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/util/net/AuthorizationCredentials;

    move-result-object p1

    return-object p1
.end method

.method protected u_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "[\"bind\"]"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
