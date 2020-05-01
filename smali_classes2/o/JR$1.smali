.class Lo/JR$1;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JR;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic c:Lo/JR;

.field final synthetic d:Lo/Am;


# direct methods
.method constructor <init>(Lo/JR;Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lo/JR$1;->c:Lo/JR;

    iput-object p3, p0, Lo/JR$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lo/JR$1;->d:Lo/Am;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 121
    invoke-super {p0, p1, p2}, Lo/zP;->b(Lo/AX;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 122
    iget-object p2, p0, Lo/JR$1;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Lo/AX;->bb()Lo/AK;

    move-result-object p2

    invoke-interface {p2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-static {p2}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "big row detais.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/AX;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "SPY-17761 - big row invalid playable id"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lo/JR$1;->d:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->h()Lcom/netflix/mediaclient/servicemgr/PrepareManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    new-instance v0, Lo/Ae;

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->n:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-direct {v0, p2, v1, v2, v3}, Lo/Ae;-><init>(Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/servicemgr/PrepareManager;->e(Ljava/util/List;)V

    :cond_1
    return-void
.end method
