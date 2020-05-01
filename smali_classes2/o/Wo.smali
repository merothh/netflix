.class public final Lo/Wo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Wo$ActionBar;,
        Lo/Wo$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserManager<",
        "Lo/UK$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lo/Wo$StateListAnimator;


# instance fields
.field private final a:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/UK$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Wo$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Wo$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Wo;->e:Lo/Wo$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<Pl\u2026rRepository.PlayerData>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Wo;->a:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic b(Lo/Wo;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/Wo;->a:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private final e(Lo/UK$TaskDescription;Lo/hW;)V
    .locals 2

    .line 75
    new-instance v0, Lo/RecoveryController;

    .line 76
    invoke-virtual {p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 75
    :goto_0
    invoke-direct {v0, v1}, Lo/RecoveryController;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/SettingsValidators;

    .line 77
    new-instance v1, Lo/Wo$TaskDescription;

    invoke-direct {v1, p0, p1, p2}, Lo/Wo$TaskDescription;-><init>(Lo/Wo;Lo/UK$TaskDescription;Lo/hW;)V

    check-cast v1, Lo/ci;

    .line 74
    invoke-interface {p2, v0, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method

.method public static synthetic e(Lo/Wo;Lo/UK$TaskDescription;Lo/hW;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 101
    check-cast p3, Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lo/Wo;->d(Lo/UK$TaskDescription;Lo/hW;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    return-void
.end method


# virtual methods
.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/UK$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lo/Wo;->a:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public final d(Lo/UK$TaskDescription;Lo/hW;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 8

    const-string v0, "playerData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browse"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lo/Wo;->e:Lo/Wo$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    if-nez p3, :cond_1

    .line 105
    invoke-virtual {p1}, Lo/UK$TaskDescription;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 113
    new-instance v0, Lo/BatchUpdates;

    const-string v1, "playable"

    .line 114
    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-interface {v2}, Lo/AK;->P()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 116
    invoke-interface {v2}, Lo/AK;->K()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 113
    invoke-direct {v0, v1, v3, v4}, Lo/BatchUpdates;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    check-cast v0, Lo/SettingsValidators;

    .line 118
    new-instance v7, Lo/Wo$Activity;

    move-object v1, v7

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/Wo$Activity;-><init>(Lo/AK;Lo/Wo;Lo/hW;Lo/UK$TaskDescription;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    check-cast v7, Lo/ci;

    .line 113
    invoke-interface {p2, v0, v7}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_2

    .line 106
    :cond_1
    :goto_0
    new-instance v0, Lo/KeyChainProtectionParams;

    .line 107
    invoke-virtual {p1}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lo/Bc;->bb()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    .line 106
    invoke-direct/range {v1 .. v6}, Lo/KeyChainProtectionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/amc;)V

    check-cast v0, Lo/SettingsValidators;

    .line 108
    new-instance v1, Lo/Wo$ActionBar;

    invoke-direct {v1, p0, p1, p3}, Lo/Wo$ActionBar;-><init>(Lo/Wo;Lo/UK$TaskDescription;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    check-cast v1, Lo/ci;

    .line 105
    invoke-interface {p2, v0, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final e(Lo/hW;Lo/UK$TaskDescription;Lcom/netflix/mediaclient/ui/player/PlayerExtras;)V
    .locals 7

    const-string v0, "browse"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->playbackGraph()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 43
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/player/PlayerExtras;->j()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lo/UK$TaskDescription;->e()Lo/Bc;

    move-result-object p3

    invoke-interface {p3}, Lo/Bc;->ap()Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/netflix/model/leafs/originals/interactive/InteractiveFeatures;->resetUserState()Z

    move-result p3

    if-ne p3, v0, :cond_2

    .line 44
    invoke-direct {p0, p2, p1}, Lo/Wo;->e(Lo/UK$TaskDescription;Lo/hW;)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    .line 46
    invoke-static/range {v1 .. v6}, Lo/Wo;->e(Lo/Wo;Lo/UK$TaskDescription;Lo/hW;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;ILjava/lang/Object;)V

    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/Wo;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
