.class public Lo/abS;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lo/abL;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lo/abL;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/abS;->c:Lo/abL;

    .line 60
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gh:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->e:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gg:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->b:Landroid/widget/TextView;

    .line 63
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ge:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->d:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gk:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->a:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gd:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->h:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gb:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->f:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gn:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->j:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gp:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->g:Landroid/widget/TextView;

    .line 70
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fT:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->i:Landroid/widget/TextView;

    .line 71
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fW:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->n:Landroid/widget/TextView;

    .line 72
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fY:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/abS;->k:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gf:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lo/abS;->l:Landroid/widget/CheckBox;

    .line 75
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ga:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lo/abS;->o:Landroid/widget/CheckBox;

    .line 76
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gi:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lo/abS;->m:Landroid/widget/CheckBox;

    .line 78
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gc:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/abS;->p:Landroid/widget/LinearLayout;

    .line 79
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fZ:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/abS;->s:Landroid/widget/LinearLayout;

    .line 80
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gj:I

    invoke-virtual {p1, v0}, Lo/abL;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lo/abS;->r:Landroid/widget/LinearLayout;

    .line 82
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->V:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/abS;->q:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->X:I

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lo/abS;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 200
    iget-object v0, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {v0}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "eog_plan_page"

    const-string v0, "skip cl logging for plan change - eogAlert null"

    .line 202
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPlanId()Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_0
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 231
    :cond_4
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 232
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    return-void
.end method

.method private b()V
    .locals 2

    .line 191
    iget-object v0, p0, Lo/abS;->l:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 192
    iget-object v0, p0, Lo/abS;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lo/abS;->m:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    iget-object v0, p0, Lo/abS;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/abS;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lo/abS;->s:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/abS;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lo/abS;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/abS;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private e(I)V
    .locals 2

    .line 167
    invoke-direct {p0}, Lo/abS;->b()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 185
    iget-object v1, p0, Lo/abS;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v1, p0, Lo/abS;->m:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lo/abS;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/abS;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lo/abS;->o:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lo/abS;->s:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/abS;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lo/abS;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lo/abS;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lo/abS;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {v0, p1}, Lo/abL;->e(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "eog_plan_page"

    if-nez p1, :cond_0

    const-string p1, "EogPlanPage:: null view? This should never happen!"

    .line 140
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 145
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->gc:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->gf:I

    if-ne p1, v2, :cond_1

    goto :goto_2

    .line 149
    :cond_1
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->fZ:I

    if-eq p1, v2, :cond_5

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->ga:I

    if-ne p1, v2, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->gj:I

    if-eq p1, v2, :cond_4

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->gi:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    const-string p1, "Clicked on UHD plan"

    .line 154
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 155
    invoke-direct {p0, p1}, Lo/abS;->e(I)V

    .line 156
    invoke-direct {p0, p1}, Lo/abS;->a(I)V

    goto :goto_3

    :cond_5
    :goto_1
    const-string p1, "Clicked on HD plan"

    .line 150
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v0}, Lo/abS;->e(I)V

    .line 152
    invoke-direct {p0, v0}, Lo/abS;->a(I)V

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "Clicked on SD plan"

    .line 146
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, v3}, Lo/abS;->e(I)V

    .line 148
    invoke-direct {p0, v3}, Lo/abS;->a(I)V

    :goto_3
    return v0
.end method

.method public c()V
    .locals 4

    .line 87
    iget-object v0, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {v0}, Lo/abL;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {v0}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lo/abS;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lo/abS;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lo/abR;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->body()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->selectPlanText()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lo/abS;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lo/abS;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->sdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lo/abS;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lo/abS;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->hdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lo/abS;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lo/abS;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->uhdPlanPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {v1}, Lo/abL;->e()I

    move-result v1

    invoke-direct {p0, v1}, Lo/abS;->e(I)V

    .line 104
    iget-object v1, p0, Lo/abS;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {v2}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v3

    invoke-static {v2, v3}, Lo/abK;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lo/abS;->i:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 106
    iget-object v1, p0, Lo/abS;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->continueBtnText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lo/abS;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->disclaimerText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p1, "eog_plan_page"

    const-string v1, "EogPlanPage:: null view? This should never happen!"

    .line 119
    invoke-static {p1, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fX:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 124
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->g()V

    .line 125
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->c()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isBlocking()Z

    move-result p1

    invoke-static {p1}, Lo/abL;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    sget-object v1, Lcom/netflix/cl/model/AppView;->eogPrompt:Lcom/netflix/cl/model/AppView;

    invoke-static {p1, v1, v2}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/abL;->startActivity(Landroid/content/Intent;)V

    .line 128
    :cond_1
    iget-object p1, p0, Lo/abS;->c:Lo/abL;

    invoke-virtual {p1}, Lo/abL;->finish()V

    return v0

    :cond_2
    return v2
.end method
