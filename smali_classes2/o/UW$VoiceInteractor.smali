.class public final Lo/UW$VoiceInteractor;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

.field private final b:Lcom/netflix/model/leafs/originals/interactive/Moment;

.field private final c:F

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/util/List;FJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;",
            "Lcom/netflix/model/leafs/originals/interactive/Moment;",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;FJ)V"
        }
    .end annotation

    const-string v0, "momentState"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moment"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choices"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$VoiceInteractor;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    iput-object p2, p0, Lo/UW$VoiceInteractor;->b:Lcom/netflix/model/leafs/originals/interactive/Moment;

    iput-object p3, p0, Lo/UW$VoiceInteractor;->d:Ljava/util/List;

    iput p4, p0, Lo/UW$VoiceInteractor;->c:F

    iput-wide p5, p0, Lo/UW$VoiceInteractor;->e:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/model/leafs/originals/interactive/Moment;
    .locals 1

    .line 190
    iget-object v0, p0, Lo/UW$VoiceInteractor;->b:Lcom/netflix/model/leafs/originals/interactive/Moment;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;
    .locals 1

    .line 189
    iget-object v0, p0, Lo/UW$VoiceInteractor;->a:Lcom/netflix/mediaclient/ui/player/v2/interactive/PlayerInteractiveMomentPresenter$MomentState;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .line 192
    iget v0, p0, Lo/UW$VoiceInteractor;->c:F

    return v0
.end method

.method public final d()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lo/UW$VoiceInteractor;->e:J

    return-wide v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/model/leafs/originals/interactive/Choice;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lo/UW$VoiceInteractor;->d:Ljava/util/List;

    return-object v0
.end method
