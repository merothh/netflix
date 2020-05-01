.class public final Lo/Wl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Wl$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserManager<",
        "Lo/Wn$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Wn$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Pr\u2026Repository.PrePlayData>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Wl;->d:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic c(Lo/Wl;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/Wl;->d:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/netflix/model/leafs/PrePlayExperiences;Lo/hW;Lo/Wn$Activity;)V
    .locals 8

    const-string v0, "browse"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prePlayerData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 32
    invoke-interface {p1}, Lcom/netflix/model/leafs/PrePlayExperiences;->getExperiences()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/blades/PrePlayItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/blades/PrePlayItem;->videoId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    if-eqz p1, :cond_1

    .line 33
    invoke-interface {p1}, Lcom/netflix/model/leafs/PrePlayExperiences;->getInteractiveFeatures()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->videoMoments()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 36
    new-instance p1, Lo/KeyChainProtectionParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lo/KeyChainProtectionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/amc;)V

    check-cast p1, Lo/SettingsValidators;

    .line 37
    new-instance v0, Lo/Wl$ActionBar;

    invoke-direct {v0, p0, p3}, Lo/Wl$ActionBar;-><init>(Lo/Wl;Lo/Wn$Activity;)V

    check-cast v0, Lo/ci;

    .line 35
    invoke-interface {p2, p1, v0}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_1

    .line 40
    :cond_2
    iget-object p1, p0, Lo/Wl;->d:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, p3}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Wn$Activity;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/Wl;->d:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method
