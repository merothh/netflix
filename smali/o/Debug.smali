.class public final Lo/Debug;
.super Lo/ChildZygoteProcess;
.source ""

# interfaces
.implements Lo/ConditionVariable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Debug$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/Debug$Application;

.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final d:Lo/ams;

.field private final f:Lo/ams;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private final j:Lo/ams;

.field private k:I

.field private final l:I

.field private m:Z

.field private n:Z

.field private final o:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Debug;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "audio"

    const-string v5, "getAudio()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "subtitles"

    const-string v5, "getSubtitles()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "episodes"

    const-string v5, "getEpisodes()Lcom/netflix/mediaclient/android/widget/NetflixImageButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "cast"

    const-string v4, "getCast()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lo/Debug;->e:[Lo/amT;

    new-instance v0, Lo/Debug$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Debug$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/Debug;->b:Lo/Debug$Application;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lo/ChildZygoteProcess;-><init>(Landroid/view/View;)V

    .line 42
    sget v0, Lo/CancellationSignal$Activity;->b:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Debug;->a:Lo/ams;

    .line 43
    sget v0, Lo/CancellationSignal$Activity;->F:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Debug;->d:Lo/ams;

    .line 44
    sget v0, Lo/CancellationSignal$Activity;->n:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Debug;->j:Lo/ams;

    .line 45
    sget v0, Lo/CancellationSignal$Activity;->g:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lo/Debug;->f:Lo/ams;

    .line 61
    invoke-direct {p0}, Lo/Debug;->t()Lo/GridLayout;

    move-result-object v0

    new-instance v1, Lo/Debug$2;

    invoke-direct {v1, p0}, Lo/Debug$2;-><init>(Lo/Debug;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object v0

    new-instance v1, Lo/Debug$5;

    invoke-direct {v1, p0}, Lo/Debug$5;-><init>(Lo/Debug;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object v0

    new-instance v1, Lo/Debug$1;

    invoke-direct {v1, p0}, Lo/Debug$1;-><init>(Lo/Debug;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-direct {p0}, Lo/Debug;->v()Lo/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lo/Debug$3;

    invoke-direct {v1, p0}, Lo/Debug$3;-><init>(Lo/Debug;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object p1, p0, Lo/Debug;->o:Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Lo/Debug;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/Debug;->l:I

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lo/Debug;->m:Z

    return-void
.end method

.method private final D()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Debug;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Debug;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic a(Lo/Debug;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/Debug;->g:Ljava/lang/String;

    return-object p0
.end method

.method private final a(Z)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lo/Debug;->t()Lo/GridLayout;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lo/Debug;->k:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lo/GridLayout;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic c(Lo/Debug;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/Debug;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic e(Lo/Debug;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/Debug;->i:Ljava/lang/String;

    return-object p0
.end method

.method private final e(I)V
    .locals 2

    .line 85
    iget v0, p0, Lo/Debug;->k:I

    if-eq p1, v0, :cond_2

    .line 86
    invoke-direct {p0}, Lo/Debug;->t()Lo/GridLayout;

    move-result-object v0

    iget-boolean v1, p0, Lo/Debug;->n:Z

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lo/GridLayout;->setVisibility(I)V

    .line 88
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridLayout;->setVisibility(I)V

    .line 89
    invoke-direct {p0}, Lo/Debug;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridLayout;->setVisibility(I)V

    .line 93
    :cond_1
    iput p1, p0, Lo/Debug;->k:I

    :cond_2
    return-void
.end method

.method private final e(Z)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lo/Debug;->m:Z

    if-eq p1, v0, :cond_0

    .line 100
    invoke-direct {p0}, Lo/Debug;->t()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridLayout;->setEnabled(Z)V

    .line 101
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridLayout;->setEnabled(Z)V

    .line 102
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridLayout;->setEnabled(Z)V

    .line 103
    iput-boolean p1, p0, Lo/Debug;->m:Z

    :cond_0
    return-void
.end method

.method private final t()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/Debug;->a:Lo/ams;

    sget-object v1, Lo/Debug;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method private final u()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/Debug;->j:Lo/ams;

    sget-object v1, Lo/Debug;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method

.method private final v()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Debug;->f:Lo/ams;

    sget-object v1, Lo/Debug;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final x()Lo/GridLayout;
    .locals 3

    iget-object v0, p0, Lo/Debug;->d:Lo/ams;

    sget-object v1, Lo/Debug;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 81
    iget v0, p0, Lo/Debug;->l:I

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lo/Debug;->v()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    .line 108
    invoke-direct {p0, v0}, Lo/Debug;->e(I)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/GridLayout;->setEnabled(Z)V

    .line 150
    iput-object p1, p0, Lo/Debug;->h:Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0}, Lo/Debug;->e(Z)V

    return-void
.end method

.method public c_()V
    .locals 2

    const/4 v0, 0x0

    .line 139
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/Debug;->i:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lo/Debug;->g:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridLayout;->setVisibility(I)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/Debug;->o:Landroid/view/View;

    return-object v0
.end method

.method public d(FI)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lo/Debug;->o()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Debug;->b([FF)F

    move-result v0

    invoke-static {p2, v0}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 164
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object p2

    invoke-virtual {p0}, Lo/Debug;->r()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Debug;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lo/GridLayout;->setTranslationY(F)V

    .line 165
    invoke-direct {p0}, Lo/Debug;->t()Lo/GridLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lo/Debug;->o()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Debug;->b([FF)F

    move-result v0

    invoke-static {p2, v0}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 166
    invoke-direct {p0}, Lo/Debug;->t()Lo/GridLayout;

    move-result-object p2

    invoke-virtual {p0}, Lo/Debug;->r()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Debug;->a([FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lo/GridLayout;->setTranslationY(F)V

    .line 167
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0}, Lo/Debug;->o()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Debug;->b([FF)F

    move-result v0

    invoke-static {p2, v0}, Lo/CommonTimeConfig;->c(Landroid/view/View;F)V

    .line 168
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object p2

    invoke-virtual {p0}, Lo/Debug;->r()[F

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/Debug;->a([FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lo/GridLayout;->setTranslationY(F)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lo/Debug;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lo/Debug;->e(I)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p2, p0, Lo/Debug;->i:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lo/Debug;->g:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/GridLayout;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lo/Debug;->e(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 154
    invoke-direct {p0}, Lo/Debug;->x()Lo/GridLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lo/Debug;->h:Ljava/lang/Object;

    return-void
.end method

.method public j()V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lo/Debug;->h()V

    .line 125
    invoke-direct {p0}, Lo/Debug;->v()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iput-object v1, p0, Lo/Debug;->h:Ljava/lang/Object;

    .line 127
    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lo/Debug;->i:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lo/Debug;->g:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lo/Debug;->u()Lo/GridLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/GridLayout;->setVisibility(I)V

    return-void
.end method
