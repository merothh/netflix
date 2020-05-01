.class public final Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
        "Lo/BC;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/YY;


# direct methods
.method public constructor <init>(Lo/YY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;->c:Lo/YY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profile"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;->c:Lo/YY;

    invoke-static {v0}, Lo/YY;->l(Lo/YY;)V

    .line 526
    invoke-static {p1}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 527
    new-instance p2, Lo/hK;

    .line 529
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pg:I

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-direct {p2, v1, v0, v2, v1}, Lo/hK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 534
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;->c:Lo/YY;

    invoke-static {v1}, Lo/YY;->k(Lo/YY;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lo/CalendarViewLegacyDelegate;->a(Landroid/content/Context;Landroid/os/Handler;Lo/hK;)Lo/ScrollBarDrawable$ActionBar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/ScrollBarDrawable$ActionBar;)Landroid/app/Dialog;

    return-void

    .line 539
    :cond_1
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;->c:Lo/YY;

    invoke-static {p2}, Lo/YY;->m(Lo/YY;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    .line 538
    invoke-static {p2}, Lo/YK;->e(Landroid/content/DialogInterface$OnClickListener;)Lo/YK;

    move-result-object p2

    .line 541
    check-cast p2, Lo/PushbackReader;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Lo/PushbackReader;)Z

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p2, Lo/BC;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$deleteProfile$1;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
