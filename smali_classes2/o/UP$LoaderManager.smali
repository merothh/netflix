.class public final Lo/UP$LoaderManager;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoaderManager"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private final c:F

.field private final d:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Ljava/util/List;Lcom/netflix/model/leafs/originals/interactive/Moment;FJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "FJ)V"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$LoaderManager;->b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object p2, p0, Lo/UP$LoaderManager;->e:Ljava/util/List;

    iput-object p3, p0, Lo/UP$LoaderManager;->d:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput p4, p0, Lo/UP$LoaderManager;->c:F

    iput-wide p5, p0, Lo/UP$LoaderManager;->a:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lo/UP$LoaderManager;->e:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 178
    iget-object v0, p0, Lo/UP$LoaderManager;->b:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .line 178
    iget v0, p0, Lo/UP$LoaderManager;->c:F

    return v0
.end method

.method public final d()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 1

    .line 178
    iget-object v0, p0, Lo/UP$LoaderManager;->d:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lo/UP$LoaderManager;->a:J

    return-wide v0
.end method
