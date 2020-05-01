.class public final Lo/LM;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static final a(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 327
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 330
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 331
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static final synthetic a(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 0

    .line 1
    invoke-static {p0}, Lo/LM;->e(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method private static final a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lo/Aa;
    .locals 1

    .line 471
    invoke-static {p0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "LoginUtils.getProfileGui\u2026w IllegalStateException()"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    invoke-static {p0, p1}, Lo/RL;->c(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object p0

    return-object p0

    .line 471
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public static final synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lo/LM;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private static final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/agg;)I
    .locals 5

    .line 459
    invoke-static {p0, p1}, Lo/LM;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lo/Aa;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    .line 460
    iget-wide v2, p0, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 461
    invoke-interface {p2}, Lo/agg;->K()J

    move-result-wide v0

    :cond_1
    const/4 p1, -0x1

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    if-eqz p0, :cond_2

    .line 464
    iget p1, p0, Lo/Aa;->mBookmarkInSecond:I

    :cond_2
    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 466
    invoke-interface {p2}, Lo/agg;->P()I

    move-result p1

    :cond_4
    return p1
.end method

.method private static final b(Landroid/view/ViewGroup;)Landroid/graphics/Rect;
    .locals 2

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 341
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 342
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 343
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 344
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 345
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    .line 341
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final b(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 3

    .line 350
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 351
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-void

    .line 350
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Ljava/lang/String;Lo/agg;)I
    .locals 0

    .line 446
    invoke-static {p0, p2, p3}, Lo/LM;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lo/agg;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    return p0

    .line 451
    :cond_0
    invoke-interface {p1}, Lo/agg;->by()Lo/Bd;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lo/Bd;->getBookmarkPositionSeconds()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final synthetic c(Landroid/view/ViewGroup;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Lo/LM;->b(Landroid/view/ViewGroup;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroid/app/Activity;)V
    .locals 3

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "activity.window"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x2

    .line 404
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static final synthetic d(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Lo/LM;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 336
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final synthetic d(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/LM;->b(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Ljava/lang/String;Lo/agg;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lo/LM;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/agg;Ljava/lang/String;Lo/agg;)I

    move-result p0

    return p0
.end method

.method private static final e(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lo/agg;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Lo/LM$Activity;

    invoke-direct {v0, p0}, Lo/LM$Activity;-><init>(Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/SingleOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p0

    const-string v0, "Single.create { emitter \u2026        }\n        )\n    }"

    invoke-static {p0, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final synthetic e(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lo/LM;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
