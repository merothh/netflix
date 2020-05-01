.class Lo/hx;
.super Lo/hr;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hr<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/cJ;

.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lo/cJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/cJ;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lo/hr;-><init>()V

    .line 30
    iput-object p1, p0, Lo/hx;->e:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lo/hx;->b:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lo/hx;->d:Lo/cJ;

    return-void
.end method


# virtual methods
.method protected a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lo/hx;->d:Lo/cJ;

    if-eqz v0, :cond_0

    .line 57
    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, p1, v1}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/hx;->d:Lo/cJ;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, v1, p1}, Lo/cJ;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/hx;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lo/hw;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-virtual {p0, p1}, Lo/hx;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkRequestType;->g:Lcom/netflix/mediaclient/net/NetworkRequestType;

    return-object v0
.end method

.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lo/hx;->c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

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

    .line 46
    iget-object v0, p0, Lo/hx;->b:Ljava/util/List;

    return-object v0
.end method
