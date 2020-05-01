.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GQ;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY$StateListAnimator;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lo/alA;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;->d:Lo/alA;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/GY$StateListAnimator;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v0, Landroid/content/Context;

    .line 53
    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;->d:Lo/alA;

    invoke-virtual {p1}, Lo/GY$StateListAnimator;->b()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lo/GY$StateListAnimator;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostViewModel$loadItem$1;->d(Lo/GY$StateListAnimator;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
