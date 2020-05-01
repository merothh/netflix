.class public final Lo/Fw;
.super Lo/VibrationEffect;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/VibrationEffect<",
        "Lo/DG;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Landroid/view/View;

.field private final d:I

.field private final e:Lo/ams;

.field private final i:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Fw;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "primaryDisplayLanguageView"

    const-string v5, "getPrimaryDisplayLanguageView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "moreLabelWithCountView"

    const-string v5, "getMoreLabelWithCountView()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "moreChevronView"

    const-string v4, "getMoreChevronView()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/Fw;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lo/VibrationEffect;-><init>(Landroid/view/View;)V

    .line 16
    iput-object p1, p0, Lo/Fw;->b:Landroid/view/View;

    .line 18
    invoke-virtual {p0}, Lo/Fw;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lo/Fw;->d:I

    .line 20
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->pf:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fw;->e:Lo/ams;

    .line 22
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kM:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fw;->a:Lo/ams;

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kQ:I

    invoke-static {p0, p1}, Lo/NfcV;->b(Lo/VibrationEffect;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/Fw;->i:Lo/ams;

    return-void
.end method

.method private final f()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Fw;->a:Lo/ams;

    sget-object v1, Lo/Fw;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final h()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/Fw;->e:Lo/ams;

    sget-object v1, Lo/Fw;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final i()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Fw;->i:Lo/ams;

    sget-object v1, Lo/Fw;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 18
    iget v0, p0, Lo/Fw;->d:I

    return v0
.end method

.method public b()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lo/Fw;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/Fw;->b:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lo/Fw;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e(Ljava/lang/String;ZZI)V
    .locals 2

    const-string v0, "primaryDisplayLanguage"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lo/Fw;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 36
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->eF:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/aev;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 42
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->eo:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {v1, p1}, Lo/aev;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "labelStringBuilder.toString()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lo/Fw;->h()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p0}, Lo/Fw;->d()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hm:I

    invoke-static {p3, v0, p1}, Lo/aeE;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-direct {p0}, Lo/Fw;->f()Lo/ImageSwitcher;

    move-result-object p1

    .line 51
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hD:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "count"

    invoke-virtual {p2, p4, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance p1, Lo/Fw$TaskDescription;

    invoke-direct {p1, p0}, Lo/Fw$TaskDescription;-><init>(Lo/Fw;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    .line 58
    invoke-direct {p0}, Lo/Fw;->h()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-direct {p0}, Lo/Fw;->f()Lo/ImageSwitcher;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-direct {p0}, Lo/Fw;->i()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
