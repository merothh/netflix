.class public Lo/AutofillFieldClassificationService;
.super Lo/Dataset;
.source ""


# instance fields
.field private final h:Lo/TextInputTimePickerView;


# direct methods
.method public constructor <init>(Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "IIZZ",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v1, "FetchTopTenVideosTask"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 23
    invoke-direct/range {v0 .. v8}, Lo/Dataset;-><init>(Ljava/lang/String;Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->k:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lo/SEService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lo/AutofillFieldClassificationService;->h:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Lo/Dataset;->b(Ljava/util/List;)V

    .line 30
    iget-object v0, p0, Lo/AutofillFieldClassificationService;->h:Lo/TextInputTimePickerView;

    iget v1, p0, Lo/AutofillFieldClassificationService;->e:I

    iget v2, p0, Lo/AutofillFieldClassificationService;->i:I

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lo/SEService;->e(Ljava/util/List;Lo/TextInputTimePickerView;IIZ)V

    return-void
.end method
