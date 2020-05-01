.class final Lo/YY$StateListAnimator;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/YY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic b:Lo/YY;


# direct methods
.method public constructor <init>(Lo/YY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 917
    iput-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    sget-object v0, Lo/YY;->i:Lo/YY$Application;

    check-cast v0, Lo/MessagePdu;

    .line 921
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 924
    iget-object p2, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p2}, Lo/YY;->b(Lo/YY;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    iget-object v0, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {v0}, Lo/YY;->e(Lo/YY;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    invoke-static {p2, v0}, Lo/akz;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 944
    :cond_0
    iget-object p2, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    const/4 v0, 0x0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-static {p2, v0}, Lo/YY;->c(Lo/YY;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)V

    .line 948
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 949
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->isInDefaultSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    iget-object p2, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p2, v0}, Lo/YY;->c(Lo/YY;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)V

    .line 955
    :cond_2
    iget-object p2, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p2}, Lo/YY;->d(Lo/YY;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    if-nez p2, :cond_3

    .line 957
    iget-object p2, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-static {p2, p1}, Lo/YY;->c(Lo/YY;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)V

    .line 960
    :cond_3
    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p1}, Lo/YY;->d(Lo/YY;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lo/YY;->d(Lo/YY;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)V

    .line 962
    :cond_4
    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p1}, Lo/YY;->a(Lo/YY;)V

    goto :goto_0

    .line 964
    :cond_5
    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-virtual {p1}, Lo/YY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)Ljava/lang/String;

    .line 966
    :cond_6
    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p1}, Lo/YY;->c(Lo/YY;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p1}, Lo/YY;->g(Lo/YY;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 967
    sget-object v0, Lo/YV;->b:Lo/YV;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/DeleteProfile;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/event/session/action/DeleteProfile;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {v0, v1, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 969
    :cond_7
    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p1}, Lo/YY;->g(Lo/YY;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/AddProfile;

    iget-object v1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {v1}, Lo/YY;->j(Lo/YY;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v0, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {p1, v0, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 970
    :cond_8
    iget-object p1, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {p1}, Lo/YY;->g(Lo/YY;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 971
    sget-object v0, Lo/YV;->b:Lo/YV;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/EditProfile;

    iget-object v2, p0, Lo/YY$StateListAnimator;->b:Lo/YY;

    invoke-static {v2}, Lo/YY;->j(Lo/YY;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/action/Action;

    invoke-virtual {v0, v1, p2}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_9
    :goto_0
    return-void
.end method
