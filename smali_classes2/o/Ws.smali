.class public final Lo/Ws;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ws$TaskDescription;,
        Lo/Ws$Application;,
        Lo/Ws$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserManager<",
        "Lo/Ws$TaskDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/Ws$ActionBar;


# instance fields
.field private final b:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/Ws$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/FillResponse;

.field private final d:Lo/Zx;

.field private e:Lo/KeyChainProtectionParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Ws$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ws$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ws;->a:Lo/Ws$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "PublishSubject.create<InteractiveMomentsData>()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/Ws;->b:Lio/reactivex/subjects/PublishSubject;

    .line 35
    new-instance v0, Lo/Zx;

    invoke-direct {v0}, Lo/Zx;-><init>()V

    iput-object v0, p0, Lo/Ws;->d:Lo/Zx;

    return-void
.end method

.method public static final synthetic a(Lo/Ws;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/Ws;->b:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic a(Lo/Ws;Lo/FillResponse;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/Ws;->c:Lo/FillResponse;

    return-void
.end method

.method public static final synthetic b(Lo/Ws;)Lo/KeyChainProtectionParams;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/Ws;->e:Lo/KeyChainProtectionParams;

    return-object p0
.end method

.method public static final synthetic c(Lo/Ws;)Lo/Zx;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/Ws;->d:Lo/Zx;

    return-object p0
.end method

.method public static final synthetic e(Lo/Ws;Lo/KeyChainProtectionParams;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lo/Ws;->e:Lo/KeyChainProtectionParams;

    return-void
.end method


# virtual methods
.method public final b(Lo/Tv;Lcom/netflix/mediaclient/media/subtitles/Subtitle;Lcom/netflix/mediaclient/media/AudioSource;)V
    .locals 3

    const-string v0, "playback"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lo/KeyChainProtectionParams;

    .line 52
    invoke-virtual {p1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 53
    invoke-virtual {p3}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 54
    invoke-interface {p2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v2

    .line 51
    :goto_1
    invoke-direct {v0, v1, p3, p2}, Lo/KeyChainProtectionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lo/Ws;->c:Lo/FillResponse;

    if-eqz p2, :cond_2

    .line 57
    iput-object v0, p0, Lo/Ws;->e:Lo/KeyChainProtectionParams;

    goto :goto_3

    .line 59
    :cond_2
    sget-object p2, Lo/Ws;->a:Lo/Ws$ActionBar;

    check-cast p2, Lo/MessagePdu;

    .line 60
    iget-object p2, p0, Lo/Ws;->d:Lo/Zx;

    invoke-virtual {p2}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/hW;

    if-eqz p2, :cond_5

    .line 61
    check-cast v0, Lo/SettingsValidators;

    .line 62
    new-instance p3, Lo/Ws$Application;

    .line 63
    invoke-virtual {p1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 64
    :goto_2
    invoke-virtual {p1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v2

    .line 62
    :cond_4
    invoke-direct {p3, p0, v1, v2}, Lo/Ws$Application;-><init>(Lo/Ws;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    check-cast p3, Lo/ci;

    .line 60
    invoke-interface {p2, v0, p3}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final b(Lo/Tv;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V
    .locals 4

    .line 76
    sget-object v0, Lo/Ws;->a:Lo/Ws$ActionBar;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->stateHistory()Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->segmentHistory()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Lo/Tv;->h()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_3

    .line 81
    invoke-virtual {p1}, Lo/Tv;->m()Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/InteractiveMoments;->snapshots()Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    move-result-object v0

    .line 82
    :cond_3
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    invoke-direct {p1, p0, p2}, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;-><init>(Lo/Ws;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;)V

    check-cast p1, Lo/alS;

    .line 77
    invoke-static {v1, v2, v3, v0, p1}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alS;)Ljava/lang/Object;

    return-void
.end method

.method public d()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/Ws$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/Ws;->b:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method
