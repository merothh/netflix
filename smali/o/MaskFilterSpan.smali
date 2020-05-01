.class public final Lo/MaskFilterSpan;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MaskFilterSpan$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/MaskFilterSpan$StateListAnimator;


# instance fields
.field private c:Lo/MetricAffectingSpan;

.field private d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/MaskFilterSpan$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/MaskFilterSpan$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/MaskFilterSpan;->e:Lo/MaskFilterSpan$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 98
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "hasFreeTrial"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 99
    :goto_0
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "isFormerMember"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    .line 101
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    const-string v4, "Standard"

    const-string v5, "Premium"

    const v6, 0x521782dd

    const v7, 0x503d6637

    if-nez v0, :cond_9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_4

    goto :goto_2

    .line 122
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 123
    sget-object p1, Lo/fM;->d:Lo/fM$Activity;

    invoke-virtual {p1}, Lo/fM$Activity;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rp:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 126
    :cond_5
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ro:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 129
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 130
    sget-object p1, Lo/fM;->d:Lo/fM$Activity;

    invoke-virtual {p1}, Lo/fM$Activity;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 131
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rl:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 133
    :cond_7
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rk:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    :goto_2
    return-object v1

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    goto :goto_4

    .line 102
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v7, :cond_d

    if-eq v0, v6, :cond_b

    goto :goto_4

    .line 103
    :cond_b
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 104
    sget-object p1, Lo/fM;->d:Lo/fM$Activity;

    invoke-virtual {p1}, Lo/fM$Activity;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 105
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rv:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 107
    :cond_c
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rq:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 110
    :cond_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 111
    sget-object p1, Lo/fM;->d:Lo/fM$Activity;

    invoke-virtual {p1}, Lo/fM$Activity;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 112
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rr:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 114
    :cond_e
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->rs:I

    invoke-virtual {p0, p1}, Lo/MaskFilterSpan;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    :goto_4
    return-object v1
.end method

.method public static final synthetic b(Lo/MaskFilterSpan;)Lo/MetricAffectingSpan;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/MaskFilterSpan;->c:Lo/MetricAffectingSpan;

    return-object p0
.end method

.method private final c()V
    .locals 0

    return-void
.end method

.method private final e(Landroid/view/View;)V
    .locals 1

    .line 153
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->te:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    .line 154
    new-instance v0, Lo/MaskFilterSpan$TaskDescription;

    invoke-direct {v0, p0}, Lo/MaskFilterSpan$TaskDescription;-><init>(Lo/MaskFilterSpan;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lo/MaskFilterSpan$Application;

    invoke-direct {v0, p0}, Lo/MaskFilterSpan$Application;-><init>(Lo/MaskFilterSpan;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lo/MaskFilterSpan;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .line 141
    invoke-super {p0}, Lo/WebChromeClient;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x1030010

    .line 52
    invoke-virtual {p0, p1, v0}, Lo/MaskFilterSpan;->setStyle(II)V

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lo/MetricAffectingSpan;

    iput-object p1, p0, Lo/MaskFilterSpan;->c:Lo/MetricAffectingSpan;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 56
    :catch_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Calling Fragment must implement PlanDialogListener"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->b:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->ad:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    sget p3, Lcom/netflix/mediaclient/ui/R$Application;->ah:I

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/WebChromeClient;->onDestroyView()V

    invoke-virtual {p0}, Lo/MaskFilterSpan;->e()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 147
    invoke-super {p0}, Lo/WebChromeClient;->onStart()V

    .line 149
    invoke-direct {p0}, Lo/MaskFilterSpan;->c()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1, p2}, Lo/WebChromeClient;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ua:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->te:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    .line 82
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mu:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/SpellCheckSpan;

    const-string v2, "subtitle"

    .line 84
    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "upgradedPlanName"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-direct {p0, v2}, Lo/MaskFilterSpan;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p2, v2}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setTextOrGone(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->au:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "view.context.getString(R\u2026ng.button_upgrade_dialog)"

    invoke-static {p2, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "userSelectedPlanName"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v4

    :goto_1
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Lo/SpellCheckSpan;->setUserSelectedPlanText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "userSelectedPlanPrice"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v4

    :goto_2
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Lo/SpellCheckSpan;->setUserSelectedPlanPriceText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "zeroPrice"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    move-object p2, v4

    :goto_3
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Lo/SpellCheckSpan;->setZeroPriceText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    move-object p2, v4

    :goto_4
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Lo/SpellCheckSpan;->setUpgradedPlanText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0}, Lo/MaskFilterSpan;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "upgradedPlanPrice"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lo/SpellCheckSpan;->setUpgradedPlanPriceText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-direct {p0, p1}, Lo/MaskFilterSpan;->e(Landroid/view/View;)V

    return-void
.end method
