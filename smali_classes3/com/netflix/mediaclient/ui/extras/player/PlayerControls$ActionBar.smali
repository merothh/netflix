.class public final Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/MediaControlView2;

.field final synthetic b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

.field private final c:Lo/ImageSwitcher;

.field private final d:Lo/GridLayout;

.field private final e:Landroid/widget/SeekBar;

.field private final g:Lo/RadioButton;

.field private final j:Lo/RadioButton;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lo/GS$Dialog;->p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaControlView2;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a:Lo/MediaControlView2;

    .line 206
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lo/GS$Dialog;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/GridLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    .line 207
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lo/GS$Dialog;->v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    .line 208
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lo/GS$Dialog;->C:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c:Lo/ImageSwitcher;

    .line 209
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lo/GS$Dialog;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->g:Lo/RadioButton;

    .line 210
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    sget v1, Lo/GS$Dialog;->y:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->j:Lo/RadioButton;

    .line 213
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 214
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a:Lo/MediaControlView2;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->e(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/MediaControlView2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->d(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/GridLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->g:Lo/RadioButton;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;

    move-result-object v2

    check-cast v2, Lo/RadioButton$ActionBar;

    invoke-virtual {v1, v2}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 217
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->j:Lo/RadioButton;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->b(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$Dialog;

    move-result-object v2

    check-cast v2, Lo/RadioButton$ActionBar;

    invoke-virtual {v1, v2}, Lo/RadioButton;->setOnSeekButtonListener(Lo/RadioButton$ActionBar;)V

    .line 218
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    const-string v2, "scrubber"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-static {v1}, Lo/SslError;->d(Landroid/widget/SeekBar;)Lo/SntpClient;

    move-result-object v1

    const-string v3, "RxSeekBar.changeEvents(this)"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->o()Lio/reactivex/Observable;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v1, v3}, Lo/SntpClient;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v1, "scrubber\n               \u2026    .takeUntil(destroy())"

    invoke-static {v4, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$LazyControls$1;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;Ljava/text/SimpleDateFormat;)V

    move-object v7, v1

    check-cast v7, Lo/alA;

    .line 239
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->g(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lo/alA;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 221
    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a(Z)V

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a:Lo/MediaControlView2;

    const-string v1, "playPause"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/MediaControlView2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/GS$ActionBar;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a:Lo/MediaControlView2;

    invoke-virtual {v1, v0, v0, v0, v0}, Lo/MediaControlView2;->setPadding(IIII)V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a:Lo/MediaControlView2;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->h(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/MediaControlView2;->setState(I)V

    .line 251
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->m(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Lo/ListAdapter;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$4;-><init>(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ListAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->n(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/widget/ToggleButton;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;->d:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar$1;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    const-string v0, "fullscreen"

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    sget v1, Lo/GS$Application;->e:I

    invoke-virtual {p1, v1}, Lo/GridLayout;->setImageResource(I)V

    .line 281
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/GS$Fragment;->d:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/GridLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    sget v1, Lo/GS$Application;->d:I

    invoke-virtual {p1, v1}, Lo/GridLayout;->setImageResource(I)V

    .line 285
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->b:Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;->a(Lcom/netflix/mediaclient/ui/extras/player/PlayerControls;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/GS$Fragment;->e:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/GridLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final b()Lo/ImageSwitcher;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->c:Lo/ImageSwitcher;

    return-object v0
.end method

.method public final c()Lo/MediaControlView2;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->a:Lo/MediaControlView2;

    return-object v0
.end method

.method public final d()Lo/GridLayout;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->d:Lo/GridLayout;

    return-object v0
.end method

.method public final e()Landroid/widget/SeekBar;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/player/PlayerControls$ActionBar;->e:Landroid/widget/SeekBar;

    return-object v0
.end method
