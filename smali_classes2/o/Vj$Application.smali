.class final Lo/Vj$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vj;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Vj;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/Choice;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vj;)V
    .locals 0

    iput-object p1, p0, Lo/Vj$Application;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p2, p0, Lo/Vj$Application;->c:Lo/Vj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 197
    iget-object v0, p0, Lo/Vj$Application;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 199
    iget-object p1, p0, Lo/Vj$Application;->c:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->s()Lo/Xt;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 201
    iget-object p1, p0, Lo/Vj$Application;->c:Lo/Vj;

    invoke-virtual {p1}, Lo/Vj;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v3

    .line 202
    iget-object p1, p0, Lo/Vj$Application;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v4

    const-string p1, "credits.id()"

    invoke-static {v4, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nextSegmentId"

    .line 203
    invoke-static {v5, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 205
    iget-object p1, p0, Lo/Vj$Application;->e:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->startTimeMs()I

    move-result v7

    .line 199
    invoke-interface/range {v1 .. v7}, Lo/Xt;->a(ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;I)V

    :cond_0
    return-void
.end method
