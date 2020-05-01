.class public final Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1$1;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;->a(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1$1;->a:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2}, Lo/zP;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    if-nez p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1$1;->a:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;->d:Lo/act;

    invoke-static {p1}, Lo/act;->b(Lo/act;)Lo/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/EditText;->b(Z)V

    :cond_0
    return-void

    .line 183
    :cond_1
    sget-object p2, Lo/acn;->d:Lo/acn;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;->trackingInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "productChoiceResponse.trackingInfo()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lo/acn;->d(Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1$1;->a:Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/ums/planselect/PlanSelectFragment$fetchData$1;->d:Lo/act;

    invoke-static {p2, p1}, Lo/act;->c(Lo/act;Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoiceResponse;)V

    return-void
.end method
