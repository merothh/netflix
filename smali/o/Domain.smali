.class public Lo/Domain;
.super Lo/Dataset;
.source ""


# instance fields
.field private final f:Lo/TextInputTimePickerView;


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

    const-string v1, "FetchROARVideos"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 35
    invoke-direct/range {v0 .. v8}, Lo/Dataset;-><init>(Ljava/lang/String;Lo/FontRequest;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZLo/ci;)V

    .line 38
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "FetchROARVideosTask with null listId"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lo/SEService;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/TextInputTimePickerView;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lo/Domain;->f:Lo/TextInputTimePickerView;

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lo/Dataset;->b(Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lo/Domain;->f:Lo/TextInputTimePickerView;

    iget v1, p0, Lo/Domain;->e:I

    iget v2, p0, Lo/Domain;->i:I

    invoke-static {p1, v0, v1, v2}, Lo/SEService;->b(Ljava/util/List;Lo/TextInputTimePickerView;II)V

    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 4

    .line 52
    iget-object p2, p0, Lo/Domain;->a:Lo/FontRequest;

    iget-object v0, p0, Lo/Domain;->f:Lo/TextInputTimePickerView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lo/Domain;->e:I

    iget v3, p0, Lo/Domain;->i:I

    invoke-static {v2, v3}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "tallPanelArt"

    aput-object v3, v1, v2

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->e(Lo/TextInputTimePickerView;)Ljava/util/List;

    move-result-object p2

    .line 53
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0}, Lo/Domain;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lo/Domain;->n()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/falkor/FalkorAgentStatus;->d(Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lo/ci;->g(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
