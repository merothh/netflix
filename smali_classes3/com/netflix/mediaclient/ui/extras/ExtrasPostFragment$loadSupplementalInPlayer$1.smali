.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GT;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/GT;


# direct methods
.method public constructor <init>(Lo/GT;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;->b:Lo/GT;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;->b:Lo/GT;

    invoke-virtual {v0}, Lo/GT;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1$1;

    check-cast v1, Lo/alN;

    invoke-static {v0, p1, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;->b:Lo/GT;

    invoke-virtual {p1}, Lo/GT;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasPostFragment$loadSupplementalInPlayer$1;->b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
