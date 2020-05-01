.class final Lo/Fb$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fb;-><init>(Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Fb;

.field final synthetic b:Lo/ListView;

.field final synthetic c:Lo/Bc;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method constructor <init>(Lo/Fb;Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    iput-object p1, p0, Lo/Fb$3;->a:Lo/Fb;

    iput-object p2, p0, Lo/Fb$3;->b:Lo/ListView;

    iput-object p3, p0, Lo/Fb$3;->c:Lo/Bc;

    iput-object p4, p0, Lo/Fb$3;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 34
    iget-object p1, p0, Lo/Fb$3;->a:Lo/Fb;

    new-instance v0, Lo/DG$PictureInPictureParams;

    iget-object v1, p0, Lo/Fb$3;->b:Lo/ListView;

    iget-object v2, p0, Lo/Fb$3;->c:Lo/Bc;

    iget-object v3, p0, Lo/Fb$3;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {v0, v1, v2, v3}, Lo/DG$PictureInPictureParams;-><init>(Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    invoke-virtual {p1, v0}, Lo/Fb;->e(Ljava/lang/Object;)V

    return-void
.end method
