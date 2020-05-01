.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->e(Lo/zG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .line 153
    invoke-super {p0, p1, p2}, Lo/zP;->a(Lo/AS;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p2, :cond_0

    .line 154
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 155
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->a:Lo/MR;

    invoke-static {p2}, Lo/MR;->c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p2

    new-instance v0, Lo/MK$StateListAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lo/MK$StateListAnimator;-><init>(Ljava/lang/String;Lo/AS;)V

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_0
    sget-object p1, Lo/MR;->c:Lo/MR$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 158
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->a:Lo/MR;

    invoke-static {p1}, Lo/MR;->c(Lo/MR;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    new-instance v6, Lo/MK$TaskDescription;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;->c:Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;

    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/MK$TaskDescription;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;ILo/amc;)V

    invoke-virtual {p1, v6}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
