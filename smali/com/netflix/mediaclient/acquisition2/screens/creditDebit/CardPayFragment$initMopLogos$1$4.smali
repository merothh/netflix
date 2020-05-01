.class final Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;->d:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;->d:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;->b:Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->v()Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1$4;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;->loadMopLogos(Ljava/util/List;)V

    :cond_0
    return-void
.end method
