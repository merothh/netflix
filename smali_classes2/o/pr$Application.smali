.class final Lo/pr$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/pr;->d(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)V
    .locals 0

    iput-object p1, p0, Lo/pr$Application;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 60
    :try_start_0
    sget-object v0, Lo/pr;->d:Lo/pr;

    invoke-static {v0}, Lo/pr;->d(Lo/pr;)V

    .line 61
    sget-object v0, Lo/pr;->d:Lo/pr;

    invoke-static {v0}, Lo/pr;->a(Lo/pr;)Lcom/netflix/mediaclient/storage/db/AppHistoryDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;->a()Lo/BX;

    move-result-object v0

    sget-object v1, Lo/pr;->d:Lo/pr;

    iget-object v2, p0, Lo/pr$Application;->d:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;

    invoke-static {v1, v2}, Lo/pr;->c(Lo/pr;Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;)Lo/Ch;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/BX;->b(Lo/Ch;)V

    .line 62
    sget-object v0, Lo/pr;->d:Lo/pr;

    invoke-static {v0}, Lo/pr;->e(Lo/pr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
