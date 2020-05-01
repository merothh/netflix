.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->d(Lo/zG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/zG;

.field final synthetic c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;Lo/zG;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/zG;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->a:Lo/zG;

    invoke-direct {p0, p3}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 83
    invoke-super {p0, p1, p2}, Lo/zP;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p2, :cond_1

    .line 84
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPY-16203 - MdxRepository - episodeDetails.showId is null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->a:Lo/MR;

    invoke-static {p1}, Lo/MR;->c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    new-instance v0, Lo/MK$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->b:Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while fetching show for episode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", episodeDetails.showId is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-direct {v0, v1, p2, v2}, Lo/MK$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->a:Lo/zG;

    invoke-interface {p1}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;

    sget-object v3, Lo/MR;->c:Lo/MR$ActionBar;

    invoke-virtual {v3}, Lo/MR$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;-><init>(Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;Lo/AS;Ljava/lang/String;)V

    check-cast v2, Lo/zU;

    invoke-interface {p2, v0, v1, v2}, Lo/zG;->c(Ljava/lang/String;Ljava/lang/String;Lo/zU;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->a:Lo/MR;

    invoke-static {p1}, Lo/MR;->c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    new-instance v0, Lo/MK$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->b:Ljava/lang/String;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while fetching episode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-direct {v0, v1, p2, v2}, Lo/MK$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
