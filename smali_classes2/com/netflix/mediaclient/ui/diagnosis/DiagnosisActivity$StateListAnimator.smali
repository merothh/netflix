.class public Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewHolder"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateListAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Landroid/content/Context;

.field final synthetic d:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/content/Context;)V
    .locals 1

    .line 293
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    .line 294
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->aa:I

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jv:I

    invoke-direct {p0, p2, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 295
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p3, "netflix"

    .line 299
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 301
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->b:Landroid/content/Context;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->hM:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 302
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 304
    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->he:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "DiagnosisActivity"

    const-string v1, "urlList is null"

    .line 342
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 310
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->b:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 311
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aa:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 313
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->eA:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 314
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eD:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->eC:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 316
    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->bG:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->a(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/bX;

    .line 319
    invoke-virtual {v2}, Lo/bX;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3, v3, p1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$StateListAnimator;->b(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 320
    invoke-virtual {v2}, Lo/bX;->c()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    move-result-object p1

    sget-object v3, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->d:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x4

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {v2}, Lo/bX;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 322
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->bG:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nw-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo/bX;->a()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo/bX;->d()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->bH:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v2}, Lo/bX;->c()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    move-result-object p1

    sget-object v4, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->e:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 329
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v2}, Lo/bX;->c()Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->b:Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/api/diagnostics/IDiagnosis$UrlStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 332
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-object p2
.end method
