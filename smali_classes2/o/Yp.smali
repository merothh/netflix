.class public final Lo/Yp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;


# instance fields
.field private final c:Lo/Aq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lo/Aq;

    const-string v1, "previews"

    invoke-direct {v0, v1}, Lo/Aq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/Yp;->c:Lo/Aq;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lo/Aq;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/Yp;->c:Lo/Aq;

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;
    .locals 1

    .line 23
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;->e:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
