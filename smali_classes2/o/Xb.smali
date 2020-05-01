.class public final Lo/Xb;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Wz;


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final c:Lo/ImageSwitcher;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Lo/GridView;

.field private final f:Landroid/view/ViewGroup;

.field private g:Ljava/lang/Long;

.field private final h:Lo/GridView;

.field private final i:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/reactivex/disposables/Disposable;

.field private final k:Lcom/netflix/model/leafs/PostPlayItem;

.field private final m:Lcom/netflix/model/leafs/SeasonRenewal;

.field private final n:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lio/reactivex/subjects/Subject;Lcom/netflix/model/leafs/SeasonRenewal;Lcom/netflix/model/leafs/PostPlayItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lio/reactivex/subjects/Subject<",
            "Lo/UU;",
            ">;",
            "Lcom/netflix/model/leafs/SeasonRenewal;",
            "Lcom/netflix/model/leafs/PostPlayItem;",
            "Z)V"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postPlayUIObservable"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "seasonRenewal"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoPlayPostPlayItem"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/Xb;->f:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/Xb;->i:Lio/reactivex/subjects/Subject;

    iput-object p3, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    iput-object p4, p0, Lo/Xb;->k:Lcom/netflix/model/leafs/PostPlayItem;

    iput-boolean p5, p0, Lo/Xb;->n:Z

    .line 35
    iget-object p1, p0, Lo/Xb;->f:Landroid/view/ViewGroup;

    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->ek:I

    const/4 p3, 0x0

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-static {p1, p2, p3, p4, p5}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xb;->d:Landroid/view/ViewGroup;

    .line 36
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qW:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id\u2026son_renewal_preview_text)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Xb;->c:Lo/ImageSwitcher;

    .line 37
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qR:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.season_renewal_message)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/Xb;->b:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qS:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id.season_renewal_logo)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/Xb;->e:Lo/GridView;

    .line 39
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qV:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "uiView.findViewById(R.id\u2026renewal_postplay_boxshot)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/GridView;

    iput-object p1, p0, Lo/Xb;->h:Lo/GridView;

    .line 45
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lo/Xb;->h:Lo/GridView;

    new-instance p2, Lo/Xb$2;

    invoke-direct {p2, p0}, Lo/Xb$2;-><init>(Lo/Xb;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lo/Xb;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/SeasonRenewal;->message()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->autoPlaySeconds()I

    move-result p1

    invoke-direct {p0, p1}, Lo/Xb;->d(I)V

    .line 58
    iget-object p1, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    iget-object p2, p0, Lo/Xb;->k:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {p0, p1, p2}, Lo/Xb;->c(Lcom/netflix/model/leafs/SeasonRenewal;Lcom/netflix/model/leafs/PostPlayItem;)V

    return-void

    .line 35
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lo/Xb;)Lio/reactivex/subjects/Subject;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/Xb;->i:Lio/reactivex/subjects/Subject;

    return-object p0
.end method

.method public static final synthetic b(Lo/Xb;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/Xb;->n()V

    return-void
.end method

.method public static final synthetic c(Lo/Xb;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lo/Xb;->n:Z

    return p0
.end method

.method public static final synthetic d(Lo/Xb;)Ljava/lang/Long;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/Xb;->g:Ljava/lang/Long;

    return-object p0
.end method

.method private final d(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 166
    iget-boolean v0, p0, Lo/Xb;->n:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lo/Xb;->k:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "episodicTeaser"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "seconds"

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lo/Xb;->c:Lo/ImageSwitcher;

    .line 172
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jv:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lo/Xb;->c:Lo/ImageSwitcher;

    .line 175
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->jx:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object p1, p0, Lo/Xb;->c:Lo/ImageSwitcher;

    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jD:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final d(III)V
    .locals 3

    .line 108
    new-instance v0, Lo/Factory2;

    invoke-direct {v0}, Lo/Factory2;-><init>()V

    .line 109
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->nc:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MenuInflater;

    .line 110
    invoke-virtual {v0, v1}, Lo/Factory2;->d(Lo/MenuInflater;)V

    .line 111
    invoke-static {}, Lo/adq;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x3e4ccccd    # 0.2f

    .line 112
    invoke-virtual {v0, p3, v2}, Lo/Factory2;->a(IF)V

    goto :goto_0

    :cond_0
    const v2, 0x3e99999a    # 0.3f

    .line 114
    invoke-virtual {v0, p3, v2}, Lo/Factory2;->a(IF)V

    .line 116
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lo/Factory2;->d(ILjava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1}, Lo/Factory2;->a(Lo/MenuInflater;)V

    return-void
.end method

.method public static final synthetic d(Lo/Xb;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/Xb;->d(I)V

    return-void
.end method

.method public static final synthetic d(Lo/Xb;Ljava/lang/Long;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/Xb;->g:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic e(Lo/Xb;)Lcom/netflix/model/leafs/SeasonRenewal;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    return-object p0
.end method

.method public static final synthetic j(Lo/Xb;)Lcom/netflix/model/leafs/PostPlayItem;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/Xb;->k:Lcom/netflix/model/leafs/PostPlayItem;

    return-object p0
.end method

.method private final n()V
    .locals 3

    .line 128
    iget-boolean v0, p0, Lo/Xb;->n:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lo/Xb;->i:Lio/reactivex/subjects/Subject;

    new-instance v1, Lo/UU$TypedArray;

    iget-object v2, p0, Lo/Xb;->k:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-direct {v1, v2}, Lo/UU$TypedArray;-><init>(Lcom/netflix/model/leafs/PostPlayItem;)V

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lo/Xb;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    .line 184
    invoke-static/range {v0 .. v7}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lo/Xb;->j()V

    return-void
.end method

.method public final c(Lcom/netflix/model/leafs/SeasonRenewal;Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 6

    const-string v0, "seasonRenewal"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoPlayPostPlayItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    check-cast v0, Lcom/netflix/model/leafs/SeasonRenewalAsset;

    .line 71
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p1}, Lcom/netflix/model/leafs/SeasonRenewal;->assets()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Lcom/netflix/model/leafs/SeasonRenewalAsset;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "LOGO"

    .line 77
    invoke-static {v1, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v4

    goto :goto_0

    .line 75
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.model.leafs.SeasonRenewalAsset"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->url()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v1, p0, Lo/Xb;->e:Lo/GridView;

    invoke-virtual {v1, v3}, Lo/GridView;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lo/Xb;->e:Lo/GridView;

    .line 85
    new-instance v4, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 86
    invoke-virtual {v4, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 88
    sget-object v4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 84
    invoke-virtual {v1, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 90
    invoke-virtual {v0}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->width()I

    move-result p1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SeasonRenewalAsset;->height()I

    move-result v0

    iget-object v1, p0, Lo/Xb;->e:Lo/GridView;

    invoke-virtual {v1}, Lo/GridView;->getId()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lo/Xb;->d(III)V

    .line 95
    :cond_3
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    const-string v0, "autoPlayPostPlayItem.displayArtAsset"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v1, p0, Lo/Xb;->h:Lo/GridView;

    invoke-virtual {v1, v3}, Lo/GridView;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lo/Xb;->h:Lo/GridView;

    .line 98
    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 99
    invoke-virtual {v3, p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 100
    invoke-virtual {p1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 101
    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {p1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 103
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p1

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAsset;->getWidth()I

    move-result p1

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getDisplayArtAsset()Lcom/netflix/model/leafs/PostPlayAsset;

    move-result-object p2

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayAsset;->getHeight()I

    move-result p2

    iget-object v0, p0, Lo/Xb;->h:Lo/GridView;

    invoke-virtual {v0}, Lo/GridView;->getId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lo/Xb;->d(III)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lo/Xb;->f()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 4

    .line 62
    iget-boolean v0, p0, Lo/Xb;->n:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SeasonRenewal;->autoPlaySeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 65
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lcom/netflix/cl/model/event/session/Countdown;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/netflix/cl/model/event/session/Countdown;-><init>(Ljava/lang/Long;)V

    check-cast v3, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/Xb;->g:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/Xb;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public h()V
    .locals 7

    .line 135
    invoke-virtual {p0}, Lo/Xb;->j()V

    .line 136
    iget-boolean v0, p0, Lo/Xb;->n:Z

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    .line 138
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lo/Xb;->m:Lcom/netflix/model/leafs/SeasonRenewal;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/SeasonRenewal;->autoPlaySeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 140
    new-instance v1, Lo/Xb$Application;

    invoke-direct {v1, p0}, Lo/Xb$Application;-><init>(Lo/Xb;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.interval(0, 1\u2026.autoPlaySeconds() - it }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$2;-><init>(Lo/Xb;)V

    check-cast v1, Lo/alA;

    .line 145
    new-instance v2, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$3;-><init>(Lo/Xb;)V

    check-cast v2, Lo/alB;

    .line 152
    new-instance v3, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$4;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeasonRenewalUIView$startTimer$4;-><init>(Lo/Xb;)V

    check-cast v3, Lo/alA;

    .line 141
    invoke-static {v0, v3, v2, v1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lo/Xb;->j:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 10

    .line 121
    iget-object v0, p0, Lo/Xb;->h:Lo/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lo/Xb;->e:Lo/GridView;

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p0

    .line 123
    invoke-static/range {v2 .. v9}, Lo/Xl;->c(Lo/Xl;ZZFZLo/alB;ILjava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lo/Xb;->h()V

    return-void
.end method

.method public j()V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/Xb;->j:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
