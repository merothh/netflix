.class public final Lo/abJ;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/abJ$Application;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;

.field public static final i:Lo/abJ$Application;

.field private static final w:J


# instance fields
.field private final f:Lo/ams;

.field private h:Lcom/netflix/model/survey/SurveyQuestion;

.field private j:Lcom/netflix/model/survey/Survey;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private final p:Lo/ams;

.field private final q:Lo/ams;

.field private final r:Lo/ams;

.field private final s:Lo/ams;

.field private final t:Lo/ams;

.field private v:Ljava/util/HashMap;

.field private final y:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/abJ;

    const/16 v1, 0xc

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "mainContainer"

    const-string v5, "getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "questionNum"

    const-string v5, "getQuestionNum()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "questionHeader"

    const-string v5, "getQuestionHeader()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "questionText"

    const-string v5, "getQuestionText()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "surveyButtonGroup"

    const-string v5, "getSurveyButtonGroup()Landroid/widget/RadioGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "choice1Button"

    const-string v5, "getChoice1Button()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "choice2Button"

    const-string v5, "getChoice2Button()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "choice3Button"

    const-string v5, "getChoice3Button()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "choice4Button"

    const-string v5, "getChoice4Button()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "choice5Button"

    const-string v5, "getChoice5Button()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipButton"

    const-string v5, "getSkipButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "thankYou"

    const-string v4, "getThankYou()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sput-object v1, Lo/abJ;->b:[Lo/amT;

    new-instance v0, Lo/abJ$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/abJ$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/abJ;->i:Lo/abJ$Application;

    .line 158
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/abJ;->w:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jZ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->f:Lo/ams;

    .line 37
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->m:Lo/ams;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pP:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->o:Lo/ams;

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->pQ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->n:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sP:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->l:Lo/ams;

    .line 41
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rg:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->k:Lo/ams;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->t:Lo/ams;

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rk:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->p:Lo/ams;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rm:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->s:Lo/ams;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rj:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->r:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rG:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->q:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tb:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/abJ;->y:Lo/ams;

    return-void
.end method

.method private final A()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/abJ;->s:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final B()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/abJ;->r:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final C()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/abJ;->p:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final D()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/abJ;->k:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final E()V
    .locals 1

    .line 122
    sget-object v0, Lo/abJ;->i:Lo/abJ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 123
    sget-object v0, Lo/abM;->b:Lo/abM;

    invoke-virtual {v0}, Lo/abM;->a()V

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Lo/abJ;->e(I)V

    return-void
.end method

.method private final G()V
    .locals 7

    .line 134
    invoke-virtual {p0}, Lo/abJ;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lo/abJ;->c()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lo/SeekableByteChannel;

    invoke-direct {v1}, Lo/SeekableByteChannel;-><init>()V

    check-cast v1, Lo/CharsetDecoder;

    invoke-static {v0, v1}, Lo/Watchable;->d(Landroid/view/ViewGroup;Lo/CharsetDecoder;)V

    .line 140
    invoke-direct {p0}, Lo/abJ;->c()Lo/MenuInflater;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 179
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(index)"

    invoke-static {v4, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcom/netflix/mediaclient/ui/R$Fragment;->aO:I

    if-eq v5, v6, :cond_2

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0}, Lo/abJ;->I()Lo/ImageSwitcher;

    move-result-object v6

    invoke-virtual {v6}, Lo/ImageSwitcher;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lo/abJ$Activity;

    invoke-direct {v1, p0}, Lo/abJ$Activity;-><init>(Lo/abJ;)V

    check-cast v1, Ljava/lang/Runnable;

    sget-wide v2, Lo/abJ;->w:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final H()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lo/abJ;->q:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method private final I()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/abJ;->y:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final a(I)V
    .locals 1

    .line 112
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rg:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/abJ;->c(I)V

    goto :goto_0

    .line 113
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rl:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/abJ;->c(I)V

    goto :goto_0

    .line 114
    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rk:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/abJ;->c(I)V

    goto :goto_0

    .line 115
    :cond_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rm:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lo/abJ;->c(I)V

    goto :goto_0

    .line 116
    :cond_3
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rj:I

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lo/abJ;->c(I)V

    goto :goto_0

    .line 117
    :cond_4
    invoke-direct {p0}, Lo/abJ;->E()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lo/abJ;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lo/abJ;->e(I)V

    return-void
.end method

.method private final c()Lo/MenuInflater;
    .locals 3

    iget-object v0, p0, Lo/abJ;->f:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuInflater;

    return-object v0
.end method

.method private final c(I)V
    .locals 1

    .line 128
    sget-object v0, Lo/abJ;->i:Lo/abJ$Application;

    check-cast v0, Lo/MessagePdu;

    .line 129
    sget-object v0, Lo/abM;->b:Lo/abM;

    invoke-virtual {v0, p1}, Lo/abM;->b(I)V

    .line 130
    invoke-direct {p0}, Lo/abJ;->G()V

    return-void
.end method

.method public static final synthetic c(Lo/abJ;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lo/abJ;->a(I)V

    return-void
.end method

.method private final e(I)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lo/abJ;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lo/abJ;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/Serializable;->setResult(I)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lo/abJ;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo/Serializable;->finish()V

    :cond_1
    return-void
.end method

.method public static final synthetic e(Lo/abJ;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/abJ;->E()V

    return-void
.end method

.method private final g()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/abJ;->m:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final v()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/abJ;->n:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final x()Landroid/widget/RadioGroup;
    .locals 3

    iget-object v0, p0, Lo/abJ;->l:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private final y()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/abJ;->o:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final z()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/abJ;->t:Lo/ams;

    sget-object v1, Lo/abJ;->b:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lo/abJ;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lo/abJ;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "extra_survey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/model/survey/Survey;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->c()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->e()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    iput-object p1, p0, Lo/abJ;->j:Lcom/netflix/model/survey/Survey;

    .line 60
    iput-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    return-void

    .line 56
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lo/abJ;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/Serializable;->finish()V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bL:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDestroyView()V

    .line 103
    sget-object v0, Lo/abM;->b:Lo/abM;

    invoke-virtual {v0}, Lo/abM;->c()V

    .line 104
    invoke-virtual {p0}, Lo/abJ;->d()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 97
    invoke-virtual {p0}, Lo/abJ;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lo/abJ$StateListAnimator;->c:Lo/abJ$StateListAnimator;

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 98
    :cond_0
    sget-object v0, Lo/abM;->b:Lo/abM;

    iget-object v1, p0, Lo/abJ;->j:Lcom/netflix/model/survey/Survey;

    if-nez v1, :cond_1

    const-string v2, "survey"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Lo/abM;->a(Lcom/netflix/model/survey/Survey;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    iget-object p1, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    const-string p2, "questionData"

    if-nez p1, :cond_0

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/survey/SurveyQuestion;->d()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eqz p1, :cond_3

    .line 75
    invoke-direct {p0}, Lo/abJ;->g()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_2

    .line 77
    :cond_3
    invoke-direct {p0}, Lo/abJ;->g()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v3, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v3, :cond_4

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Lcom/netflix/model/survey/SurveyQuestion;->d()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_2
    iget-object p1, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez p1, :cond_5

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/netflix/model/survey/SurveyQuestion;->b()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 80
    invoke-direct {p0}, Lo/abJ;->y()Lo/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_3

    .line 82
    :cond_8
    invoke-direct {p0}, Lo/abJ;->y()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_9

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_3
    invoke-direct {p0}, Lo/abJ;->v()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_a

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->c()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0}, Lo/abJ;->D()Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_b

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->i()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Lo/abJ;->z()Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_c

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->h()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lo/abJ;->C()Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_d

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0}, Lo/abJ;->A()Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_e

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->j()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0}, Lo/abJ;->B()Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_f

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->o()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-direct {p0}, Lo/abJ;->H()Lo/HorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lo/abJ;->h:Lcom/netflix/model/survey/SurveyQuestion;

    if-nez v0, :cond_10

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->g()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lo/abJ;->H()Lo/HorizontalScrollView;

    move-result-object p1

    new-instance p2, Lo/abJ$TaskDescription;

    invoke-direct {p2, p0}, Lo/abJ$TaskDescription;-><init>(Lo/abJ;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lo/abJ;->x()Landroid/widget/RadioGroup;

    move-result-object p1

    new-instance p2, Lo/abJ$ActionBar;

    invoke-direct {p2, p0}, Lo/abJ$ActionBar;-><init>(Lo/abJ;)V

    check-cast p2, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method
