.class abstract Lo/Session;
.super Lo/VoicemailContract;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final e:Lo/SearchIndexablesContract;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/FontRequest;Lo/SearchIndexablesContract;Lo/ci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/FontRequest<",
            "*>;",
            "Lo/SearchIndexablesContract;",
            "Lo/ci;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2, p4}, Lo/VoicemailContract;-><init>(Ljava/lang/String;Lo/FontRequest;Lo/ci;)V

    .line 33
    iput-object p3, p0, Lo/Session;->e:Lo/SearchIndexablesContract;

    return-void
.end method


# virtual methods
.method b(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lo/Session;->p()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-virtual {p0}, Lo/Session;->w()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;Ljava/lang/String;)V

    return-void
.end method

.method protected p()Lcom/netflix/mediaclient/media/BookmarkStore;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/Session;->e:Lo/SearchIndexablesContract;

    invoke-interface {v0}, Lo/SearchIndexablesContract;->e()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    return-object v0
.end method

.method w()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/Session;->e:Lo/SearchIndexablesContract;

    invoke-interface {v0}, Lo/SearchIndexablesContract;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()Lo/hW;
    .locals 1

    .line 43
    iget-object v0, p0, Lo/Session;->e:Lo/SearchIndexablesContract;

    invoke-interface {v0}, Lo/SearchIndexablesContract;->d()Lo/hW;

    move-result-object v0

    return-object v0
.end method
