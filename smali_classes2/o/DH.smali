.class public Lo/DH;
.super Lo/Du;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field k:Landroid/view/View$OnClickListener;

.field protected l:Lo/BaseAdapter;

.field n:Lo/AK;

.field protected o:Lo/AS;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lo/Du;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance p1, Lo/DH$5;

    invoke-direct {p1, p0}, Lo/DH$5;-><init>(Lo/DH;)V

    iput-object p1, p0, Lo/DH;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lo/Du;-><init>(Landroid/content/Context;II)V

    .line 33
    new-instance p1, Lo/DH$5;

    invoke-direct {p1, p0}, Lo/DH$5;-><init>(Lo/DH;)V

    iput-object p1, p0, Lo/DH;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILo/Du$Activity;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lo/Du;-><init>(Landroid/content/Context;ILo/Du$Activity;)V

    .line 33
    new-instance p1, Lo/DH$5;

    invoke-direct {p1, p0}, Lo/DH$5;-><init>(Lo/DH;)V

    iput-object p1, p0, Lo/DH;->r:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lo/Bb;)V
    .locals 1

    .line 97
    invoke-interface {p1}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    iput-object v0, p0, Lo/DH;->n:Lo/AK;

    if-eqz p2, :cond_0

    .line 99
    invoke-interface {p1}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lo/Bb;->ax()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 100
    :goto_0
    invoke-super {p0, p1, p2}, Lo/Du;->e(Lo/AS;Z)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/AS;

    check-cast p2, Lo/Bb;

    invoke-virtual {p0, p1, p2}, Lo/DH;->a(Lo/AS;Lo/Bb;)V

    return-void
.end method

.method protected c(Lo/AS;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lo/DH;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lo/DH;->o:Lo/AS;

    .line 62
    iget-object v0, p0, Lo/DH;->e:Landroid/widget/ImageView;

    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lo/DH;->l:Lo/BaseAdapter;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lo/AS;->ah()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    iget-object p1, p0, Lo/DH;->k:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_2

    .line 66
    iget-object p1, p0, Lo/DH;->r:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lo/DH;->k:Landroid/view/View$OnClickListener;

    .line 68
    :cond_2
    iget-object p1, p0, Lo/DH;->l:Lo/BaseAdapter;

    iget-object v0, p0, Lo/DH;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/BaseAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lo/DH;->l:Lo/BaseAdapter;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    goto :goto_1

    .line 71
    :cond_3
    iget-object p1, p0, Lo/DH;->e:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    .line 72
    iget-object p1, p0, Lo/DH;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lo/DH;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method protected c(Lo/As;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lo/DH;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lo/DH;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {v0}, Lo/RL;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lo/DH;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v2, p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lo/As;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 86
    invoke-static {}, Lo/RL;->a()Lo/Rq;

    move-result-object v0

    invoke-interface {p1}, Lo/As;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/Rq;->d(Ljava/lang/String;)Lo/Bi;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    invoke-static {p1}, Lo/RL;->d(Lo/Bi;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 88
    iget-object p1, p0, Lo/DH;->e:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lo/DH;->f:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
