.class public Lo/abN;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abN$TaskDescription;
    }
.end annotation


# static fields
.field public static final c:Lo/abN$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/abN$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abN$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/abN;->c:Lo/abN$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static final a(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z
    .locals 1

    sget-object v0, Lo/abN;->c:Lo/abN$TaskDescription;

    invoke-virtual {v0, p0}, Lo/abN$TaskDescription;->e(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z

    move-result p0

    return p0
.end method

.method public static final e(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V
    .locals 1

    sget-object v0, Lo/abN;->c:Lo/abN$TaskDescription;

    invoke-virtual {v0, p0, p1}, Lo/abN$TaskDescription;->c(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/abN;->g()Lo/abJ;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected g()Lo/abJ;
    .locals 3

    .line 30
    sget-object v0, Lo/abJ;->i:Lo/abJ$Application;

    invoke-virtual {p0}, Lo/abN;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_survey"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "intent.getParcelableExtra(EXTRA_SURVEY)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/model/survey/Survey;

    invoke-virtual {v0, v1}, Lo/abJ$Application;->d(Lcom/netflix/model/survey/Survey;)Lo/abJ;

    move-result-object v0

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 34
    sget-object v0, Lcom/netflix/cl/model/AppView;->survey:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lo/CookieSyncManager;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lo/abN;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_survey"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/survey/Survey;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->d()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->c()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lo/abN;->finish()V

    return-void
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
