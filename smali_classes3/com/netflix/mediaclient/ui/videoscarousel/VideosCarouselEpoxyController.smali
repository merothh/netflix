.class public final Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

.field private static final HEIGHT_VISIBILITY_THRESHOLD:F = 75.0f

.field private static final ITEM_NO_FOCUS:I = -0x1

.field private static final WIDTH_VISIBILITY_THRESHOLD:F = 99.99f


# instance fields
.field private final eventBusFactory:Lo/UpdateEngine;

.field private focusedItem:I

.field private final playablesFeedViewModel:Lo/UE;

.field private final playbableViewModelsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Nh;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceManager:Lo/Am;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/UE;Ljava/util/List;Lo/UpdateEngine;Lo/Am;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UE;",
            "Ljava/util/List<",
            "Lo/Nh;",
            ">;",
            "Lo/UpdateEngine;",
            "Lo/Am;",
            ")V"
        }
    .end annotation

    const-string v0, "playablesFeedViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playbableViewModelsList"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lo/OfPrimitive;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playablesFeedViewModel:Lo/UE;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playbableViewModelsList:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->eventBusFactory:Lo/UpdateEngine;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->serviceManager:Lo/Am;

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->focusedItem:I

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->setDebugLoggingEnabled(Z)V

    const/4 p2, 0x1

    .line 54
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->setFilterDuplicates(Z)V

    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->executePlayerPrepareForItem(I)V

    return-void
.end method

.method public static final synthetic access$emitFocusLostEvent(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->emitFocusLostEvent()V

    return-void
.end method

.method public static final synthetic access$executePlayerPrepareForItem(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->executePlayerPrepareForItem(I)V

    return-void
.end method

.method public static final synthetic access$getFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->focusedItem:I

    return p0
.end method

.method public static final synthetic access$setFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->focusedItem:I

    return-void
.end method

.method private final emitFocusLostEvent()V
    .locals 4

    .line 119
    sget-object v0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->focusedItem:I

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->eventBusFactory:Lo/UpdateEngine;

    .line 122
    new-instance v1, Lo/Nj$Activity;

    .line 123
    iget v2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->focusedItem:I

    const/4 v3, 0x0

    .line 122
    invoke-direct {v1, v2, v3}, Lo/Nj$Activity;-><init>(IZ)V

    check-cast v1, Lo/VintfObject;

    .line 166
    const-class v2, Lo/Nj;

    invoke-virtual {v0, v2, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method private final executePlayerPrepareForItem(I)V
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playbableViewModelsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->serviceManager:Lo/Am;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    sget-object v1, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 135
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playbableViewModelsList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Nh;

    .line 136
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lo/Ae;

    .line 137
    invoke-virtual {v2}, Lo/Nh;->k()Ljava/lang/String;

    move-result-object v2

    .line 139
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    const-wide/16 v6, 0x0

    .line 136
    invoke-direct {v4, v2, v6, v7, v5}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    .line 143
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playbableViewModelsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playbableViewModelsList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Nh;

    .line 145
    new-instance v2, Lo/Ae;

    .line 146
    invoke-virtual {p1}, Lo/Nh;->k()Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 145
    invoke-direct {v2, p1, v6, v7, v4}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    invoke-virtual {v0}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->i:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-interface {p1, v2}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->d(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    .line 152
    :cond_1
    invoke-virtual {v0}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public buildModels()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playbableViewModelsList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 159
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Nh;

    .line 61
    new-instance v2, Lo/Nk;

    invoke-direct {v2}, Lo/Nk;-><init>()V

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/Nh;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lo/Nk;->e(Ljava/lang/CharSequence;)Lo/Nk;

    .line 63
    invoke-virtual {v1}, Lo/Nh;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/Nk;->a(Ljava/lang/String;)Lo/Nk;

    .line 64
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->playablesFeedViewModel:Lo/UE;

    invoke-virtual {v2, v3}, Lo/Nk;->d(Lo/UE;)Lo/Nk;

    .line 65
    invoke-virtual {v2, v1}, Lo/Nk;->a(Lo/Nh;)V

    .line 67
    new-instance v3, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;

    invoke-direct {v3, v2, v1, p0}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;-><init>(Lo/Nk;Lo/Nh;Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V

    check-cast v3, Lo/EncryptedPrivateKeyInfo;

    invoke-virtual {v2, v3}, Lo/Nk;->a(Lo/EncryptedPrivateKeyInfo;)Lo/Nk;

    .line 92
    new-instance v3, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;

    invoke-direct {v3, v1, p0}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;-><init>(Lo/Nh;Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V

    check-cast v3, Lo/CipherSpi;

    invoke-virtual {v2, v3}, Lo/Nk;->d(Lo/CipherSpi;)Lo/Nk;

    .line 112
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->eventBusFactory:Lo/UpdateEngine;

    invoke-virtual {v2, v1}, Lo/Nk;->d(Lo/UpdateEngine;)V

    .line 61
    check-cast v2, Lo/BiConsumer;

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->add(Lo/BiConsumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
