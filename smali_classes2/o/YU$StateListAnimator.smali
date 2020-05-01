.class Lo/YU$StateListAnimator;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic d:Lo/YU;


# direct methods
.method private constructor <init>(Lo/YU;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/YU;Lo/YU$5;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lo/YU$StateListAnimator;-><init>(Lo/YU;)V

    return-void
.end method


# virtual methods
.method public n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 469
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 472
    iget-object p2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p2}, Lo/YU;->e(Lo/YU;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p2}, Lo/YU;->j(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 492
    :cond_0
    iget-object p2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lo/YU;->a(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 496
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 497
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->isInDefaultSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    iget-object p2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p2, v0}, Lo/YU;->a(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 503
    :cond_2
    iget-object p2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p2}, Lo/YU;->i(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    if-nez p2, :cond_3

    .line 505
    iget-object p2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-static {p2, p1}, Lo/YU;->a(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 508
    :cond_3
    iget-object p1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p1}, Lo/YU;->i(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lo/YU;->e(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 510
    :cond_4
    iget-object p1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p1}, Lo/YU;->h(Lo/YU;)V

    return-void

    .line 514
    :cond_5
    iget-object p1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-virtual {p1, p2}, Lo/YU;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 516
    iget-object p1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p1}, Lo/YU;->f(Lo/YU;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 517
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    iget-object v1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {v1}, Lo/YU;->n(Lo/YU;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 518
    :cond_6
    iget-object p1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {p1}, Lo/YU;->c(Lo/YU;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 519
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/AddProfile;

    iget-object v1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {v1}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    invoke-virtual {p1, v0, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 521
    :cond_7
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/EditProfile;

    iget-object v1, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {v1}, Lo/YU;->n(Lo/YU;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/YU$StateListAnimator;->d:Lo/YU;

    invoke-static {v2}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    invoke-virtual {p1, v0, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void
.end method
