.class public final Lo/MR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MR$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/MR$ActionBar;


# instance fields
.field private final a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

.field private final b:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lo/MK;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/MK;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/zG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/MR$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MR$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const-string v0, "netflixMdxController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixActivity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MR;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 25
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    const-string v0, "ReplaySubject.create<MdxDataEvent>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/MR;->d:Lio/reactivex/subjects/ReplaySubject;

    .line 27
    iget-object p1, p0, Lo/MR;->d:Lio/reactivex/subjects/ReplaySubject;

    check-cast p1, Lio/reactivex/Observable;

    iput-object p1, p0, Lo/MR;->b:Lio/reactivex/Observable;

    .line 32
    invoke-static {}, Lio/reactivex/subjects/ReplaySubject;->create()Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    const-string v0, "ReplaySubject.create<IBrowseManager>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/MR;->e:Lio/reactivex/subjects/ReplaySubject;

    .line 45
    new-instance p1, Lo/MR$2;

    invoke-direct {p1, p0}, Lo/MR$2;-><init>(Lo/MR;)V

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 144
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 145
    iget-object v0, p0, Lo/MR;->e:Lio/reactivex/subjects/ReplaySubject;

    .line 146
    iget-object v1, p0, Lo/MR;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "browses\n            .tak\u2026xMdxController.destroy())"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;-><init>(Lo/MR;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 162
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$3;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$3;-><init>(Lo/MR;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 147
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/MR;->d:Lio/reactivex/subjects/ReplaySubject;

    return-object p0
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 74
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 75
    iget-object v0, p0, Lo/MR;->e:Lio/reactivex/subjects/ReplaySubject;

    .line 76
    iget-object v1, p0, Lo/MR;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "browses\n            .tak\u2026xMdxController.destroy())"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;-><init>(Lo/MR;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 112
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$3;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$3;-><init>(Lo/MR;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 77
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 119
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 120
    iget-object v0, p0, Lo/MR;->e:Lio/reactivex/subjects/ReplaySubject;

    .line 121
    iget-object v1, p0, Lo/MR;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->o()Lio/reactivex/Observable;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v2

    const-string v0, "browses\n            .tak\u2026xMdxController.destroy())"

    invoke-static {v2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;-><init>(Lo/MR;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    .line 137
    new-instance p2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$3;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$3;-><init>(Lo/MR;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Lo/alA;

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 122
    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/subjects/ReplaySubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject<",
            "Lo/zG;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/MR;->e:Lio/reactivex/subjects/ReplaySubject;

    return-object v0
.end method

.method public final b(Lo/Build$ComponentCallbacks2;)V
    .locals 1

    const-string v0, "episodePlaybackInitiated"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 65
    invoke-virtual {p1}, Lo/Build$ComponentCallbacks2;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/Build$ComponentCallbacks2;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/MR;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lo/Build$FragmentManager;)V
    .locals 1

    const-string v0, "episodePlaybackInitiated"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 55
    invoke-virtual {p1}, Lo/Build$FragmentManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/Build$FragmentManager;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/MR;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/MK;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/MR;->b:Lio/reactivex/Observable;

    return-object v0
.end method

.method public final d()Lo/Bc;
    .locals 2

    .line 36
    iget-object v0, p0, Lo/MR;->d:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MK;

    .line 38
    instance-of v1, v0, Lo/MK$Activity;

    if-eqz v1, :cond_0

    check-cast v0, Lo/MK$Activity;

    invoke-virtual {v0}, Lo/MK$Activity;->c()Lo/AX;

    move-result-object v0

    check-cast v0, Lo/Bc;

    goto :goto_0

    .line 39
    :cond_0
    instance-of v1, v0, Lo/MK$ActionBar;

    if-eqz v1, :cond_1

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v0

    check-cast v0, Lo/Bc;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Lo/Build$ClipData;)V
    .locals 1

    const-string v0, "movieReady"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 60
    invoke-virtual {p1}, Lo/Build$ClipData;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/Build$ClipData;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/MR;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lo/Build$Configuration;)V
    .locals 1

    const-string v0, "postPlayNextEpisodeReady"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 70
    invoke-virtual {p1}, Lo/Build$Configuration;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/Build$Configuration;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/MR;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lo/Build$Dialog;)V
    .locals 1

    const-string v0, "episodeReady"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 50
    invoke-virtual {p1}, Lo/Build$Dialog;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lo/Build$Dialog;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/MR;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
