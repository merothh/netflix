.class Lo/acc$5;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/acc;

.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field final synthetic d:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lo/acc;Ljava/lang/String;Ljava/lang/Long;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lo/acc$5;->a:Lo/acc;

    iput-object p3, p0, Lo/acc$5;->d:Ljava/lang/Long;

    iput-object p4, p0, Lo/acc$5;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    iput-object p5, p0, Lo/acc$5;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 1016
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UpdateProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1017
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v0, p0, Lo/acc$5;->d:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 1018
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Lo/acc$5;->a:Lo/acc;

    invoke-static {p1}, Lo/acc;->c(Lo/acc;)V

    .line 1020
    iget-object p1, p0, Lo/acc$5;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1021
    iget-object p1, p0, Lo/acc$5;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1024
    :cond_0
    iget-object p1, p0, Lo/acc$5;->a:Lo/acc;

    new-instance v1, Lcom/netflix/cl/model/Error;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/netflix/cl/model/Error;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/acc;->a(Lo/acc;Lcom/netflix/cl/model/Error;)V

    .line 1025
    iget-object p1, p0, Lo/acc$5;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1026
    iget-object p1, p0, Lo/acc$5;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/adk;->a(Ljava/lang/String;I)V

    .line 1027
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "Request updateProductChoiceMap for price change UMA failed"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 1029
    :cond_1
    iget-object p1, p0, Lo/acc$5;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Am;->d(Z)V

    :cond_2
    :goto_0
    return-void
.end method
