.class public Lo/abK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lo/abL;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lo/BaseAdapter;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private m:Lo/BaseAdapter;


# direct methods
.method constructor <init>(Lo/abL;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/abK;->b:Lo/abL;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fU:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/abK;->d:Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fN:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/abK;->e:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fQ:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/abK;->c:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fO:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/abK;->a:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fS:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/abK;->i:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fM:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/abK;->h:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fV:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/abK;->j:Landroid/widget/LinearLayout;

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fR:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/abK;->g:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;
    .locals 3

    .line 102
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerLinkText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Lo/abK$3;

    invoke-direct {v0, p0}, Lo/abK$3;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 156
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result p0

    .line 157
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p0, v2

    .line 160
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->footerText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 63
    iget-object v0, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {v0}, Lo/abL;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {v0}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lo/abK;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lo/abK;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    iget-object v1, p0, Lo/abK;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->continueBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lo/abK;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->seeOtherPlansText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lo/abK;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->skipBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lo/abK;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lo/abK;->b:Lo/abL;

    invoke-static {v2, v0}, Lo/abK;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lo/abK;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    iget-object v1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result v1

    invoke-static {v1}, Lo/abL;->b(Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lo/abK;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    :cond_2
    invoke-static {v0}, Lo/abR;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, p0, Lo/abK;->b:Lo/abL;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->go:I

    invoke-virtual {v1, v3}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/BaseAdapter;

    iput-object v1, p0, Lo/abK;->f:Lo/BaseAdapter;

    .line 84
    iget-object v1, p0, Lo/abK;->b:Lo/abL;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->gl:I

    invoke-virtual {v1, v3}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/BaseAdapter;

    iput-object v1, p0, Lo/abK;->m:Lo/BaseAdapter;

    .line 86
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage1()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/abK;->f:Lo/BaseAdapter;

    if-eqz v3, :cond_3

    .line 88
    invoke-virtual {v3, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 90
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->urlImage2()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo/abK;->m:Lo/BaseAdapter;

    if-eqz v3, :cond_4

    .line 92
    invoke-virtual {v3, v1}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 96
    :cond_4
    invoke-static {v0}, Lo/abR;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lo/abK;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public e(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "eog_landing"

    if-nez p1, :cond_0

    const-string p1, "EogLandingPage:: null view? This should never happen!"

    .line 173
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 178
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->fR:I

    if-ne p1, v2, :cond_2

    .line 179
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object p1

    invoke-static {p1}, Lo/abR;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->d()V

    goto :goto_0

    :cond_1
    const-string p1, "showPlans view should be invisible.."

    .line 182
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fV:I

    if-ne p1, v1, :cond_3

    .line 185
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->a()V

    goto :goto_0

    .line 186
    :cond_3
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fP:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_5

    .line 187
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->g()V

    .line 188
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result p1

    invoke-static {p1}, Lo/abL;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    sget-object v1, Lcom/netflix/cl/model/AppView;->eogPrompt:Lcom/netflix/cl/model/AppView;

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/abL;->startActivity(Landroid/content/Intent;)V

    .line 191
    :cond_4
    iget-object p1, p0, Lo/abK;->b:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->finish()V

    :goto_0
    return v0

    :cond_5
    return v2
.end method
