.class public Lo/Uo;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:Lo/Ue;

.field protected b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:Lo/Uq;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private l:Lcom/netflix/model/leafs/PostPlayItem;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Uh;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lo/Uo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lo/Uo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/Uo;->r:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/netflix/model/leafs/PostPlayAction;IZ)I
    .locals 2

    if-nez p3, :cond_0

    .line 387
    invoke-direct {p0}, Lo/Uo;->n()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 388
    :goto_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mylist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playlist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 396
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->ez:I

    return p1

    .line 398
    :cond_2
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eA:I

    return p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 390
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eB:I

    return p1

    .line 392
    :cond_4
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->eD:I

    return p1
.end method

.method private static b(Landroid/content/Context;Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;
    .locals 5

    .line 334
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3605951d

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x35fe0189

    if-eq v1, v2, :cond_1

    const v2, 0x35dafd

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "series"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "season"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    .line 341
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getRuntime()I

    move-result p1

    invoke-static {p1, p0}, Lo/aeD;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getEpisodes()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " episodes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 336
    :cond_5
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSeasonsLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/netflix/model/leafs/PostPlayItem;)Z
    .locals 1

    .line 208
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nextEpisode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private c(Lcom/netflix/model/leafs/PostPlayItem;)V
    .locals 7

    .line 248
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    .line 249
    iget-object v0, p0, Lo/Uo;->o:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lo/Uo;->g:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lo/Uo;->i:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lo/Uo;->n:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lo/Uo;->j:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lo/Uo;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isNewForPvr()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getMatchPercentage()I

    move-result v0

    if-lez v0, :cond_2

    .line 259
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isNewForPvr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lo/Uo;->o:Landroid/widget/TextView;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pz:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lo/Uo;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/Uo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->pB:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getMatchPercentage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lo/Uo;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :cond_2
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lo/Uo;->g:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getYear()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lo/Uo;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 271
    :cond_3
    iget-object v0, p0, Lo/Uo;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    :goto_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getMaturityRating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lo/Uo;->i:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getMaturityRating()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lo/Uo;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 278
    :cond_4
    iget-object v0, p0, Lo/Uo;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_2
    invoke-virtual {p0}, Lo/Uo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/Uo;->b(Landroid/content/Context;Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 283
    iget-object v0, p0, Lo/Uo;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lo/Uo;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 286
    :cond_5
    iget-object p1, p0, Lo/Uo;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 289
    :cond_6
    iget-object p1, p0, Lo/Uo;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private c(Z)V
    .locals 4

    .line 213
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {p0, v0}, Lo/Uo;->a(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-direct {p0, v1}, Lo/Uo;->e(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-direct {p0}, Lo/Uo;->n()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 217
    iget-object p1, p0, Lo/Uo;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lo/Uo;->m:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 220
    :cond_1
    iget-object p1, p0, Lo/Uo;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 221
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p1, p0, Lo/Uo;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object p1, p0, Lo/Uo;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 225
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    :cond_3
    :goto_1
    iget-object p1, p0, Lo/Uo;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    .line 230
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lo/Uo;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 233
    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_5
    :goto_2
    iget-object p1, p0, Lo/Uo;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 238
    iget-object p1, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->hasNewBadge()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 239
    iget-object p1, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getBadgeKeys()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lo/Uo;->h:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->c(Ljava/util/List;Landroid/widget/TextView;)V

    .line 240
    iget-object p1, p0, Lo/Uo;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 242
    :cond_6
    iget-object p1, p0, Lo/Uo;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private e(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;
    .locals 2

    .line 324
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recommendations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getSupplementalMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private e(Z)V
    .locals 13

    .line 181
    iget-object v0, p0, Lo/Uo;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lo/Uo;->b(Lcom/netflix/model/leafs/PostPlayItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/Uo;->t:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->d:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 183
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    .line 185
    iget-object v4, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v4}, Lcom/netflix/model/leafs/PostPlayItem;->getActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/netflix/model/leafs/PostPlayAction;

    if-eqz v8, :cond_2

    .line 187
    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 197
    :cond_1
    iget-object v4, p0, Lo/Uo;->k:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 198
    invoke-direct {p0, v8, v3, p1}, Lo/Uo;->a(Lcom/netflix/model/leafs/PostPlayAction;IZ)I

    move-result v5

    .line 199
    iget-object v6, p0, Lo/Uo;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 200
    iget-object v4, p0, Lo/Uo;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    new-instance v4, Lo/Uh;

    iget-object v6, p0, Lo/Uo;->k:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v7, p0, Lo/Uo;->p:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    iget-object v9, p0, Lo/Uo;->t:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    iget-object v11, p0, Lo/Uo;->e:Lo/Uq;

    iget-object v12, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lo/Uh;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/model/leafs/PostPlayAction;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Landroid/view/View;Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;)V

    .line 202
    iget-object v5, p0, Lo/Uo;->r:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    :goto_2
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v8, :cond_3

    .line 190
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    iget-object v7, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v7}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v5, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Post Play: Skipping Rendering CTA since action is NULL, for ID: %d , item type: %s, postplay experience type : %s "

    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 192
    :cond_3
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayAction;->getType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-interface {v8}, Lcom/netflix/model/leafs/PostPlayAction;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayItem;->getVideoId()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    iget-object v5, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v5}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    const-string v4, "Post Play: Skipping Rendering CTA since action type is: %s, action name: %s for ID: %d , item type: %s, postplay experience type : %s "

    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    :goto_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5, v4}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "episodicTeaser"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextEpisode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorSynopsis()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorSynopsis()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_2
    iget-object v0, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayItem;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private n()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lo/Uo;->e:Lo/Uq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Uq;->d()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lo/Uo;->e:Lo/Uq;

    invoke-virtual {v0}, Lo/Uq;->d()Lcom/netflix/mediaclient/ui/player/PostPlayExtras;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayExtras;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a(Lcom/netflix/model/leafs/PostPlayItem;)Ljava/lang/String;
    .locals 8

    .line 295
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getPlayAction()Lcom/netflix/model/leafs/PostPlayAction;

    move-result-object v0

    .line 296
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->isEpisodeNumberHidden()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lo/Uo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jh:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 299
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 300
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 297
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "nextEpisode"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "episode"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lo/Uo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->iZ:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 306
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 307
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getSeasonSequenceAbbr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 308
    invoke-interface {v0}, Lcom/netflix/model/leafs/PostPlayAction;->getEpisode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    const/4 v0, 0x3

    .line 309
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 304
    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAncestorTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 316
    invoke-interface {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 100
    iget-object v0, p0, Lo/Uo;->a:Lo/Ue;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lo/Ue;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 113
    :goto_0
    iget-object v1, p0, Lo/Uo;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v1, p0, Lo/Uo;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Uh;

    .line 115
    invoke-virtual {v1}, Lo/Uh;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lo/Uq;Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lo/Uo;->e:Lo/Uq;

    .line 128
    iput-object p2, p0, Lo/Uo;->l:Lcom/netflix/model/leafs/PostPlayItem;

    .line 129
    iput-object p3, p0, Lo/Uo;->k:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 130
    iput-object p4, p0, Lo/Uo;->p:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    .line 131
    iput-object p5, p0, Lo/Uo;->t:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const/4 p1, 0x0

    .line 134
    invoke-direct {p0, p1}, Lo/Uo;->e(Z)V

    .line 136
    iget-object p4, p0, Lo/Uo;->b:Landroid/widget/TextView;

    if-eqz p4, :cond_1

    .line 137
    invoke-direct {p0}, Lo/Uo;->m()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 138
    invoke-direct {p0}, Lo/Uo;->n()Z

    move-result p5

    if-nez p5, :cond_0

    .line 139
    iget-object p5, p0, Lo/Uo;->b:Landroid/widget/TextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p4, p0, Lo/Uo;->b:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p4, p0, Lo/Uo;->b:Landroid/widget/TextView;

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getExperienceType()Ljava/lang/String;

    move-result-object p4

    const-string p5, "nextEpisode"

    invoke-static {p4, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    .line 148
    iget-object p5, p0, Lo/Uo;->a:Lo/Ue;

    if-eqz p5, :cond_2

    .line 149
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->isAutoPlay()Z

    move-result p5

    if-eqz p5, :cond_2

    if-eqz p4, :cond_2

    .line 150
    new-instance p4, Lo/aeC$TaskDescription;

    invoke-direct {p4, p3}, Lo/aeC$TaskDescription;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-interface {p2}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlaySeconds()I

    move-result p3

    invoke-virtual {p4, p3}, Lo/aeC$TaskDescription;->a(I)V

    .line 152
    iget-object p3, p0, Lo/Uo;->a:Lo/Ue;

    invoke-virtual {p3, p2, p4}, Lo/Ue;->d(Lcom/netflix/model/leafs/PostPlayItem;Lo/aeC$TaskDescription;)V

    .line 153
    iget-object p3, p0, Lo/Uo;->a:Lo/Ue;

    invoke-virtual {p3, p1}, Lo/Ue;->setVisibility(I)V

    .line 157
    :cond_2
    iget-object p3, p0, Lo/Uo;->c:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_3

    .line 158
    invoke-direct {p0, p1}, Lo/Uo;->c(Z)V

    .line 161
    :cond_3
    iget-object p1, p0, Lo/Uo;->j:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 162
    invoke-direct {p0, p2}, Lo/Uo;->c(Lcom/netflix/model/leafs/PostPlayItem;)V

    :cond_4
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Uh;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lo/Uo;->r:Ljava/util/List;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 106
    iget-object v0, p0, Lo/Uo;->a:Lo/Ue;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lo/Ue;->d()V

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 85
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ns:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Ue;

    iput-object v0, p0, Lo/Uo;->a:Lo/Ue;

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nI:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/Uo;->c:Landroid/widget/LinearLayout;

    .line 87
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nv:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->h:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nH:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->f:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nG:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/Uo;->j:Landroid/widget/LinearLayout;

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ve:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->o:Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nN:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->g:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nE:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->i:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nn:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->n:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nK:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->b:Landroid/widget/TextView;

    .line 95
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nm:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lo/Uo;->d:Landroid/widget/LinearLayout;

    .line 96
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nA:I

    invoke-virtual {p0, v0}, Lo/Uo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/Uo;->m:Landroid/widget/TextView;

    return-void
.end method

.method protected f()V
    .locals 2

    .line 379
    iget-object v0, p0, Lo/Uo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Uh;

    .line 380
    invoke-virtual {v1}, Lo/Uh;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 3

    const/4 v0, 0x1

    .line 364
    invoke-direct {p0, v0}, Lo/Uo;->c(Z)V

    .line 365
    invoke-direct {p0}, Lo/Uo;->m()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lo/Uo;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lo/Uo;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 371
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lo/Uo;->e(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 352
    iget-object v0, p0, Lo/Uo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Uh;

    .line 353
    invoke-virtual {v1}, Lo/Uh;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lo/Uo;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Uh;

    const/4 v2, 0x0

    .line 122
    invoke-virtual {v1, v2}, Lo/Uh;->b(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 2

    .line 358
    iget-object v0, p0, Lo/Uo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Uh;

    .line 359
    invoke-virtual {v1}, Lo/Uh;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 347
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 348
    invoke-virtual {p0}, Lo/Uo;->e()V

    return-void
.end method
