.class Lo/Watchable$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Watchable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field a:Lo/CharsetDecoder;

.field e:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lo/CharsetDecoder;Landroid/view/ViewGroup;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lo/Watchable$Activity;->a:Lo/CharsetDecoder;

    .line 235
    iput-object p2, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    return-void
.end method

.method private d()V
    .locals 1

    .line 239
    iget-object v0, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 240
    iget-object v0, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 263
    invoke-direct {p0}, Lo/Watchable$Activity;->d()V

    .line 266
    sget-object v0, Lo/Watchable;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 272
    :cond_0
    invoke-static {}, Lo/Watchable;->a()Lo/Spanned;

    move-result-object v0

    .line 273
    iget-object v2, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lo/Spanned;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v4, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Lo/Spanned;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    :cond_2
    :goto_0
    iget-object v4, p0, Lo/Watchable$Activity;->a:Lo/CharsetDecoder;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Lo/Watchable$Activity;->a:Lo/CharsetDecoder;

    new-instance v4, Lo/Watchable$Activity$4;

    invoke-direct {v4, p0, v0}, Lo/Watchable$Activity$4;-><init>(Lo/Watchable$Activity;Lo/Spanned;)V

    invoke-virtual {v2, v4}, Lo/CharsetDecoder;->addListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    .line 289
    iget-object v0, p0, Lo/Watchable$Activity;->a:Lo/CharsetDecoder;

    iget-object v2, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lo/CharsetDecoder;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v3, :cond_3

    .line 291
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CharsetDecoder;

    .line 292
    iget-object v3, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Lo/CharsetDecoder;->resume(Landroid/view/View;)V

    goto :goto_1

    .line 295
    :cond_3
    iget-object v0, p0, Lo/Watchable$Activity;->a:Lo/CharsetDecoder;

    iget-object v2, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lo/CharsetDecoder;->playTransition(Landroid/view/ViewGroup;)V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 249
    invoke-direct {p0}, Lo/Watchable$Activity;->d()V

    .line 251
    sget-object p1, Lo/Watchable;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Lo/Watchable;->a()Lo/Spanned;

    move-result-object p1

    iget-object v0, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lo/Spanned;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CharsetDecoder;

    .line 255
    iget-object v1, p0, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lo/CharsetDecoder;->resume(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lo/Watchable$Activity;->a:Lo/CharsetDecoder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/CharsetDecoder;->clearValues(Z)V

    return-void
.end method
