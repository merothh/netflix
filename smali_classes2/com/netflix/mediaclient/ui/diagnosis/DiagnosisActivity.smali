.class public Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/bX;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

.field private d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

.field private e:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 2

    const-string v0, "DiagnosisActivity"

    const-string v1, "Diagnosis being attempted"

    .line 125
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;->e()V

    .line 127
    sget-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->a:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->notifyDataSetChanged()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;)Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    return-object p1
.end method

.method private b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V
    .locals 3

    .line 199
    sget-object v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$2;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->i:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eS:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 239
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hQ:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 226
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kq:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 228
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hR:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c()Ljava/lang/String;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kq:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 220
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e:Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eK:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->g:Landroid/widget/TextView;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kp:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kb:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 206
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Landroid/widget/ListView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->g:Landroid/widget/TextView;

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/bX;

    .line 178
    invoke-virtual {v3}, Lo/bX;->e()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 179
    invoke-virtual {v3}, Lo/bX;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 187
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kK:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v2, :cond_4

    .line 189
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->eT:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz v1, :cond_5

    .line 191
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hK:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_5
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hQ:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->h:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->i:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->j:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

    return-object p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

    return-object p1
.end method

.method private static e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/FS;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    :goto_0
    return-object v0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 144
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 249
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$4;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 121
    sget-object v0, Lcom/netflix/cl/model/AppView;->customerService:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lo/adq;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 65
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setRequestedOrientation(I)V

    .line 67
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->ac:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 72
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setRequestedOrientation(I)V

    .line 74
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->ab:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->setContentView(I)V

    :goto_0
    const-string p1, "DiagnosisActivity"

    const-string v0, "onCreate"

    .line 79
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;->b()V

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;->c()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    .line 94
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b:Ljava/util/List;

    :cond_0
    const-string v0, "DiagnosisActivity"

    const-string v1, "onDestroy"

    .line 96
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showMdxInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
