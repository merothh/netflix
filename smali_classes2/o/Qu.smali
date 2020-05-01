.class public abstract Lo/Qu;
.super Lo/QA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Qu$StateListAnimator;,
        Lo/Qu$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QA<",
        "Lo/Qu$StateListAnimator;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/Qu$Activity;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Lo/Tf;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Qu$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Qu$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Qu;->b:Lo/Qu$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lo/QA;-><init>()V

    .line 57
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Qu;->a:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->cachedVideos:Lcom/netflix/cl/model/AppView;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lo/Qu;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method

.method public static final synthetic a(Lo/Qu;Lo/Qu$StateListAnimator;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/Qu;->d(Lo/Qu$StateListAnimator;)V

    return-void
.end method

.method private final d(Lo/Qu$StateListAnimator;)V
    .locals 2

    .line 126
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->h()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->h()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 128
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->i()Lo/GridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/GridView;->setRotation(F)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->h()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->i()Lo/GridView;

    move-result-object p1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Lo/GridView;->setRotation(F)V

    :goto_0
    return-void
.end method

.method private final e(Lo/Qu$StateListAnimator;Lo/Tf;)V
    .locals 3

    .line 136
    sget-object v0, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->n()Lo/ImageSwitcher;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 138
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->o()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->n()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-virtual {p2}, Lo/Tf;->bc()Ljava/lang/String;

    move-result-object v1

    .line 144
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->e:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->bE:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 145
    invoke-virtual {p2}, Lo/Tf;->bf()Ljava/lang/String;

    move-result-object p2

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 146
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 147
    :cond_1
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->d:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bA:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 148
    :cond_2
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bI:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 149
    :cond_3
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->j:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bD:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 150
    :cond_4
    sget-object p2, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->b:Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Evidence$EvidenceType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bB:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 151
    :cond_5
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bC:I

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 154
    :goto_0
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->n()Lo/ImageSwitcher;

    move-result-object v0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->n()Lo/ImageSwitcher;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 156
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->o()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/GridView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Lo/Qu$StateListAnimator;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lo/Qu;->j:Lo/Tf;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "DownloadContentModel: missing required params"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->b()Lo/ImageSwitcher;

    move-result-object v1

    sget-object v2, Lo/amj;->c:Lo/amj;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "java.util.Locale.getDefault()"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/Tf;->aI()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(locale, format, *args)"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->f()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v0}, Lo/Tf;->aQ()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v0}, Lo/Tf;->ar()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/ako;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v1

    .line 77
    :goto_0
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->e()Lo/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/ImageView;->c(Ljava/util/List;)Lio/reactivex/Observable;

    .line 78
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->e()Lo/ImageView;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Lo/ImageView;->setVisibility(I)V

    .line 80
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->h()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v0}, Lo/Tf;->j()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-boolean v1, p0, Lo/Qu;->c:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->i()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->h()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v6}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 85
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->i()Lo/GridView;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 88
    :cond_3
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->i()Lo/GridView;

    move-result-object v1

    invoke-virtual {p0}, Lo/Qu;->I()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v5}, Lo/GridView;->setVisibility(I)V

    .line 89
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->i()Lo/GridView;

    move-result-object v1

    new-instance v5, Lo/Qu$Application;

    invoke-direct {v5, p0, p1}, Lo/Qu$Application;-><init>(Lo/Qu;Lo/Qu$StateListAnimator;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->j()Landroid/view/View;

    move-result-object v1

    new-instance v5, Lo/Qu$ActionBar;

    invoke-direct {v5, p0, p1}, Lo/Qu$ActionBar;-><init>(Lo/Qu;Lo/Qu$StateListAnimator;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :goto_3
    iget-object v1, p0, Lo/Qu;->g:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_7

    .line 100
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    const-string v5, "DownloadContentModel: missing image for content"

    invoke-interface {v1, v5}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->d()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lo/GridView;->setImageResource(I)V

    goto :goto_6

    .line 103
    :cond_7
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->d()Lo/GridView;

    move-result-object v1

    iget-object v5, p0, Lo/Qu;->g:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->d()Lo/GridView;

    move-result-object v1

    invoke-virtual {v0}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    :goto_6
    iget-object v1, p0, Lo/Qu;->h:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    .line 108
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->c()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/GridView;->setVisibility(I)V

    goto :goto_8

    .line 110
    :cond_a
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->c()Lo/GridView;

    move-result-object v1

    iget-object v2, p0, Lo/Qu;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->c()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lo/GridView;->setVisibility(I)V

    .line 114
    :goto_8
    invoke-virtual {v0}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v1, v2, :cond_c

    .line 115
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->a()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p0}, Lo/Qu;->I()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x0

    :cond_b
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->a()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {p0}, Lo/Qu;->F()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->a()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v0}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->a()Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lo/Qu;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 120
    :cond_c
    invoke-virtual {p1}, Lo/Qu$StateListAnimator;->a()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 122
    :goto_9
    invoke-direct {p0, p1, v0}, Lo/Qu;->e(Lo/Qu$StateListAnimator;Lo/Tf;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aF:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lo/Qu;->g:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lo/Qu;->c:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 30
    check-cast p1, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qu;->a(Lo/Qu$StateListAnimator;)V

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/Qu;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qu;->a(Lo/Qu$StateListAnimator;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lo/Qu;->a:Ljava/util/List;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/Qu;->h:Ljava/lang/String;

    return-void
.end method

.method public final e(Lo/Tf;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/Qu;->j:Lo/Tf;

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lo/Qu;->c:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lo/Qu;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lo/Tf;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/Qu;->j:Lo/Tf;

    return-object v0
.end method

.method public final m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Qu;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lo/Qu;->a:Ljava/util/List;

    return-object v0
.end method

.method public final p()Landroid/view/View$OnClickListener;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/Qu;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/Qu;->h:Ljava/lang/String;

    return-object v0
.end method
