.class public final Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;
.super Lo/RenderNodeAnimatorSetHelper;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field public c:Lo/TextureLayer;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/cl/model/AppView;

.field private final f:Lo/ams;

.field public formDataObserverFactory:Lo/WallpaperSettingsActivity;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final g:Lo/ams;

.field private final h:Lo/aka;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field public lastFormViewEditTextBinding:Lo/SpannableStringInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private q:Ljava/util/HashMap;

.field public viewModelInitializer:Lo/ThreadedRenderer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;

    const/16 v1, 0x9

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "scrollView"

    const-string v5, "getScrollView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userMessage"

    const-string v5, "getUserMessage()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "warningView"

    const-string v5, "getWarningView()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "emailFormView"

    const-string v5, "getEmailFormView()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "passwordFormView"

    const-string v5, "getPasswordFormView()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "signupHeading"

    const-string v5, "getSignupHeading()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "registrationButton"

    const-string v5, "getRegistrationButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "emailCheckbox"

    const-string v5, "getEmailCheckbox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "readOnlyEmailText"

    const-string v4, "getReadOnlyEmailText()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lo/RenderNodeAnimatorSetHelper;-><init>()V

    .line 30
    sget-object v0, Lcom/netflix/cl/model/AppView;->registration:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->e:Lcom/netflix/cl/model/AppView;

    const-string v0, "registration"

    .line 31
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->d:Ljava/lang/String;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->f:Lo/ams;

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->i:Lo/ams;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->g:Lo/ams;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$formViews$2;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->h:Lo/aka;

    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fy:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->j:Lo/ams;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lT:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n:Lo/ams;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->l:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qn:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->o:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fz:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->m:Lo/ams;

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qk:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->k:Lo/ams;

    return-void
.end method

.method private final A()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->aj:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setLinkColor(I)V

    :cond_0
    return-void
.end method

.method private final B()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->o()Lo/SubMenu;

    move-result-object v0

    invoke-virtual {v0}, Lo/SubMenu;->e()Z

    move-result v0

    return v0
.end method

.method private final C()V
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->s()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    const/16 v2, 0x8

    .line 115
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->p()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->s()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->t()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->lastFormViewEditTextBinding:Lo/SpannableStringInternal;

    if-nez v0, :cond_1

    const-string v1, "lastFormViewEditTextBinding"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->B()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move-object v3, p0

    check-cast v3, Lo/RecognizerIntent;

    invoke-virtual {v0, v1, v2, v3}, Lo/SpannableStringInternal;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;ZLo/RecognizerIntent;)V

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->o()Lo/SubMenu;

    move-result-object v0

    invoke-virtual {v0}, Lo/SubMenu;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->v()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->v()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->o()Lo/SubMenu;

    move-result-object v1

    invoke-virtual {v1}, Lo/SubMenu;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->v()Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->v()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->o()Lo/SubMenu;

    move-result-object v1

    invoke-virtual {v1}, Lo/SubMenu;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private final D()V
    .locals 10

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->i()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "\n"

    .line 85
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->w()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v2

    invoke-virtual {v2}, Lo/TextureLayer;->e()Ljava/lang/CharSequence;

    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v3

    invoke-virtual {v3}, Lo/TextureLayer;->j()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 90
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x4

    .line 87
    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->w()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method private final G()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->f()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final H()V
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->u()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->u()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextureLayer;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final w()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method private final x()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->C()V

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->H()V

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->D()V

    .line 78
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->z()V

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->A()V

    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->G()V

    return-void
.end method

.method private final y()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method private final z()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->y()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->k()Lo/Cloneable;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 157
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public c(Lo/TextureLayer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->c:Lo/TextureLayer;

    return-void
.end method

.method public d()V
    .locals 5

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setLinkInText(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->d()Lo/Cloneable;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->m()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 150
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 102
    invoke-super {p0}, Lo/RenderNodeAnimatorSetHelper;->e()V

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextureLayer;->n()V

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->s()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    const/4 v2, 0x1

    .line 107
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setShowValidationState(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n()Lo/TextureLayer;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public n()Lo/TextureLayer;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->c:Lo/TextureLayer;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lo/RenderNodeAnimatorSetHelper;->onAttach(Landroid/content/Context;)V

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->viewModelInitializer:Lo/ThreadedRenderer;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p0}, Lo/ThreadedRenderer;->e(Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;)Lo/TextureLayer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->c(Lo/TextureLayer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->fu:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/RenderNodeAnimatorSetHelper;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lo/RenderNodeAnimatorSetHelper;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->x()V

    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    return-object v0
.end method

.method public final r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->h:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final u()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final v()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/registration/RegistrationFragment;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method
