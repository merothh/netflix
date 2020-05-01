.class public Lo/LockScreenRequiredException;
.super Lo/VoicemailContract;
.source ""


# instance fields
.field private final d:I

.field private e:Ljava/lang/String;

.field private final g:I

.field private final i:I


# direct methods
.method public constructor <init>(Lo/FontRequest;Ljava/lang/String;IILo/ci;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FontRequest<",
            "*>;",
            "Ljava/lang/String;",
            "II",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    const-string v0, "FetchLoMos"

    .line 54
    invoke-direct {p0, v0, p1, p5}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 56
    iput-object p2, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    .line 57
    iput p3, p0, Lo/LockScreenRequiredException;->d:I

    .line 58
    iput p4, p0, Lo/LockScreenRequiredException;->g:I

    .line 59
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p1

    invoke-virtual {p0}, Lo/LockScreenRequiredException;->s()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {p1, p2, p3}, Lo/bO;->c(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/LockScreenRequiredException;->i:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-static {}, Lo/ep;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lo/ep;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->getCellId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/LockScreenRequiredException;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/LockScreenRequiredException;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Netflix.Request.AB15161NqTracking"

    .line 147
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected a(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/adt$Activity;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-static {}, Lo/ady;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Lo/adt$Activity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "includeBookmark"

    invoke-direct {v1, v3, v2}, Lo/adt$Activity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TextInputTimePickerView;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lo/LockScreenRequiredException;->a:Lo/FontRequest;

    invoke-virtual {v0}, Lo/FontRequest;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lolomo"

    const-string v2, "summary"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    aput-object v2, v0, v3

    .line 75
    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    iget-object v0, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v4

    iget v1, p0, Lo/LockScreenRequiredException;->d:I

    iget v6, p0, Lo/LockScreenRequiredException;->g:I

    .line 79
    invoke-static {v1, v6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "lolomos"

    aput-object v1, v0, v4

    iget-object v1, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    aput-object v1, v0, v3

    iget v1, p0, Lo/LockScreenRequiredException;->d:I

    iget v6, p0, Lo/LockScreenRequiredException;->g:I

    .line 80
    invoke-static {v1, v6}, Lo/SearchIndexableResource;->e(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    .line 82
    :goto_0
    invoke-interface {v0, v2}, Lo/TextInputTimePickerView;->b(Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v5, [Ljava/lang/Object;

    .line 84
    iget v6, p0, Lo/LockScreenRequiredException;->i:I

    invoke-static {v6}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v6

    aput-object v6, v1, v4

    aput-object v2, v1, v3

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Lo/ady;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v5, [Ljava/lang/Object;

    .line 87
    iget v2, p0, Lo/LockScreenRequiredException;->i:I

    invoke-static {v2}, Lo/SearchIndexableResource;->d(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "volatileBitmaskedDetails"

    aput-object v2, v1, v3

    invoke-static {v1}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/TextInputTimePickerView;->d(Lo/TextInputTimePickerView;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected b(Lo/ci;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lo/ci;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lo/VoicemailContract;->c(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-super {p0}, Lo/VoicemailContract;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lo/ci;Lo/TextClock;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lo/LockScreenRequiredException;->a:Lo/FontRequest;

    iget v1, p0, Lo/LockScreenRequiredException;->d:I

    iget-object p2, p2, Lo/TextClock;->d:Ljava/util/Collection;

    invoke-virtual {v0, v1, p2}, Lo/FontRequest;->d(ILjava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 94
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, p2, v0}, Lo/ci;->a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 99
    invoke-static {}, Lo/eG;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 100
    invoke-static {}, Lo/aek;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lo/LockScreenRequiredException;->d:I

    const/4 p2, 0x7

    if-lt p1, p2, :cond_2

    .line 103
    iget-object p1, p0, Lo/LockScreenRequiredException;->e:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    iget-object p2, p0, Lo/LockScreenRequiredException;->a:Lo/FontRequest;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "lolomo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lo/SearchIndexableResource;->b([Ljava/lang/Object;)Lo/TextInputTimePickerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/FontRequest;->b(Lo/TextInputTimePickerView;)Lo/agi;

    move-result-object p2

    .line 106
    instance-of v0, p2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 108
    invoke-virtual {p2}, Lcom/netflix/model/leafs/LoLoMoSummaryImpl;->getLolomoId()Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_1
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 113
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.netflix.mediaclient.intent.action.PREFETCH_DP_PRIMARY_DATA_LOLOMO"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extra_lolomo_id"

    .line 116
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget p1, p0, Lo/LockScreenRequiredException;->d:I

    const-string v0, "extra_from_lomo"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget p1, p0, Lo/LockScreenRequiredException;->g:I

    const-string v0, "extra_to_lomo"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget p1, p0, Lo/LockScreenRequiredException;->i:I

    const-string v0, "extra_to_video"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lo/LockScreenRequiredException;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    const-string p1, "FetchLoMos"

    const-string p2, "BROADCAST_LOLOMO_DP_PRIMARY_DATA_FETCH initiated"

    .line 122
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
