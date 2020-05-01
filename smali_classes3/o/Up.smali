.class public Lo/Up;
.super Lo/Ur;
.source ""


# instance fields
.field protected d:Lo/HorizontalScrollView;

.field protected e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lo/Ur;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View$OnClickListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/Up;->b:Lo/Uq;

    .line 41
    invoke-virtual {p0}, Lo/Up;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->ju:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object p2

    const/4 p6, 0x0

    aput-object p2, p4, p6

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lo/Up;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lo/Up;->d:Lo/HorizontalScrollView;

    invoke-virtual {p1, p5}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 1

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qJ:I

    invoke-virtual {p0, v0}, Lo/Up;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Up;->e:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qI:I

    invoke-virtual {p0, v0}, Lo/Up;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    iput-object v0, p0, Lo/Up;->d:Lo/HorizontalScrollView;

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method
