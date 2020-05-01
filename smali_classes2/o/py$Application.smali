.class final Lo/py$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/pq$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/py;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lo/alN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alN<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/alN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/alN<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/py$Application;->b:Ljava/lang/String;

    iput-object p2, p0, Lo/py$Application;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/py$Application;->e:Lo/alN;

    return-void
.end method


# virtual methods
.method public c(JLo/pq$Application;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string p1, "manifest"

    invoke-static {p3, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oxid"

    invoke-static {p4, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p5, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p5}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lo/py;->b:Lo/py$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 30
    iget-object p1, p0, Lo/py$Application;->e:Lo/alN;

    invoke-interface {p1, p4, p4}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lo/py$Application;->b:Ljava/lang/String;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eqz p1, :cond_5

    .line 38
    invoke-interface {p3}, Lo/pq$Application;->b()Lo/sE;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lo/sE;->E()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/sb;

    .line 39
    iget-object v2, p0, Lo/py$Application;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/sb;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p5

    :goto_0
    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_3
    move-object v0, p5

    .line 38
    :goto_1
    move-object p1, v0

    check-cast p1, Lo/sb;

    goto :goto_2

    :cond_4
    move-object p1, p5

    :goto_2
    if-eqz p1, :cond_5

    .line 42
    sget-object p1, Lo/py;->b:Lo/py$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 48
    :goto_3
    iget-object v0, p0, Lo/py$Application;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 49
    invoke-interface {p3}, Lo/pq$Application;->b()Lo/sE;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-interface {p3}, Lo/sE;->K()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_9

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    .line 50
    iget-object v2, p0, Lo/py$Application;->d:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/SubtitleTrackData;->getSubtitleInfo()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, p5

    :goto_4
    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p5, v0

    .line 49
    :cond_8
    check-cast p5, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    :cond_9
    if-eqz p5, :cond_a

    .line 53
    sget-object p2, Lo/py;->b:Lo/py$TaskDescription;

    check-cast p2, Lo/MessagePdu;

    const/4 p2, 0x1

    .line 57
    :cond_a
    iget-object p3, p0, Lo/py$Application;->e:Lo/alN;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
