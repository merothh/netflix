.class final Lo/LN$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LN;->e(Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/agg;

.field final synthetic c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic e:Lo/LN;


# direct methods
.method constructor <init>(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    iput-object p1, p0, Lo/LN$Activity;->e:Lo/LN;

    iput-object p2, p0, Lo/LN$Activity;->b:Lo/agg;

    iput-object p3, p0, Lo/LN$Activity;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p4, p0, Lo/LN$Activity;->a:Ljava/lang/String;

    iput-object p5, p0, Lo/LN$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/LN$Activity;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 6

    .line 167
    iget-object v0, p0, Lo/LN$Activity;->e:Lo/LN;

    iget-object v1, p0, Lo/LN$Activity;->b:Lo/agg;

    iget-object v2, p0, Lo/LN$Activity;->c:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v3, p0, Lo/LN$Activity;->a:Ljava/lang/String;

    iget-object v4, p0, Lo/LN$Activity;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lo/LN;->c(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/agg;)V

    return-void
.end method
