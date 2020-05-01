.class Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/PostPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 1

    .line 921
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const-string v0, "nf_postplay"

    .line 922
    invoke-direct {p0, v0}, Lo/zP;-><init>(Ljava/lang/String;)V

    .line 923
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->b:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v0, p1, Lcom/netflix/mediaclient/ui/player/PostPlay;->u:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    return-void
.end method


# virtual methods
.method public e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 928
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/AW;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 936
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;->e:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->u:Lcom/netflix/mediaclient/ui/player/PostPlay$PostPlayDataFetchStatus;

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/PostPlay;->j:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    monitor-enter v0

    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/player/PostPlay;->v:Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;

    if-eq v1, p0, :cond_1

    const-string p1, "nf_postplay"

    const-string p2, "Not current callback"

    .line 944
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    monitor-exit v0

    return-void

    .line 947
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lo/AW;->A()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 959
    :cond_2
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    invoke-interface {p1}, Lo/AW;->A()Lcom/netflix/model/leafs/PostPlayExperience;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/player/PostPlay;->b(Lcom/netflix/model/leafs/PostPlayExperience;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "nf_postplay"

    const-string p2, "Error loading post play data"

    .line 950
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$TaskDescription;->c:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/netflix/mediaclient/ui/player/PostPlay;->y:Z

    .line 952
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->Q()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    const-string p2, "[DEBUG] loading post play data failed"

    .line 953
    invoke-static {p2, p1}, Lo/adk;->a(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 947
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
