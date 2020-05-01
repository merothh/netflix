.class public Lo/UB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Uv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UB$ActionBar;
    }
.end annotation


# static fields
.field protected static d:Ljava/lang/String; = "nf_postplay"


# instance fields
.field protected a:Landroid/view/ViewGroup;

.field protected b:Lo/OverScroller;

.field protected c:Lo/UB$ActionBar;

.field protected e:Landroid/view/TextureView;

.field protected f:Lo/Ut$Activity;

.field protected g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

.field private final h:I

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V
    .locals 11

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 37
    iput v0, p0, Lo/UB;->j:I

    .line 38
    iput v0, p0, Lo/UB;->i:I

    const/16 v1, 0x12c

    .line 39
    iput v1, p0, Lo/UB;->h:I

    .line 54
    iput-object p1, p0, Lo/UB;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 55
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->Z_()Landroid/view/View;

    move-result-object p1

    .line 57
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->mY:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/OverScroller;

    iput-object v2, p0, Lo/UB;->b:Lo/OverScroller;

    .line 58
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->sL:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lo/UB;->e:Landroid/view/TextureView;

    .line 59
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->E:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/UB;->a:Landroid/view/ViewGroup;

    .line 60
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    if-nez p1, :cond_0

    .line 61
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v2, "PostPlayWithScaling:: surface not found"

    invoke-static {p1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    if-nez p1, :cond_1

    .line 64
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v2, "PostPlayWithScaling:: surface2 not found"

    invoke-static {p1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    iget-object p1, p0, Lo/UB;->a:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    .line 67
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v2, "PostPlayWithScaling:: rootFrame not found"

    invoke-static {p1, v2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_2
    iget-object p1, p0, Lo/UB;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/adq;->j(Landroid/content/Context;)I

    move-result p1

    .line 71
    iget-object v2, p0, Lo/UB;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v9

    .line 72
    iget-object v2, p0, Lo/UB;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v2}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v8

    .line 73
    iget-object v0, p0, Lo/UB;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lo/RemoteException;->a(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float v10, v0, p1

    .line 76
    new-instance p1, Lo/Ut$Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lo/Ut$Activity;-><init>(IIIFIIF)V

    iput-object p1, p0, Lo/UB;->f:Lo/Ut$Activity;

    return-void
.end method


# virtual methods
.method protected a()Lo/UB$ActionBar;
    .locals 8

    .line 126
    iget-object v0, p0, Lo/UB;->b:Lo/OverScroller;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 128
    new-instance v7, Lo/UB$ActionBar;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {v0}, Lo/OverScroller;->c()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/UB$ActionBar;-><init>(IIIII)V

    return-object v7

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 141
    sget-object v0, Lo/UB;->d:Ljava/lang/String;

    const-string v1, "PostPlayWithScaling:: doTransitionToPostPlay starts"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lo/UB;->b:Lo/OverScroller;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lo/UB;->d:Ljava/lang/String;

    const-string v1, "PostPlayWithScaling:: surface not found"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lo/UB;->a()Lo/UB$ActionBar;

    move-result-object v0

    iput-object v0, p0, Lo/UB;->c:Lo/UB$ActionBar;

    .line 162
    iget-object v0, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {v0}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/UB;->d(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lo/UB;->e:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lo/UB;->d(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lo/UB;->f:Lo/Ut$Activity;

    invoke-virtual {v0}, Lo/Ut$Activity;->g()F

    move-result v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p0, v1, v1, v0}, Lo/UB;->d(IIF)V

    .line 168
    sget-object v0, Lo/UB;->d:Ljava/lang/String;

    const-string v1, "PostPlayWithScaling:: doTransitionToPostPlay ends after request layout"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected b(Landroid/view/View;IIII)V
    .locals 1

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 232
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected c()Lo/Ut$Activity;
    .locals 1

    .line 312
    iget-object v0, p0, Lo/UB;->f:Lo/Ut$Activity;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 299
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->e:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->b:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 302
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->b:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->d(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    :goto_0
    return-void
.end method

.method protected d(II)V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/UB;->e:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 102
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected d(IIF)V
    .locals 2

    .line 81
    iget-object v0, p0, Lo/UB;->g:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    new-instance v1, Lo/UB$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/UB$5;-><init>(Lo/UB;IIF)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected d(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lo/MenuInflater;

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->d(II)V

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->d(II)V

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->d(II)V

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->d(II)V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->b(IF)V

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->c(IF)V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lo/MenuInflater;

    invoke-virtual {v0, p1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    goto :goto_0

    .line 218
    :cond_1
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 222
    :cond_2
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 224
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/Runnable;)V
    .locals 7

    .line 177
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v0, "PostPlayWithScaling:: doTransitionFromPostPlay starts"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    if-nez p1, :cond_0

    .line 179
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v0, "PostPlayWithScaling:: surface not found"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_0
    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    if-nez p1, :cond_1

    .line 183
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v0, "Previous state unknown"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance p1, Lo/UB$ActionBar;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lo/UB$ActionBar;-><init>(IIIII)V

    iput-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    .line 187
    :cond_1
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/UB;->e(Landroid/view/View;)V

    .line 188
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v1

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v2, p1, Lo/UB$ActionBar;->d:I

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v3, p1, Lo/UB$ActionBar;->a:I

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v4, p1, Lo/UB$ActionBar;->e:I

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v5, p1, Lo/UB$ActionBar;->c:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/UB;->b(Landroid/view/View;IIII)V

    .line 190
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    iget-object v0, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v0, v0, Lo/UB$ActionBar;->b:I

    invoke-interface {p1, v0}, Lo/OverScroller;->setMode(I)V

    .line 191
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 193
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {p0, p1}, Lo/UB;->e(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lo/UB;->e:Landroid/view/TextureView;

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v2, p1, Lo/UB$ActionBar;->d:I

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v3, p1, Lo/UB$ActionBar;->a:I

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v4, p1, Lo/UB$ActionBar;->e:I

    iget-object p1, p0, Lo/UB;->c:Lo/UB$ActionBar;

    iget v5, p1, Lo/UB$ActionBar;->c:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lo/UB;->b(Landroid/view/View;IIII)V

    .line 196
    iget-object p1, p0, Lo/UB;->e:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->postInvalidate()V

    .line 199
    :cond_2
    sget-object p1, Lo/UB;->d:Ljava/lang/String;

    const-string v0, "PostPlayWithScaling:: doTransitionFromPostPlay ends after request layout"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e(IIF)V
    .locals 2

    .line 116
    iget-object v0, p0, Lo/UB;->b:Lo/OverScroller;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 119
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1, p3}, Lo/OverScroller;->setScale(F)V

    .line 121
    iget-object p1, p0, Lo/UB;->b:Lo/OverScroller;

    invoke-interface {p1}, Lo/OverScroller;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lo/MenuInflater;

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Lo/Factory2;->e(IIII)V

    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3, v2}, Lo/Factory2;->e(IIII)V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3, v2}, Lo/Factory2;->e(IIII)V

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v3, v2}, Lo/Factory2;->e(IIII)V

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->b(IF)V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lo/Factory2;->c(IF)V

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lo/MenuInflater;

    invoke-virtual {v0, p1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    goto :goto_0

    .line 252
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 256
    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 258
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
