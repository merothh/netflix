.class public Lo/Ut;
.super Lo/UB;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ut$Application;,
        Lo/Ut$Activity;
    }
.end annotation


# instance fields
.field private final h:I

.field private final i:I

.field private final j:I

.field private m:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lo/UB;-><init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V

    const/16 p1, 0xc

    .line 22
    iput p1, p0, Lo/Ut;->i:I

    .line 23
    iput p1, p0, Lo/Ut;->j:I

    const/16 p1, 0x12c

    .line 24
    iput p1, p0, Lo/Ut;->h:I

    .line 40
    sget-object p1, Lo/Ut;->d:Ljava/lang/String;

    const-string v0, "PostPlayWithAnimation"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0}, Lo/Ut;->d()V

    return-void
.end method

.method private d()V
    .locals 11

    .line 48
    iget-object v0, p0, Lo/Ut;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lo/Ut;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v9

    .line 50
    iget-object v1, p0, Lo/Ut;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v8

    .line 51
    iget-object v1, p0, Lo/Ut;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v10, v1, v0

    .line 55
    new-instance v0, Lo/Ut$Activity;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lo/Ut$Activity;-><init>(IIIFIIF)V

    iput-object v0, p0, Lo/Ut;->f:Lo/Ut$Activity;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 245
    iget-object v0, p0, Lo/Ut;->b:Lo/OverScroller;

    invoke-interface {v0}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Ut;->d(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lo/Ut;->e:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lo/Ut;->d(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lo/Ut;->b:Lo/OverScroller;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lo/Ut;->b:Lo/OverScroller;

    invoke-interface {v0}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cw:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    iget-object v0, p0, Lo/Ut;->b:Lo/OverScroller;

    invoke-interface {v0}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lo/Ut;->a()Lo/UB$ActionBar;

    move-result-object v0

    iput-object v0, p0, Lo/Ut;->c:Lo/UB$ActionBar;

    .line 252
    new-instance v0, Lo/Ut$Application;

    invoke-virtual {p0}, Lo/Ut;->c()Lo/Ut$Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lo/Ut$Application;-><init>(Lo/Ut;Lo/Ut$Activity;Ljava/lang/Runnable;Lo/Ut$1;)V

    .line 253
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lo/Ut;->m:Ljava/lang/Thread;

    .line 254
    iget-object v0, p0, Lo/Ut;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected c()Lo/Ut$Activity;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/Ut;->f:Lo/Ut$Activity;

    return-object v0
.end method
