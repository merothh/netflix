.class public abstract Lo/SZ;
.super Lo/QA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SZ$Application;,
        Lo/SZ$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/QA<",
        "Lo/SZ$Application;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lo/SZ$ActionBar;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

.field public c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field public f:Ljava/lang/String;

.field private h:Ljava/lang/CharSequence;

.field public j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

.field private k:I

.field private l:J

.field private m:I

.field private n:I

.field private o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnLongClickListener;

.field private v:Ljava/lang/CharSequence;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Z

.field private y:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/SZ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/SZ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/SZ;->g:Lo/SZ$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lo/QA;-><init>()V

    const/16 v0, -0xfa

    .line 89
    iput v0, p0, Lo/SZ;->m:I

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lo/SZ;->l:J

    return-void
.end method

.method protected b()I
    .locals 1

    .line 104
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aD:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .line 91
    iput p1, p0, Lo/SZ;->p:I

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/SZ;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-void
.end method

.method public b(Lo/SZ$Application;)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lo/SZ$Application;->d()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lo/SZ;->c:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-nez v1, :cond_0

    const-string v2, "videoType"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v1, v2, :cond_2

    .line 110
    invoke-virtual {p1}, Lo/SZ$Application;->e()Lo/ImageSwitcher;

    move-result-object v1

    iget-boolean v2, p0, Lo/SZ;->s:Z

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lo/SZ;->A()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 113
    :cond_1
    sget-object v2, Lo/amj;->c:Lo/amj;

    new-array v2, v3, [Ljava/lang/Object;

    iget v4, p0, Lo/SZ;->q:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-virtual {p0}, Lo/SZ;->A()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v9

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%d. %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    .line 110
    :goto_0
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget v1, p0, Lo/SZ;->k:I

    invoke-static {v1, v0}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lo/SZ$Application;->d()Lo/ImageSwitcher;

    move-result-object v2

    .line 118
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->it:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v10

    .line 120
    invoke-virtual {p0}, Lo/SZ;->C()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v9

    .line 117
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {p1}, Lo/SZ$Application;->e()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p0}, Lo/SZ;->A()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p1}, Lo/SZ$Application;->d()Lo/ImageSwitcher;

    move-result-object v1

    iget-object v2, p0, Lo/SZ;->h:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {p0}, Lo/SZ;->C()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    .line 128
    :cond_3
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->it:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 129
    iget-object v4, p0, Lo/SZ;->h:Ljava/lang/CharSequence;

    aput-object v4, v3, v10

    .line 131
    invoke-virtual {p0}, Lo/SZ;->C()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lo/aeE;->d(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 130
    invoke-static {v4}, Lo/afw;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v9

    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 124
    :goto_1
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_2
    iget-boolean v1, p0, Lo/SZ;->x:Z

    if-nez v1, :cond_6

    .line 138
    sget-object v1, Lo/QB;->h:Lo/QB$TaskDescription;

    const-string v2, "context"

    .line 139
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lo/SZ;->j:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-nez v3, :cond_4

    const-string v2, "downloadState"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 141
    :cond_4
    iget-object v4, p0, Lo/SZ;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-nez v4, :cond_5

    const-string v2, "watchState"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    .line 142
    :cond_5
    iget-wide v5, p0, Lo/SZ;->l:J

    .line 143
    iget-object v7, p0, Lo/SZ;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 144
    iget v8, p0, Lo/SZ;->n:I

    move-object v2, v0

    .line 138
    invoke-virtual/range {v1 .. v8}, Lo/QB$TaskDescription;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;JLcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lo/SZ;->v:Ljava/lang/CharSequence;

    .line 146
    iput-boolean v9, p0, Lo/SZ;->x:Z

    .line 148
    :cond_6
    invoke-virtual {p1}, Lo/SZ$Application;->b()Lo/ImageSwitcher;

    move-result-object v1

    iget-object v2, p0, Lo/SZ;->v:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p1}, Lo/SZ$Application;->b()Lo/ImageSwitcher;

    move-result-object v1

    iget-object v2, p0, Lo/SZ;->v:Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/aev;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 150
    invoke-virtual {p0}, Lo/SZ;->D()Ljava/lang/String;

    move-result-object v1

    .line 151
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :cond_9
    :goto_4
    if-nez v9, :cond_e

    .line 154
    invoke-virtual {p1}, Lo/SZ$Application;->a()Lo/GridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/GridView;->d(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lo/SZ$Application;->a()Lo/GridView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lo/SZ;->F()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_5

    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_5
    invoke-static {v1, v2}, Lo/Binder;->c(Landroid/view/View;F)V

    .line 159
    invoke-virtual {p0}, Lo/SZ;->I()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 160
    invoke-virtual {p1}, Lo/SZ$Application;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 161
    invoke-virtual {p1}, Lo/SZ$Application;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/SZ;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    invoke-virtual {p1}, Lo/SZ$Application;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p0}, Lo/SZ;->A()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p1}, Lo/SZ$Application;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 168
    invoke-virtual {p1}, Lo/SZ$Application;->f()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 169
    invoke-virtual {p1}, Lo/SZ$Application;->h()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/HorizontalScrollView;->setVisibility(I)V

    goto :goto_6

    .line 171
    :cond_b
    invoke-virtual {p1}, Lo/SZ$Application;->c()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 172
    invoke-virtual {p1}, Lo/SZ$Application;->f()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 173
    iget-boolean v1, p0, Lo/SZ;->r:Z

    if-eqz v1, :cond_c

    .line 174
    invoke-virtual {p1}, Lo/SZ$Application;->f()Lo/HorizontalScrollView;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bS:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p1}, Lo/SZ$Application;->f()Lo/HorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lo/SZ;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {p1}, Lo/SZ$Application;->h()Lo/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 177
    invoke-virtual {p1}, Lo/SZ$Application;->h()Lo/HorizontalScrollView;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bK:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p1}, Lo/SZ$Application;->h()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/SZ;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 180
    :cond_c
    invoke-virtual {p1}, Lo/SZ$Application;->f()Lo/HorizontalScrollView;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bK:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p1}, Lo/SZ$Application;->f()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/SZ;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-virtual {p1}, Lo/SZ$Application;->h()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lo/HorizontalScrollView;->setVisibility(I)V

    .line 186
    :goto_6
    invoke-virtual {p1}, Lo/SZ$Application;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lo/SZ;->I()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lo/SZ;->y:Landroid/view/View$OnClickListener;

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p1}, Lo/SZ$Application;->g()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/SZ;->u:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 152
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "image url is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final b(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lo/SZ;->r:Z

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 89
    iput p1, p0, Lo/SZ;->m:I

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lo/SZ;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final c(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lo/SZ;->u:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 35
    check-cast p1, Lo/SZ$Application;

    invoke-virtual {p0, p1}, Lo/SZ;->b(Lo/SZ$Application;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 90
    iput p1, p0, Lo/SZ;->k:I

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lo/SZ;->t:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lo/SZ$Application;

    invoke-virtual {p0, p1}, Lo/SZ;->b(Lo/SZ$Application;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 87
    iput p1, p0, Lo/SZ;->n:I

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/SZ;->y:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lo/SZ;->h:Ljava/lang/CharSequence;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lo/SZ;->s:Z

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/SZ;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    .line 92
    iput p1, p0, Lo/SZ;->q:I

    return-void
.end method

.method public final k()I
    .locals 1

    .line 89
    iget v0, p0, Lo/SZ;->m:I

    return v0
.end method

.method public final l()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/SZ;->o:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method

.method public final m()I
    .locals 1

    .line 87
    iget v0, p0, Lo/SZ;->n:I

    return v0
.end method

.method public final o()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lo/SZ;->l:J

    return-wide v0
.end method

.method public final p()I
    .locals 1

    .line 91
    iget v0, p0, Lo/SZ;->p:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 90
    iget v0, p0, Lo/SZ;->k:I

    return v0
.end method

.method public final r()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lo/SZ;->r:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lo/SZ;->s:Z

    return v0
.end method

.method public final t()I
    .locals 1

    .line 92
    iget v0, p0, Lo/SZ;->q:I

    return v0
.end method

.method public final u()Landroid/view/View$OnClickListener;
    .locals 1

    .line 97
    iget-object v0, p0, Lo/SZ;->w:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final v()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/SZ;->u:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public final x()Landroid/view/View$OnClickListener;
    .locals 1

    .line 98
    iget-object v0, p0, Lo/SZ;->y:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final y()Landroid/view/View$OnClickListener;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/SZ;->t:Landroid/view/View$OnClickListener;

    return-object v0
.end method
