.class final Lo/LN$TaskDescription;
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
        "Lo/agg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/agg;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic e:Lo/LN;


# direct methods
.method constructor <init>(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    iput-object p1, p0, Lo/LN$TaskDescription;->e:Lo/LN;

    iput-object p2, p0, Lo/LN$TaskDescription;->a:Lo/agg;

    iput-object p3, p0, Lo/LN$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iput-object p4, p0, Lo/LN$TaskDescription;->c:Ljava/lang/String;

    iput-object p5, p0, Lo/LN$TaskDescription;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/agg;

    invoke-virtual {p0, p1}, Lo/LN$TaskDescription;->d(Lo/agg;)V

    return-void
.end method

.method public final d(Lo/agg;)V
    .locals 6

    .line 166
    iget-object v0, p0, Lo/LN$TaskDescription;->e:Lo/LN;

    iget-object v1, p0, Lo/LN$TaskDescription;->a:Lo/agg;

    iget-object v2, p0, Lo/LN$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    iget-object v3, p0, Lo/LN$TaskDescription;->c:Ljava/lang/String;

    iget-object v4, p0, Lo/LN$TaskDescription;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lo/LN;->c(Lo/LN;Lo/agg;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/agg;)V

    return-void
.end method
