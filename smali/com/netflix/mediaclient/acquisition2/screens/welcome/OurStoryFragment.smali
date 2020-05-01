.class public final Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;
.super Lo/TranslateYAnimation;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$FragmentManager;


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final a:Lcom/netflix/cl/model/AppView;

.field public adapterFactory:Lo/TranslateAnimation;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lo/TextInfo;

.field private final e:Ljava/lang/String;

.field private final f:Lo/ams;

.field public formDataObserverFactory:Lo/WallpaperSettingsActivity;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private k:I

.field private l:Ljava/lang/Long;

.field private final m:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;

.field public nmhpEventListener:Lo/ScaleAnimation;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private o:Lo/InputConnectionInspector;

.field public ourStoryLogger:Lo/InputConnectionWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/CursorAnchorInfo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "welcomeTabLayout"

    const-string v5, "getWelcomeTabLayout()Lcom/google/android/material/tabs/TabLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "welcomeViewPager"

    const-string v5, "getWelcomeViewPager()Landroidx/viewpager/widget/ViewPager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "netflixSignupButtonWelcome"

    const-string v5, "getNetflixSignupButtonWelcome()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "privacyLink"

    const-string v5, "getPrivacyLink()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "floatingCtaContainer"

    const-string v4, "getFloatingCtaContainer()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lo/TranslateYAnimation;-><init>()V

    const-string v0, "nmLanding"

    .line 33
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->e:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/netflix/cl/model/AppView;->nmLanding:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->a:Lcom/netflix/cl/model/AppView;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vF:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->g:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vI:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->j:Lo/ams;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lk:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->h:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pe:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->i:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gX:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->f:Lo/ams;

    .line 58
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->m:Lo/Cloneable;

    return-void
.end method

.method private final B()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->nmhpEventListener:Lo/ScaleAnimation;

    if-nez v0, :cond_0

    const-string v1, "nmhpEventListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lo/ScaleAnimation;->onNmhpCtaClick()V

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->ourStoryLogger:Lo/InputConnectionWrapper;

    if-nez v0, :cond_1

    const-string v1, "ourStoryLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lo/InputConnectionWrapper;->b()V

    .line 164
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->D()V

    return-void
.end method

.method private final C()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->ourStoryLogger:Lo/InputConnectionWrapper;

    if-nez v0, :cond_0

    const-string v1, "ourStoryLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/InputConnectionWrapper;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->l:Ljava/lang/Long;

    return-void
.end method

.method private final D()V
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextInfo;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextInfo;->f()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/android/moneyball/fields/ActionField;->getMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v1, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2, v3}, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;->handoffToWebview$default(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextInfo;->e()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)Ljava/lang/Long;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->l:Ljava/lang/Long;

    return-object p0
.end method

.method private final c(I)Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->o:Lo/InputConnectionInspector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/InputConnectionInspector;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo/akz;->c(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryCard;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->B()V

    return-void
.end method

.method private final u()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->s()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/viewpager/widget/ViewPager$FragmentManager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    return-void
.end method

.method private final v()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextInfo;->j()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final w()V
    .locals 6

    .line 135
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->x()V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->adapterFactory:Lo/TranslateAnimation;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v1

    invoke-virtual {v1}, Lo/TextInfo;->n()Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v2

    invoke-virtual {v2}, Lo/TextInfo;->i()Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->m:Lo/Cloneable;

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v4

    const-string v5, "childFragmentManager"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/TranslateAnimation;->d(Ljava/util/List;Ljava/lang/String;Lo/Cloneable;Lo/SerializablePermission;)Lo/InputConnectionInspector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->o:Lo/InputConnectionInspector;

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->s()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->o:Lo/InputConnectionInspector;

    check-cast v1, Lo/RSAOtherPrimeInfo;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lo/RSAOtherPrimeInfo;)V

    return-void
.end method

.method private final x()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private final y()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->s()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/viewpager/widget/ViewPager$FragmentManager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->e(Landroidx/viewpager/widget/ViewPager$FragmentManager;)V

    return-void
.end method

.method private final z()V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->q()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->s()Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextInfo;->g()Lo/Cloneable;

    move-result-object v0

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 101
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lo/TextInfo;->d()Lo/Cloneable;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    const-string v4, "context!!"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;-><init>(Landroid/content/Context;)V

    check-cast v2, Lo/ClassFormatError;

    .line 108
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d(Lo/TextInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->c:Lo/TextInfo;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->n()Lo/TextInfo;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->a:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Lo/InputConnectionWrapper;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->ourStoryLogger:Lo/InputConnectionWrapper;

    if-nez v0, :cond_0

    const-string v1, "ourStoryLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public n()Lo/TextInfo;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->c:Lo/TextInfo;

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
    invoke-super {p0, p1}, Lo/TranslateYAnimation;->onAttach(Landroid/content/Context;)V

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->viewModelInitializer:Lo/CursorAnchorInfo;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/CursorAnchorInfo;->e(Landroidx/fragment/app/Fragment;)Lo/TextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->d(Lo/TextInfo;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dk:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/TranslateYAnimation;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 194
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->k:I

    if-eq v0, p1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->ourStoryLogger:Lo/InputConnectionWrapper;

    if-nez v0, :cond_0

    const-string v1, "ourStoryLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->l:Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v1, v2}, Lo/InputConnectionWrapper;->d(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->l:Ljava/lang/Long;

    .line 199
    :cond_1
    iput p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->k:I

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 91
    invoke-super {p0}, Lo/TranslateYAnimation;->onPause()V

    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->u()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 96
    invoke-super {p0}, Lo/TranslateYAnimation;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->y()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 86
    invoke-super {p0}, Lo/TranslateYAnimation;->onStart()V

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->nmhpEventListener:Lo/ScaleAnimation;

    if-nez v0, :cond_0

    const-string v1, "nmhpEventListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lo/ScaleAnimation;->onNmhpCanInteract()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1, p2}, Lo/TranslateYAnimation;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->w()V

    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->v()V

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->z()V

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->C()V

    return-void
.end method

.method public final p()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->m:Lo/Cloneable;

    return-object v0
.end method

.method public final q()Lcom/google/android/material/tabs/TabLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method public final r()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final s()Landroidx/viewpager/widget/ViewPager;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method public final t()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/welcome/OurStoryFragment;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
