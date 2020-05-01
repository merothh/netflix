.class public Lo/JI;
.super Lo/WebChromeClient;
.source ""


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/netflix/mediaclient/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method private b(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 7

    .line 83
    sget-object v0, Lo/JI$9;->d:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 207
    :pswitch_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hh:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kM:I

    .line 208
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-direct {p0, p1, v1, v0}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :pswitch_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kx:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jp:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gy:I

    .line 202
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->ji:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    .line 201
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iH:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jk:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gS:I

    .line 190
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->jg:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gY:I

    .line 191
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->jj:I

    move-object v0, p0

    .line 189
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 192
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$10;

    invoke-direct {v0, p0}, Lo/JI$10;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 183
    :pswitch_3
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iH:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jk:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gR:I

    .line 184
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->jf:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    .line 183
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 171
    :pswitch_4
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ha:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jo:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jq:I

    .line 172
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->jn:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gY:I

    .line 173
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->jj:I

    move-object v0, p0

    .line 171
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 174
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$6;

    invoke-direct {v0, p0}, Lo/JI$6;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 165
    :pswitch_5
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ha:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jo:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jt:I

    .line 166
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->jm:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    .line 165
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kx:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->jp:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ks:I

    .line 154
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->js:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gY:I

    .line 155
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->jj:I

    move-object v0, p0

    .line 153
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 156
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$7;

    invoke-direct {v0, p0}, Lo/JI$7;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 147
    :pswitch_7
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dH:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->iN:I

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hl:I

    .line 148
    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$Fragment;->jl:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    .line 147
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 135
    :pswitch_8
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jp:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hP:I

    .line 136
    invoke-virtual {p0, v0}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jp:I

    .line 137
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-direct {p0, p1, v0, v1}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$3;

    invoke-direct {v0, p0}, Lo/JI$3;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 116
    :pswitch_9
    sget-object p1, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p0}, Lo/JI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/abD$StateListAnimator;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dY:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rj:I

    .line 118
    invoke-virtual {p0, v0}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fa:I

    .line 119
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-direct {p0, p1, v0, v1}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$1;

    invoke-direct {v0, p0}, Lo/JI$1;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 129
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dY:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rj:I

    .line 130
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-direct {p0, p1, v1, v0}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_a
    sget-object p1, Lo/abD;->b:Lo/abD$StateListAnimator;

    invoke-virtual {p0}, Lo/JI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/abD$StateListAnimator;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 98
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dH:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hl:I

    .line 99
    invoke-virtual {p0, v0}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->fa:I

    .line 100
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-direct {p0, p1, v0, v1}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$2;

    invoke-direct {v0, p0}, Lo/JI$2;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 110
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dH:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hl:I

    .line 111
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-direct {p0, p1, v1, v0}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_b
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hf:I

    invoke-virtual {p0, p1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hi:I

    .line 86
    invoke-virtual {p0, v0}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jo:I

    .line 87
    invoke-virtual {p0, v1}, Lo/JI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-direct {p0, p1, v0, v1}, Lo/JI;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    new-instance v0, Lo/JI$5;

    invoke-direct {v0, p0}, Lo/JI$5;-><init>(Lo/JI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lo/JI;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    if-eq p1, p2, :cond_0

    .line 221
    iget-object v0, p0, Lo/JI;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 224
    :cond_0
    iget-object p2, p0, Lo/JI;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq p1, p4, :cond_1

    .line 226
    iget-object p2, p0, Lo/JI;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setId(I)V

    :cond_1
    if-eqz p5, :cond_2

    .line 230
    iget-object p2, p0, Lo/JI;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq p1, p6, :cond_3

    .line 232
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setId(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object p1, p0, Lo/JI;->b:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, -0x1

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    .line 215
    invoke-direct/range {v0 .. v6}, Lo/JI;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/StatusCode;)Lo/JI;
    .locals 3

    .line 46
    new-instance v0, Lo/JI;

    invoke-direct {v0}, Lo/JI;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "errorCode"

    .line 48
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    invoke-virtual {v0, v1}, Lo/JI;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 50
    invoke-virtual {v0, p0}, Lo/JI;->setCancelable(Z)V

    return-object v0
.end method

.method static synthetic c(Lo/JI;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lo/JI;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 240
    invoke-virtual {p0}, Lo/JI;->dismiss()V

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lo/JI;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0, v0, v2}, Lo/JI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 245
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kC:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lo/JI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p0}, Lo/JI;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayServiceAgentDialog(Ljava/lang/String;Ljava/lang/Runnable;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lo/JI;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->cv:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jK:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/JI;->c:Landroid/widget/TextView;

    .line 65
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jL:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/JI;->b:Landroid/widget/TextView;

    .line 66
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jJ:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/JI;->e:Landroid/widget/TextView;

    .line 67
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->jM:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/JI;->d:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p0}, Lo/JI;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "errorCode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/StatusCode;

    iput-object p1, p0, Lo/JI;->f:Lcom/netflix/mediaclient/StatusCode;

    .line 71
    iget-object p1, p0, Lo/JI;->f:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, p1}, Lo/JI;->b(Lcom/netflix/mediaclient/StatusCode;)V

    .line 73
    iget-object p1, p0, Lo/JI;->e:Landroid/widget/TextView;

    new-instance p2, Lo/JI$4;

    invoke-direct {p2, p0}, Lo/JI$4;-><init>(Lo/JI;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
