.class Lo/acf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final c:Lo/acc;

.field private final e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;


# direct methods
.method public constructor <init>(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acf;->c:Lo/acc;

    iput-object p2, p0, Lo/acf;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/acf;->c:Lo/acc;

    iget-object v1, p0, Lo/acf;->e:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-static {v0, v1, p1}, Lo/acc;->e(Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Landroid/view/View;)V

    return-void
.end method
