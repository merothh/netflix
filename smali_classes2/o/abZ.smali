.class Lo/abZ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field private final e:Lo/acc;


# direct methods
.method public constructor <init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abZ;->e:Lo/acc;

    iput-object p2, p0, Lo/abZ;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/abZ;->e:Lo/acc;

    iget-object v1, p0, Lo/abZ;->c:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-static {v0, v1, p1}, Lo/acc;->d(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method
