.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

.field final synthetic b:Lo/AS;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;Lo/AS;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AS;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->b:Lo/AS;

    invoke-direct {p0, p3}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .line 94
    invoke-super {p0, p1, p2}, Lo/zP;->e(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p2, :cond_0

    .line 95
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 96
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->a:Lo/MR;

    invoke-static {p2}, Lo/MR;->c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p2

    new-instance v0, Lo/MK$ActionBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->b:Lo/AS;

    invoke-direct {v0, v1, p1, v2}, Lo/MK$ActionBar;-><init>(Ljava/lang/String;Lo/Bb;Lo/AS;)V

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->a:Lo/MR;

    invoke-static {p1}, Lo/MR;->c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    new-instance v0, Lo/MK$TaskDescription;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->b:Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while fetching show for episode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1$Application;->a:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadEpisode$2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-direct {v0, v1, p2, v2}, Lo/MK$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
