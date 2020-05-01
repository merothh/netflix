.class Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->V()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;)Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    .line 253
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;->c(Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$Application;)V

    .line 254
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->b(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis;->a()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Ljava/util/List;)Ljava/util/List;

    .line 257
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jv:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 258
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    new-instance p2, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

    invoke-direct {p2, p1, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

    .line 259
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->e(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 261
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ez:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 262
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->eG:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 263
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->eF:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 264
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ey:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 265
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->eB:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->d(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 267
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget-object p2, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->e:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->c(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    .line 269
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;->b:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->eF:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1$4;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1$4;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
