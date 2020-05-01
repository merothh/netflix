.class Lo/acc$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acc;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/acc;

.field final synthetic d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;


# direct methods
.method constructor <init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lo/acc$14;->b:Lo/acc;

    iput-object p2, p0, Lo/acc$14;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    .line 837
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 838
    iget-object p1, p0, Lo/acc$14;->b:Lo/acc;

    invoke-virtual {p1}, Lo/acc;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v3, :cond_0

    .line 839
    invoke-static {v3}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 840
    iget-object p1, p0, Lo/acc$14;->b:Lo/acc;

    iget-object v0, p0, Lo/acc$14;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    new-instance v1, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->tap:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    invoke-static {p1, v0, v1}, Lo/acc;->b(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/cl/model/context/UserInput;)V

    .line 841
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->R()V

    .line 842
    iget-object v0, p0, Lo/acc$14;->b:Lo/acc;

    iget-object p1, p0, Lo/acc$14;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->successMessage()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lo/acc$14;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->failureMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lo/acc$14;->d:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->fallbackUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/acc;->a(Lo/acc;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 844
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Expected UMA view to run in a NetflixActivity"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
