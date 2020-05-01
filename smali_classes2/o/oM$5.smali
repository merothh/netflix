.class Lo/oM$5;
.super Lo/qc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oM;->a(Ljava/util/List;Lo/oL$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/oM;

.field final synthetic e:Lo/oL$StateListAnimator;


# direct methods
.method constructor <init>(Lo/oM;Lo/oL$StateListAnimator;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lo/oM$5;->c:Lo/oM;

    iput-object p2, p0, Lo/oM$5;->e:Lo/oL$StateListAnimator;

    invoke-direct {p0}, Lo/qc;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "nf_offlineLicenseMgr"

    const-string v2, "onSyncLicenseDone res=%s"

    .line 248
    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    iget-object v0, p0, Lo/oM$5;->e:Lo/oL$StateListAnimator;

    invoke-interface {v0, p1, p2}, Lo/oL$StateListAnimator;->d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
