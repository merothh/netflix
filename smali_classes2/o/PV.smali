.class public final Lo/PV;
.super Lo/PS;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PV$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/PV$Activity;


# instance fields
.field private final c:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PV$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PV$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/PV;->e:Lo/PV$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    const-string v0, "contentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Lo/PS;-><init>(Landroid/view/ViewGroup;Z)V

    iput-object p1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playableId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 324
    :cond_1
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_btn"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_3

    .line 325
    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lo/PV;->e:Lo/PV$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 29
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 32
    iget-object v1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 36
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 35
    :goto_0
    invoke-virtual {v0, v3, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    :cond_3
    if-eqz v1, :cond_5

    .line 44
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->i:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    .line 43
    :goto_1
    invoke-virtual {v1, v3, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 50
    :cond_5
    iget-object v3, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lo/RL;->c(Landroid/content/Context;Z)V

    .line 52
    invoke-virtual {p0, v2, v2}, Lo/PV;->d(ZZ)V

    .line 54
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 55
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->a()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v0, :cond_6

    .line 58
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_a

    .line 59
    sget-object p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->g:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_3

    .line 62
    :cond_7
    invoke-virtual {p0}, Lo/PV;->e()V

    if-eqz v0, :cond_9

    .line 64
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v2, :cond_8

    .line 66
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a()V

    goto :goto_2

    .line 67
    :cond_8
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->aX:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_9

    .line 68
    iget-object p1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/PY;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 73
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object p2, Lcom/netflix/mediaclient/StatusCode;->aZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, p2, :cond_a

    .line 75
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->a()V

    :cond_a
    :goto_3
    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 241
    sget-object v0, Lo/PS;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_1

    .line 245
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 246
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    .line 250
    :cond_1
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v0, :cond_0

    .line 251
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 252
    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 255
    invoke-virtual {p0, p1, p2}, Lo/PV;->d(ZZ)V

    :cond_3
    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 5

    if-eqz p1, :cond_4

    .line 88
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 92
    iget-object v1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 94
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableProgress$$inlined$let$lambda$1;-><init>(Lo/PV;Lo/Bi;I)V

    check-cast v2, Lo/alA;

    if-eqz v0, :cond_2

    .line 109
    invoke-interface {v2, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 113
    invoke-interface {v2, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 116
    invoke-virtual {p0, p1, p2}, Lo/PV;->d(ZZ)V

    :cond_4
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 260
    sget-object p1, Lo/PS;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    iget-object p1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->c(Landroid/content/Context;)V

    .line 263
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    const-string v1, "DownloadButton_Ab18255"

    .line 266
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 264
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    const-string v3, "download_btn"

    .line 272
    check-cast v3, Ljava/lang/CharSequence;

    .line 270
    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 276
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->j()V

    .line 278
    check-cast p1, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lo/akz;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 279
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->e:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, p1, v0}, Lo/PV;->d(ZZ)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 4

    if-eqz p1, :cond_4

    .line 206
    iget-object p2, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadButton_Ab18255"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    check-cast p2, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 210
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_btn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 212
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onOfflinePlayableDeleted$$inlined$let$lambda$1;-><init>(Lo/PV;ZLjava/lang/String;)V

    check-cast v1, Lo/alA;

    if-eqz p2, :cond_2

    .line 225
    invoke-interface {v1, p2}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v0, :cond_3

    .line 229
    invoke-interface {v1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez p3, :cond_4

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 233
    invoke-virtual {p0, p1, p2}, Lo/PV;->d(ZZ)V

    :cond_4
    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 5

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 162
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 166
    iget-object v1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 168
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadStopped$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadStopped$$inlined$let$lambda$1;-><init>(Lo/PV;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    check-cast v2, Lo/alA;

    if-eqz v0, :cond_2

    .line 183
    invoke-interface {v2, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 187
    invoke-interface {v2, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_3
    iget-object p1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/RL;->c(Landroid/content/Context;Z)V

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p1, p1}, Lo/PV;->d(ZZ)V

    .line 193
    iget-object p1, p0, Lo/PV;->d:Lo/QS;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/QS;->l()V

    .line 194
    :cond_4
    iget-object p1, p0, Lo/PV;->d:Lo/QS;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/QS;->g()V

    :cond_5
    return-void
.end method

.method protected e(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 293
    iget-object v1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 295
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;

    invoke-direct {v2, p2, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$handlePlayRightsRenewDone$action$1;-><init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    check-cast v2, Lo/alA;

    if-eqz v0, :cond_2

    .line 308
    invoke-interface {v2, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 312
    invoke-interface {v2, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 124
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadButton_Ab18255"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 128
    iget-object v1, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-nez v3, :cond_1

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 130
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener_Ab18255$onDownloadCompleted$$inlined$let$lambda$1;-><init>(Lo/PV;Lo/Bi;)V

    check-cast v2, Lo/alA;

    if-eqz v0, :cond_2

    .line 137
    invoke-interface {v2, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v1, :cond_3

    .line 141
    invoke-interface {v2, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_3
    iget-object v0, p0, Lo/PV;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/RL;->c(Landroid/content/Context;Z)V

    .line 147
    invoke-interface {p1}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 151
    invoke-virtual {p0, p1, v1}, Lo/PV;->d(ZZ)V

    :cond_5
    return-void
.end method
