.class public final Lo/Ne;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ne$Application;
    }
.end annotation


# instance fields
.field private final b:Lcom/uber/autodispose/AutoDisposeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uber/autodispose/AutoDisposeConverter<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/Ne$Application;

.field private final e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/uber/autodispose/AutoDisposeConverter;Lo/Ne$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lcom/uber/autodispose/AutoDisposeConverter<",
            "Landroid/content/Intent;",
            ">;",
            "Lo/Ne$Application;",
            ")V"
        }
    .end annotation

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoDisposeConverter"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentResolver"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ne;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/Ne;->b:Lcom/uber/autodispose/AutoDisposeConverter;

    iput-object p3, p0, Lo/Ne;->d:Lo/Ne$Application;

    return-void
.end method

.method public static final synthetic a(Lo/Ne;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/Ne;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method

.method public static final synthetic c(Lo/Ne;)Lo/Ne$Application;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/Ne;->d:Lo/Ne$Application;

    return-object p0
.end method


# virtual methods
.method public final d(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;",
            ")V"
        }
    .end annotation

    const-string v0, "shareTarget"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lo/Ne;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Lo/Serializable;

    invoke-virtual {p1, v0, p2}, Lo/AnalogClock;->b(Lo/Serializable;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)Lio/reactivex/Single;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lo/Ne;->b:Lcom/uber/autodispose/AutoDisposeConverter;

    check-cast v1, Lio/reactivex/SingleConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->as(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    .line 23
    new-instance v1, Lo/Ne$StateListAnimator;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/Ne$StateListAnimator;-><init>(Lo/Ne;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->e(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
