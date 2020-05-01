.class Lo/ach;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field private final b:Lo/acc;


# direct methods
.method public constructor <init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ach;->b:Lo/acc;

    iput-object p2, p0, Lo/ach;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/ach;->b:Lo/acc;

    iget-object v1, p0, Lo/ach;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-static {v0, v1, p1}, Lo/acc;->b(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method
