.class public Lo/Lj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final c:Lcom/netflix/model/leafs/originals/BillboardCTA;

.field private final e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/model/leafs/originals/BillboardCTA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lj;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-object p2, p0, Lo/Lj;->c:Lcom/netflix/model/leafs/originals/BillboardCTA;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/Lj;->e:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iget-object v1, p0, Lo/Lj;->c:Lcom/netflix/model/leafs/originals/BillboardCTA;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->b(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/view/View;)V

    return-void
.end method
