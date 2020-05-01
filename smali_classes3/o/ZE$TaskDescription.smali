.class Lo/ZE$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:J

.field final synthetic c:Lo/ZE;


# direct methods
.method constructor <init>(Lo/ZE;J)V
    .locals 0

    .line 304
    iput-object p1, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    .line 305
    iput-wide p2, p0, Lo/ZE$TaskDescription;->a:J

    return-void
.end method


# virtual methods
.method public c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 8

    .line 310
    invoke-super {p0, p1, p2, p3}, Lo/Ai;->c(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    .line 312
    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lo/ZE;->a(Lo/ZE;Z)Z

    .line 314
    iget-wide v1, p0, Lo/ZE$TaskDescription;->a:J

    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->h(Lo/ZE;)J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-virtual {p3}, Lo/ZE;->getActivity()Lo/Serializable;

    move-result-object p3

    .line 319
    invoke-static {p3}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 323
    :cond_1
    invoke-interface {p1}, Lo/Bs;->getVideosListTrackable()Lo/Bz;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 324
    invoke-interface {p1}, Lo/Bs;->getResultsVideoEntities()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_2

    .line 330
    :cond_2
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-interface {v1}, Lo/Bz;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lo/ZE;->d(Lo/ZE;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    invoke-static {p3}, Lo/Exception;->e(Lo/Serializable;)Lo/Deprecated;

    move-result-object p2

    const-class p3, Lo/ZE$Activity;

    invoke-virtual {p2, p3}, Lo/Deprecated;->b(Ljava/lang/Class;)Lo/Enum;

    move-result-object p2

    check-cast p2, Lo/ZE$Activity;

    .line 334
    iget-object p3, p2, Lo/ZE$Activity;->b:Ljava/lang/Long;

    if-nez p3, :cond_3

    .line 335
    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->f(Lo/ZE;)Lcom/netflix/cl/model/AppView;

    move-result-object v2

    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->j(Lo/ZE;)Ljava/lang/String;

    move-result-object v3

    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->i(Lo/ZE;)Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->n(Lo/ZE;)Ljava/lang/String;

    move-result-object v5

    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->m(Lo/ZE;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static/range {v2 .. v7}, Lo/Zy;->d(Lcom/netflix/cl/model/AppView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p2, Lo/ZE$Activity;->b:Ljava/lang/Long;

    .line 338
    :cond_3
    iget-object p3, p2, Lo/ZE$Activity;->c:Ljava/lang/Long;

    if-nez p3, :cond_4

    .line 339
    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->f(Lo/ZE;)Lcom/netflix/cl/model/AppView;

    move-result-object p3

    iget-object v2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {v2}, Lo/ZE;->n(Lo/ZE;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lo/Zy;->b(Lcom/netflix/cl/model/AppView;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p2, Lo/ZE$Activity;->c:Ljava/lang/Long;

    .line 342
    :cond_4
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->o(Lo/ZE;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1}, Lo/Bs;->getResultsVideoEntities()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->k(Lo/ZE;)I

    move-result p3

    const/4 v2, 0x1

    if-nez p3, :cond_5

    const/4 p3, 0x1

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Lo/ZE;->b(Lo/ZE;Z)V

    .line 347
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->l(Lo/ZE;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object p2

    check-cast p2, Lo/MultiAutoCompleteTextView;

    if-eqz p2, :cond_7

    .line 349
    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->k(Lo/ZE;)I

    move-result p3

    if-nez p3, :cond_6

    .line 350
    invoke-virtual {p2, v1}, Lo/MultiAutoCompleteTextView;->b(Lo/Bv;)V

    .line 351
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/MultiAutoCompleteTextView;->d(Ljava/util/Collection;)V

    goto :goto_1

    .line 353
    :cond_6
    invoke-interface {p1}, Lo/Bs;->getResultsVideos()Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p3}, Lo/ZE;->k(Lo/ZE;)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lo/MultiAutoCompleteTextView;->b(Ljava/util/Collection;I)V

    .line 355
    :goto_1
    invoke-virtual {p2}, Lo/MultiAutoCompleteTextView;->notifyDataSetChanged()V

    .line 359
    :cond_7
    invoke-interface {v1}, Lo/Bz;->getLength()I

    move-result p1

    const/16 p2, 0x4b

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 360
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->d(Lo/ZE;)I

    move-result p3

    add-int/lit8 v1, p1, -0x1

    if-ge p3, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {p2, v0}, Lo/ZE;->c(Lo/ZE;Z)Z

    .line 362
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->c(Lo/ZE;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 363
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->d(Lo/ZE;)I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p2, p3}, Lo/ZE;->c(Lo/ZE;I)I

    .line 364
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->d(Lo/ZE;)I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p2, p3}, Lo/ZE;->b(Lo/ZE;I)I

    .line 366
    iget-object p2, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p2}, Lo/ZE;->d(Lo/ZE;)I

    move-result p2

    if-lt p2, p1, :cond_9

    .line 367
    iget-object p1, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p1, v1}, Lo/ZE;->b(Lo/ZE;I)I

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string p1, "SrchSuggestTitlGalleryFrag"

    const-string p2, "Empty result or bad status code"

    .line 325
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p1, p0, Lo/ZE$TaskDescription;->c:Lo/ZE;

    invoke-static {p1}, Lo/ZE;->g(Lo/ZE;)V

    return-void
.end method
