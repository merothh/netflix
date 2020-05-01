.class public abstract Lo/Qy;
.super Lo/QA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Qy$StateListAnimator;,
        Lo/Qy$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QA<",
        "Lo/Qy$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Qy$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/QA;-><init>()V

    return-void
.end method

.method private final e(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 154
    iget-object v0, p0, Lo/Qy;->c:Ljava/util/List;

    const-string v1, "episodeInfos"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 196
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Qy$ActionBar;

    .line 155
    invoke-virtual {v2}, Lo/Qy$ActionBar;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    .line 164
    :cond_2
    iget-object v0, p0, Lo/Qy;->c:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/Qy$ActionBar;

    .line 166
    invoke-virtual {v7}, Lo/Qy$ActionBar;->d()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v8, v9, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 168
    :cond_5
    invoke-virtual {v7}, Lo/Qy$ActionBar;->d()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v8, v9, :cond_6

    invoke-virtual {v7}, Lo/Qy$ActionBar;->e()I

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    invoke-virtual {v7}, Lo/Qy$ActionBar;->d()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->d:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v8, v9, :cond_8

    invoke-virtual {v7}, Lo/Qy$ActionBar;->d()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v8, v9, :cond_7

    goto :goto_1

    .line 170
    :cond_7
    invoke-virtual {v7}, Lo/Qy$ActionBar;->d()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v8, v9, :cond_9

    invoke-virtual {v7}, Lo/Qy$ActionBar;->e()I

    move-result v8

    if-lez v8, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 174
    :cond_9
    :goto_2
    invoke-virtual {v7}, Lo/Qy$ActionBar;->d()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v7

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->e:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v7, v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    if-lez v2, :cond_b

    .line 181
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->nx:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_b
    if-lez v4, :cond_c

    .line 183
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nG:I

    invoke-static {p1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p1

    add-int/2addr v4, v6

    .line 184
    invoke-virtual {p1, v4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    if-lez v6, :cond_d

    .line 186
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nI:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_d
    :goto_3
    return-object v3
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/Qy;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aL:I

    return v0
.end method

.method public final b(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lo/Qy;->h:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lo/Qy;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->p:I

    .line 134
    new-instance v2, Landroid/text/SpannableString;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p1, 0x0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x21

    .line 135
    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 139
    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public c(Lo/Qy$StateListAnimator;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->e()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lo/Qy;->A()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ip:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lo/Qy;->c:Ljava/util/List;

    const-string v3, "episodeInfos"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->c()Lo/ImageSwitcher;

    move-result-object v2

    .line 58
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->iu:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 60
    invoke-virtual {p0}, Lo/Qy;->C()J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 57
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "context"

    .line 62
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/Qy;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->a()Lo/ImageSwitcher;

    move-result-object v1

    invoke-static {v0}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->b()Lo/BaseAdapter;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lo/Qy;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0, v1}, Lo/Binder;->c(Landroid/view/View;F)V

    .line 67
    invoke-virtual {p0}, Lo/Qy;->D()Ljava/lang/String;

    move-result-object v0

    .line 68
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_c

    .line 71
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->b()Lo/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->f()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lo/Qy;->c:Ljava/util/List;

    if-nez v1, :cond_5

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_5
    check-cast v1, Ljava/lang/Iterable;

    .line 193
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_7

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 194
    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/Qy$ActionBar;

    .line 74
    invoke-virtual {v3}, Lo/Qy$ActionBar;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_4
    if-eqz v7, :cond_9

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->i()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lo/Qy;->I()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->g()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/Qy;->I()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x0

    :cond_b
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 78
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->g()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/Qy;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->g()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 82
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->g()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/Qy;->A()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->d()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/Qy;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p1}, Lo/Qy$StateListAnimator;->d()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/Qy;->h:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 69
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "image url is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 33
    check-cast p1, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qy;->c(Lo/Qy$StateListAnimator;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qy;->c(Lo/Qy$StateListAnimator;)V

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lo/Qy;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "showId"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Qy$ActionBar;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lo/Qy;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "episodeInfos"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final l()Landroid/view/View$OnClickListener;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/Qy;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lo/Qy;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "profileId"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final o()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/Qy;->h:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method
