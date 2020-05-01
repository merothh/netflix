.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$100(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V

    .line 1151
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowCastMenuFab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1153
    invoke-interface {p1}, Lo/zN;->i()I

    move-result p1

    if-lez p1, :cond_1

    .line 1154
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LS;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1155
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v0, Lo/LS;

    invoke-direct {v0, p1}, Lo/LS;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$202(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/LS;)Lo/LS;

    .line 1157
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$200(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/LS;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$25;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1, v0}, Lo/LS;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_1
    return-void
.end method
