.class final Lo/Ne$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ne;->d(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/AnalogClock;

.field final synthetic c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

.field final synthetic d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

.field final synthetic e:Lo/Ne;


# direct methods
.method constructor <init>(Lo/Ne;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 0

    iput-object p1, p0, Lo/Ne$StateListAnimator;->e:Lo/Ne;

    iput-object p2, p0, Lo/Ne$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    iput-object p3, p0, Lo/Ne$StateListAnimator;->b:Lo/AnalogClock;

    iput-object p4, p0, Lo/Ne$StateListAnimator;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lo/Ne$StateListAnimator;->e(Landroid/content/Intent;)V

    return-void
.end method

.method public final e(Landroid/content/Intent;)V
    .locals 3

    .line 24
    sget-object v0, Lo/WebViewProvider;->c:Lo/WebViewProvider$Activity;

    invoke-virtual {v0}, Lo/WebViewProvider$Activity;->e()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lo/Ne$StateListAnimator;->e:Lo/Ne;

    invoke-static {v0}, Lo/Ne;->c(Lo/Ne;)Lo/Ne$Application;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lo/Ne$Application;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v1, p0, Lo/Ne$StateListAnimator;->e:Lo/Ne;

    invoke-static {v1}, Lo/Ne;->a(Lo/Ne;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    move p1, v0

    .line 33
    :goto_0
    iget-object v0, p0, Lo/Ne$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/Ne$StateListAnimator;->b:Lo/AnalogClock;

    iget-object v2, p0, Lo/Ne$StateListAnimator;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->b(ZLo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    :cond_2
    return-void
.end method
