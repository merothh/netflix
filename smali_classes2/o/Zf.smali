.class public final Lo/Zf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Zf$TaskDescription;,
        Lo/Zf$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/Zf$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Zf$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Zf$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Zf;->e:Lo/Zf$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zf$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 125
    sget-object v0, Lo/Tm;->c:Lo/Tm$TaskDescription;

    invoke-virtual {v0, p1, p2}, Lo/Tm$TaskDescription;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lo/Tm;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lo/Tm;->e()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lo/Zf$Fragment;->c:Lo/Zf$Fragment;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    sget-object v1, Lo/Zf$FragmentManager;->c:Lo/Zf$FragmentManager;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string v1, "frag_dialog"

    invoke-virtual {p2, p1, v1}, Lo/Tm;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    const-string p1, "observable"

    .line 139
    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/Am;",
            "Lo/BC;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zf$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p3}, Lo/Zf;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object p1, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 150
    new-instance p1, Lo/Zf$TaskDescription;

    const/4 p2, 0x3

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p4, p3, p4}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;ILo/amc;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(ProfileS\u2026tionResult(SAME_PROFILE))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 152
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    sget-object p1, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 154
    new-instance p1, Lo/Zf$TaskDescription;

    const/4 p2, 0x1

    sget-object p3, Lo/LegacyErrorStrings;->n:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p1, p2, p3}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(ProfileS\u2026nStatus.NO_CONNECTIVITY))"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 156
    :cond_1
    new-instance v0, Lo/Zf$StateListAnimator;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/Zf$StateListAnimator;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "if (!ConnectivityUtils.i\u2026          }\n            }"

    .line 152
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zf$TaskDescription;",
            ">;"
        }
    .end annotation

    .line 69
    sget-object v0, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 70
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v4

    const-string v0, "netflixActivity.serviceManager"

    invoke-static {v4, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object p1, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 74
    new-instance p1, Lo/Zf$TaskDescription;

    const/4 p2, 0x1

    .line 76
    sget-object p3, Lo/LegacyErrorStrings;->W:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    check-cast p3, Lcom/netflix/mediaclient/android/app/Status;

    .line 74
    invoke-direct {p1, p2, p3}, Lo/Zf$TaskDescription;-><init>(ILcom/netflix/mediaclient/android/app/Status;)V

    .line 73
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(\n       \u2026          )\n            )"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 88
    :cond_0
    invoke-interface {p2}, Lo/BC;->isProfileLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0, p1, p2}, Lo/Zf;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;

    move-result-object v0

    .line 90
    new-instance v7, Lo/Zf$Application;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/Zf$Application;-><init>(Lo/Zf;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)V

    check-cast v7, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v7}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "dialogObservable.flatMap\u2026          }\n            }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, p1, v4, p2, p3}, Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Z
    .locals 0

    .line 113
    invoke-static {p1}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-static {p1, p2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final synthetic e(Lo/Zf;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zf$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lo/Zf;->e:Lo/Zf$ActionBar;

    check-cast v0, Lo/MessagePdu;

    .line 46
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/command/SelectProfileCommand;

    invoke-direct {v1}, Lcom/netflix/cl/model/event/session/command/SelectProfileCommand;-><init>()V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/action/SelectProfile;

    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/cl/model/event/session/action/SelectProfile;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v1

    .line 48
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v2, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 49
    invoke-direct {p0, p1, p2, v1}, Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Ljava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lo/Zf$Activity;

    invoke-direct {p2, v1}, Lo/Zf$Activity;-><init>(Ljava/lang/Long;)V

    check-cast p2, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "performChecksAndChangePr\u2026}\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
