.class public final Lo/Ra$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ra;->J()Lcom/netflix/mediaclient/ui/offline/DownloadedEpisodesController_Ab11466$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Ra;


# direct methods
.method constructor <init>(Lo/Ra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lo/Ra$Application;->a:Lo/Ra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 117
    iget-object v0, p0, Lo/Ra$Application;->a:Lo/Ra;

    invoke-static {v0}, Lo/Ra;->b(Lo/Ra;)Lo/Ba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lo/Ra$Application;->a:Lo/Ra;

    invoke-static {v1, v0}, Lo/Ra;->c(Lo/Ra;Lo/Ba;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 3

    .line 110
    iget-object v0, p0, Lo/Ra$Application;->a:Lo/Ra;

    invoke-static {v0}, Lo/Ra;->b(Lo/Ra;)Lo/Ba;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lo/Ra$Application;->a:Lo/Ra;

    invoke-static {v2}, Lo/Ra;->i(Lo/Ra;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Lo/Ba;->as()I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
