.class Lo/Ld$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ld;->b(Lo/Ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/BillboardPhase;

.field final synthetic b:Lcom/netflix/model/leafs/originals/BillboardSummary;

.field final synthetic e:Lo/Ld;


# direct methods
.method constructor <init>(Lo/Ld;Lcom/netflix/model/leafs/originals/BillboardPhase;Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lo/Ld$2;->e:Lo/Ld;

    iput-object p2, p0, Lo/Ld$2;->a:Lcom/netflix/model/leafs/originals/BillboardPhase;

    iput-object p3, p0, Lo/Ld$2;->b:Lcom/netflix/model/leafs/originals/BillboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 465
    iget-object v0, p0, Lo/Ld$2;->e:Lo/Ld;

    iget-object v1, p0, Lo/Ld$2;->a:Lcom/netflix/model/leafs/originals/BillboardPhase;

    iget-object v2, p0, Lo/Ld$2;->b:Lcom/netflix/model/leafs/originals/BillboardSummary;

    invoke-static {v0, v1, v2}, Lo/Ld;->d(Lo/Ld;Lcom/netflix/model/leafs/originals/BillboardPhase;Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    return-void
.end method
