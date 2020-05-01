.class public final Lo/Xa;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xa$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/Xa$Activity;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/widget/ImageButton;

.field private final e:Lo/RadioButton;

.field private final g:Lo/Xa$ActionBar;

.field private final h:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lo/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xa$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xa$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xa;->d:Lo/Xa$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->dQ:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xa;->b:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ne:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.player_pause_btn)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    .line 28
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rM:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.skip_back_seek_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RadioButton;

    iput-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    .line 29
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rL:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.skip_forward_seek_button)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RadioButton;

    iput-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    .line 31
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string v0, "PublishSubject.create<Unit>()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/Xa;->h:Lio/reactivex/subjects/PublishSubject;

    .line 33
    new-instance p1, Lo/Xa$ActionBar;

    invoke-direct {p1, p0}, Lo/Xa$ActionBar;-><init>(Lo/Xa;)V

    iput-object p1, p0, Lo/Xa;->g:Lo/Xa$ActionBar;

    .line 55
    iget-object p1, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    new-instance v0, Lo/Xa$2;

    invoke-direct {v0, p0}, Lo/Xa$2;-><init>(Lo/Xa;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    iget-object v0, p0, Lo/Xa;->g:Lo/Xa$ActionBar;

    check-cast v0, Lo/RadioButton$ActionBar;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 60
    iget-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    iget-object v0, p0, Lo/Xa;->g:Lo/Xa$ActionBar;

    check-cast v0, Lo/RadioButton$ActionBar;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    return-void

    .line 25
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/Xa;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/Xa;->h:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 72
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bl:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bm:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrimaryControlsUIView$performSkipAnimation$onAnimationEnd$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerPrimaryControlsUIView$performSkipAnimation$onAnimationEnd$1;-><init>(Lo/Xa;)V

    check-cast v0, Lo/alB;

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->e(Lo/alB;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->e(Lo/alB;)V

    :goto_0
    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f3ae148    # 0.73f

    .line 176
    :goto_0
    iget-object v2, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/Binder;->c(Landroid/view/View;F)V

    .line 177
    iget-object v2, p0, Lo/Xa;->e:Lo/RadioButton;

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/Binder;->c(Landroid/view/View;F)V

    .line 178
    iget-object v2, p0, Lo/Xa;->i:Lo/RadioButton;

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v1}, Lo/Binder;->c(Landroid/view/View;F)V

    if-ne p1, v0, :cond_1

    const/16 p1, 0x66

    goto :goto_1

    :cond_1
    const/16 p1, 0x65

    .line 182
    :goto_1
    iget-object v0, p0, Lo/Xa;->e:Lo/RadioButton;

    invoke-virtual {v0, p1}, Lo/RadioButton;->setAnimMode(I)V

    .line 183
    iget-object v0, p0, Lo/Xa;->i:Lo/RadioButton;

    invoke-virtual {v0, p1}, Lo/RadioButton;->setAnimMode(I)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lo/Xa;->q()Lo/TA;

    move-result-object p1

    iget-object v1, p0, Lo/Xa;->e:Lo/RadioButton;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lo/TA;->a(Landroid/view/View;Z)V

    .line 104
    invoke-virtual {p0}, Lo/Xa;->q()Lo/TA;

    move-result-object p1

    iget-object v1, p0, Lo/Xa;->i:Lo/RadioButton;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lo/TA;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setEnabled(Z)V

    .line 107
    iget-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 9

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 68
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lo/Xa;->q()Lo/TA;

    move-result-object p1

    iget-object v1, p0, Lo/Xa;->e:Lo/RadioButton;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lo/TA;->a(Landroid/view/View;Z)V

    .line 86
    invoke-virtual {p0}, Lo/Xa;->q()Lo/TA;

    move-result-object p1

    iget-object v1, p0, Lo/Xa;->i:Lo/RadioButton;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Lo/TA;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setEnabled(Z)V

    .line 89
    iget-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lo/Xa;->q()Lo/TA;

    move-result-object v0

    iget-object v1, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/TA;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lo/Xa;->e:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lo/Xa;->i:Lo/RadioButton;

    invoke-virtual {p1, v0}, Lo/RadioButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    .line 98
    invoke-virtual {p0}, Lo/Xa;->q()Lo/TA;

    move-result-object v0

    iget-object v1, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/TA;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lo/Xa;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lo/Xa;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lo/Xa;->s()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public o()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lo/Xa;->h:Lio/reactivex/subjects/PublishSubject;

    check-cast v0, Lio/reactivex/Observable;

    return-object v0
.end method

.method public s()Landroid/view/ViewGroup;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/Xa;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lo/Xa;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
