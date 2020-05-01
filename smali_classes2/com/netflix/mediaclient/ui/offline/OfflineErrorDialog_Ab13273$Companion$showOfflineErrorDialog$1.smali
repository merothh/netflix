.class public final Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Rf$TaskDescription;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/JM$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/nS;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lo/Bi;

.field final synthetic d:J

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>(JLcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)V
    .locals 0

    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->d:J

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->c:Lo/Bi;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->a:Lo/nS;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/JM$StateListAnimator;)V
    .locals 3

    .line 34
    new-instance v0, Lo/SY$ActionBar;

    invoke-virtual {p1}, Lo/JM$StateListAnimator;->e()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->d:J

    invoke-direct {v0, p1, v1, v2}, Lo/SY$ActionBar;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lo/Rf;->d(Lo/SY$ActionBar;)V

    .line 35
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->e:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 38
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->c:Lo/Bi;

    .line 39
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->a:Lo/nS;

    .line 36
    invoke-static {v0, v1, v2}, Lo/Re;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)Lo/Re;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showOfflineErrorDialog(Lo/Re;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lo/JM$StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;->a(Lo/JM$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
