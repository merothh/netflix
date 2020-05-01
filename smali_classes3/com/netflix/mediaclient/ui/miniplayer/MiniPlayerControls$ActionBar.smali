.class public final Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/MediaControlView2;

.field private final b:Lo/ImageSwitcher;

.field private final c:Lo/GridLayout;

.field private final d:Landroid/widget/SeekBar;

.field final synthetic e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

.field private final f:Lo/RadioButton;

.field private final h:Landroid/widget/ImageButton;

.field private final i:Landroid/widget/ImageButton;

.field private final j:Lo/RadioButton;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mQ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaControlView2;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a:Lo/MediaControlView2;

    .line 232
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->hb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->c:Lo/GridLayout;

    .line 233
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qL:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->d:Landroid/widget/SeekBar;

    .line 234
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->tj:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->b:Lo/ImageSwitcher;

    .line 235
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->rd:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->j:Lo/RadioButton;

    .line 236
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->rb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->f:Lo/RadioButton;

    .line 239
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "root.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "root.context.resources"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v4, "root.context.resources.configuration"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mO:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mR:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->h:Landroid/widget/ImageButton;

    .line 241
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v5, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mR:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mO:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->i:Landroid/widget/ImageButton;

    .line 244
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 245
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a:Lo/MediaControlView2;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->b(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/MediaControlView2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->c:Lo/GridLayout;

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->a(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->j:Lo/RadioButton;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;

    move-result-object v2

    check-cast v2, Lo/RadioButton$ActionBar;

    invoke-virtual {v1, v2}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->f:Lo/RadioButton;

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->d(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$Application;

    move-result-object v2

    check-cast v2, Lo/RadioButton$ActionBar;

    invoke-virtual {v1, v2}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->h:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->e(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->i:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->g(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->d:Landroid/widget/SeekBar;

    if-eqz v1, :cond_7

    .line 637
    invoke-static {v1}, Lo/SslError;->d(Landroid/widget/SeekBar;)Lo/SntpClient;

    move-result-object v2

    const-string v3, "RxSeekBar.changeEvents(this)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v2, v3}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v2, "scrubberView.changeEvent\u2026    .takeUntil(destroy())"

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v2, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$LazyControls$$special$$inlined$let$lambda$1;-><init>(Landroid/widget/SeekBar;Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;Ljava/text/SimpleDateFormat;)V

    move-object v7, v2

    check-cast v7, Lo/alA;

    const/4 v6, 0x0

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->m(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lo/alA;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 255
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    .line 277
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 278
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e(Z)V

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a:Lo/MediaControlView2;

    const-string v1, "playPause"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/MediaControlView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$TaskDescription;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 284
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a:Lo/MediaControlView2;

    invoke-virtual {v1, v0, v0, v0, v0}, Lo/MediaControlView2;->setPadding(IIII)V

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a:Lo/MediaControlView2;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->o(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/MediaControlView2;->setState(I)V

    .line 288
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->l(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Lo/ListAdapter;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar$5;-><init>(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->k(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/widget/ToggleButton;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar$2;->b:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar$2;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()Lo/ImageSwitcher;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->b:Lo/ImageSwitcher;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 326
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    .line 327
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final b()Lo/GridLayout;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->c:Lo/GridLayout;

    return-object v0
.end method

.method public final c()Lo/MediaControlView2;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->a:Lo/MediaControlView2;

    return-object v0
.end method

.method public final d()Landroid/widget/SeekBar;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->d:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public final e(I)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->i:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 333
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    .line 334
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->c:Lo/GridLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 313
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->ar:I

    invoke-virtual {v0, p1}, Lo/GridLayout;->setImageResource(I)V

    .line 315
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->k:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/GridLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :cond_0
    sget p1, Lcom/netflix/mediaclient/ui/R$Activity;->an:I

    invoke-virtual {v0, p1}, Lo/GridLayout;->setImageResource(I)V

    .line 319
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls$ActionBar;->e:Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;->c(Lcom/netflix/mediaclient/ui/miniplayer/MiniPlayerControls;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->l:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/GridLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
