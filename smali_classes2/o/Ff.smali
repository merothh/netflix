.class public final Lo/Ff;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ff$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/Ff$Application;

.field static final synthetic e:[Lo/amT;

.field private static final k:I


# instance fields
.field private final b:I

.field private final c:Lo/ams;

.field private final d:Landroid/view/ViewGroup;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Landroid/view/View;

.field private final i:Lo/ams;

.field private final j:Lo/NdefRecord;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private n:Lo/StrictMode;

.field private final o:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Ff;

    const/4 v1, 0x7

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "basicInfoContainer"

    const-string v5, "getBasicInfoContainer()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "matchPercentage"

    const-string v5, "getMatchPercentage()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "basicInfoYear"

    const-string v5, "getBasicInfoYear()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "basicInfoMaturity"

    const-string v5, "getBasicInfoMaturity()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "basicInfoRatingIcon"

    const-string v5, "getBasicInfoRatingIcon()Lcom/netflix/mediaclient/android/widget/NetflixImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "basicInfoNumSeasonsOrDuration"

    const-string v5, "getBasicInfoNumSeasonsOrDuration()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "basicInfoBadges"

    const-string v4, "getBasicInfoBadges()Lcom/netflix/mediaclient/android/widget/IconFontTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lo/Ff;->e:[Lo/amT;

    new-instance v0, Lo/Ff$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Ff$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Ff;->a:Lo/Ff$Application;

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->x:I

    sput v0, Lo/Ff;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 12

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 38
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->K:I

    goto :goto_0

    .line 41
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->E:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 37
    invoke-static {p1, v0, v1, v3, v2}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Ff;->d:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, p0, Lo/Ff;->b:I

    .line 47
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->K:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->c:Lo/ams;

    .line 49
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->x:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->h:Landroid/view/View;

    .line 51
    new-instance p1, Lo/NdefRecord;

    .line 52
    iget-object v5, p0, Lo/Ff;->h:Landroid/view/View;

    const-string v0, "animatedLoadingView"

    invoke-static {v5, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget v6, Lcom/netflix/mediaclient/ui/R$Activity;->a:I

    .line 54
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v1, "uiView.context"

    invoke-static {v7, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v4, p1

    .line 51
    invoke-direct/range {v4 .. v11}, Lo/NdefRecord;-><init>(Landroid/view/View;ILandroid/content/Context;JILo/amc;)V

    iput-object p1, p0, Lo/Ff;->j:Lo/NdefRecord;

    .line 57
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ve:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->g:Lo/ams;

    .line 59
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uS:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->i:Lo/ams;

    .line 61
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uV:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->f:Lo/ams;

    .line 63
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uR:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->l:Lo/ams;

    .line 65
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->uU:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->m:Lo/ams;

    .line 67
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->M:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Ff;->o:Lo/ams;

    .line 73
    sget-object p1, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {p1}, Lo/eG$Application;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lo/Ff;->y()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 75
    invoke-direct {p0}, Lo/Ff;->n()Landroid/widget/TextView;

    move-result-object v1

    .line 77
    check-cast p1, Landroid/content/Context;

    .line 78
    sget v2, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->l:I

    .line 76
    invoke-static {p1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    new-instance v1, Lo/StrictMode;

    .line 82
    invoke-direct {p0}, Lo/Ff;->n()Landroid/widget/TextView;

    move-result-object v2

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->pB:I

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->pz:I

    const v6, 0x10104ce

    .line 83
    invoke-static {p1, v6}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result p1

    .line 81
    invoke-direct {v1, v2, v4, v5, p1}, Lo/StrictMode;-><init>(Landroid/widget/TextView;III)V

    iput-object v1, p0, Lo/Ff;->n:Lo/StrictMode;

    .line 89
    :cond_1
    iget-object p1, p0, Lo/Ff;->h:Landroid/view/View;

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 90
    iget-object v1, p0, Lo/Ff;->h:Landroid/view/View;

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 94
    :cond_2
    div-int/2addr v0, v3

    .line 95
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void

    .line 37
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final n()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Ff;->g:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final o()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lo/Ff;->c:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final p()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Ff;->i:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final q()Lo/DayPickerViewPager;
    .locals 3

    iget-object v0, p0, Lo/Ff;->o:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/DayPickerViewPager;

    return-object v0
.end method

.method private final r()Lo/GridView;
    .locals 3

    iget-object v0, p0, Lo/Ff;->l:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final s()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Ff;->f:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final t()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Ff;->m:Lo/ams;

    sget-object v1, Lo/Ff;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 45
    iget v0, p0, Lo/Ff;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-direct {p0}, Lo/Ff;->t()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "playbackDeviceCapabilities"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Lo/Ff;->q()Lo/DayPickerViewPager;

    move-result-object v0

    .line 155
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lo/Ff;->k:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Lo/DayPickerViewPager;->setPadding(IIII)V

    .line 166
    :cond_1
    invoke-direct {p0}, Lo/Ff;->q()Lo/DayPickerViewPager;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/DayPickerViewPager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final b(IIZZ)V
    .locals 6

    .line 176
    sget-object v0, Lo/eG;->c:Lo/eG$Application;

    invoke-virtual {v0}, Lo/eG$Application;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    invoke-static {}, Lo/afw;->b()Z

    move-result p4

    .line 178
    invoke-virtual {p0}, Lo/Ff;->y()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_7

    .line 179
    check-cast v0, Landroid/content/Context;

    const v1, 0x10104ce

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/content/Context;I)I

    move-result v0

    .line 181
    invoke-direct {p0}, Lo/Ff;->n()Landroid/widget/TextView;

    move-result-object v1

    .line 182
    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->bL:I

    .line 180
    invoke-static {v1, v2, p4, v0}, Lo/StrictMode;->b(Landroid/widget/TextView;IZI)Landroid/text/Spannable;

    move-result-object v1

    const-string v2, "ThumbsToMatchPercentageA\u2026onColor\n                )"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lo/Ff;->n()Landroid/widget/TextView;

    move-result-object v3

    .line 189
    sget v4, Lcom/netflix/mediaclient/ui/R$Activity;->bJ:I

    .line 187
    invoke-static {v3, v4, p4, v0}, Lo/StrictMode;->b(Landroid/widget/TextView;IZI)Landroid/text/Spannable;

    move-result-object p4

    invoke-static {p4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "uiView.context"

    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pz:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pB:I

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-virtual {p3, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 200
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 203
    :cond_2
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 206
    :cond_3
    move-object v0, p4

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 209
    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    .line 213
    :goto_1
    invoke-direct {p0}, Lo/Ff;->n()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 216
    :cond_5
    iget-object v0, p0, Lo/Ff;->n:Lo/StrictMode;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/StrictMode;->a(IIZZ)V

    goto :goto_2

    .line 217
    :cond_6
    move-object p1, p0

    check-cast p1, Lo/Ff;

    .line 218
    invoke-direct {p1}, Lo/Ff;->n()Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "year"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lo/Ff;->p()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "seasonCountLabel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lo/Ff;->t()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ratingIcon"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lo/Ff;->r()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-direct {p0}, Lo/Ff;->r()Lo/GridView;

    move-result-object p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0}, Lo/Ff;->r()Lo/GridView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/GridView;->setVisibility(I)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Lo/Ff;->s()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lo/Ff;->s()Lo/ImageSwitcher;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lo/Ff;->i()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 127
    invoke-direct {p0}, Lo/Ff;->s()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 104
    iget-object v0, p0, Lo/Ff;->j:Lo/NdefRecord;

    invoke-virtual {v0}, Lo/NdefRecord;->e()V

    .line 105
    invoke-direct {p0}, Lo/Ff;->o()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public i()Landroid/view/ViewGroup;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/Ff;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 99
    iget-object v0, p0, Lo/Ff;->j:Lo/NdefRecord;

    invoke-virtual {v0}, Lo/NdefRecord;->b()V

    .line 100
    invoke-direct {p0}, Lo/Ff;->o()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 149
    invoke-direct {p0}, Lo/Ff;->t()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lo/Ff;->r()Lo/GridView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    .line 224
    iget-object v0, p0, Lo/Ff;->j:Lo/NdefRecord;

    invoke-virtual {v0}, Lo/NdefRecord;->d()V

    return-void
.end method
