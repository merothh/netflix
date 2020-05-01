.class final Lo/Wn$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/hW;

.field final synthetic c:Lo/Wn;


# direct methods
.method public constructor <init>(Lo/Wn;Lo/hW;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hW;",
            ")V"
        }
    .end annotation

    const-string v0, "browse"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lo/Wn$ActionBar;->c:Lo/Wn;

    invoke-direct {p0}, Lo/cq;-><init>()V

    iput-object p2, p0, Lo/Wn$ActionBar;->a:Lo/hW;

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/model/leafs/PrePlayExperiences;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 62
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/netflix/model/leafs/PrePlayExperiences;->getExperiences()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/blades/PrePlayItem;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 64
    invoke-interface {p1}, Lcom/netflix/model/leafs/PrePlayExperiences;->getUiLabel()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v6, :cond_2

    .line 65
    invoke-virtual {v6}, Lcom/netflix/model/leafs/blades/PrePlayItem;->actions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/blades/PreplayItemAction;

    move-object v4, v1

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_4

    .line 68
    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PrePlayExperiences;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->trackId()I

    move-result v2

    invoke-direct {v3, v1, v2, p2, p2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 69
    invoke-interface {p1}, Lcom/netflix/model/leafs/PrePlayExperiences;->isAutoplay()Z

    move-result p2

    invoke-virtual {v3, p2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->e(Z)V

    .line 70
    invoke-virtual {v4}, Lcom/netflix/model/leafs/blades/PreplayItemAction;->videoId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 72
    iget-object v0, p0, Lo/Wn$ActionBar;->a:Lo/hW;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v1, Lo/Wn$ActionBar$Application;

    move-object v2, v1

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lo/Wn$ActionBar$Application;-><init>(Lcom/netflix/mediaclient/ui/common/PlayContextImp;Lcom/netflix/model/leafs/blades/PreplayItemAction;Ljava/lang/String;Lcom/netflix/model/leafs/blades/PrePlayItem;Lo/Wn$ActionBar;Lcom/netflix/model/leafs/PrePlayExperiences;)V

    move-object v12, v1

    check-cast v12, Lo/ci;

    move-object v7, v0

    move-object v8, p2

    invoke-interface/range {v7 .. v12}, Lo/hW;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/ci;)V

    return-void

    .line 67
    :cond_3
    move-object p1, v0

    check-cast p1, Ljava/lang/Void;

    .line 97
    :cond_4
    iget-object p1, p0, Lo/Wn$ActionBar;->c:Lo/Wn;

    invoke-static {p1}, Lo/Wn;->a(Lo/Wn;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    new-instance p2, Lo/Wn$Activity;

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    const-string v2, "CommonStatus.INTERNAL_ERROR"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/mediaclient/android/app/Status;

    const/4 v2, 0x2

    invoke-direct {p2, v1, v0, v2, v0}, Lo/Wn$Activity;-><init>(Lcom/netflix/mediaclient/android/app/Status;Lo/Tv;ILo/amc;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Lo/hW;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Wn$ActionBar;->a:Lo/hW;

    return-object v0
.end method
