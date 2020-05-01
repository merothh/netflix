.class public Lo/Ue;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private c:Lo/aeC$TaskDescription;

.field private d:Landroid/widget/TextView;

.field e:Lcom/netflix/model/leafs/PostPlayItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Lo/Ue$4;

    invoke-direct {p1, p0}, Lo/Ue$4;-><init>(Lo/Ue;)V

    iput-object p1, p0, Lo/Ue;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p1, Lo/Ue$4;

    invoke-direct {p1, p0}, Lo/Ue$4;-><init>(Lo/Ue;)V

    iput-object p1, p0, Lo/Ue;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance p1, Lo/Ue$4;

    invoke-direct {p1, p0}, Lo/Ue$4;-><init>(Lo/Ue;)V

    iput-object p1, p0, Lo/Ue;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 53
    iget-object v0, p0, Lo/Ue;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lo/Ue;->c:Lo/aeC$TaskDescription;

    invoke-virtual {v0}, Lo/aeC$TaskDescription;->a()I

    move-result v0

    .line 58
    iget-object v1, p0, Lo/Ue;->e:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->isNextEpisodeAutoPlay()Z

    move-result v1

    if-eqz v1, :cond_1

    if-gtz v0, :cond_1

    .line 59
    iget-object v0, p0, Lo/Ue;->d:Landroid/widget/TextView;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 61
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    iget-object v1, p0, Lo/Ue;->e:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v1}, Lcom/netflix/model/leafs/PostPlayItem;->isNextEpisodeAutoPlay()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->iW:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jd:I

    .line 63
    :goto_0
    iget-object v2, p0, Lo/Ue;->d:Landroid/widget/TextView;

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v0

    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/Ue;->c:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->d()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 47
    iget-object v0, p0, Lo/Ue;->c:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method public d(Lcom/netflix/model/leafs/PostPlayItem;Lo/aeC$TaskDescription;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/Ue;->e:Lcom/netflix/model/leafs/PostPlayItem;

    .line 35
    iput-object p2, p0, Lo/Ue;->c:Lo/aeC$TaskDescription;

    .line 36
    iget-object p1, p0, Lo/Ue;->c:Lo/aeC$TaskDescription;

    iget-object p2, p0, Lo/Ue;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lo/aeC$TaskDescription;->b(Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {p0}, Lo/Ue;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 70
    iget-object v0, p0, Lo/Ue;->c:Lo/aeC$TaskDescription;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lo/aeC$TaskDescription;->c()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 89
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nu:I

    invoke-virtual {p0, v0}, Lo/Ue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Ue;->d:Landroid/widget/TextView;

    return-void
.end method
