.class public Lo/xx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/netflix/mediaclient/media/PreferredLanguageData;

.field public final e:Z


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lo/xx;->c:Z

    .line 34
    iput-boolean p2, p0, Lo/xx;->e:Z

    .line 35
    iput-boolean p3, p0, Lo/xx;->b:Z

    .line 36
    iput-object p4, p0, Lo/xx;->a:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lo/xx;->d:Lcom/netflix/mediaclient/media/PreferredLanguageData;

    return-void
.end method

.method public static d(Lo/Ae;)Lo/xx;
    .locals 7

    .line 41
    new-instance v6, Lo/xx;

    iget-boolean v1, p0, Lo/Ae;->b:Z

    iget-object v0, p0, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 42
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->g()Z

    move-result v2

    iget-object p0, p0, Lo/Ae;->c:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->h()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/xx;-><init>(ZZZLjava/lang/String;Lcom/netflix/mediaclient/media/PreferredLanguageData;)V

    return-object v6
.end method
