.class final Lo/Vu$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vu;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Vu;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;


# direct methods
.method constructor <init>(Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;Lo/Vu;)V
    .locals 0

    iput-object p1, p0, Lo/Vu$Activity;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;

    iput-object p2, p0, Lo/Vu$Activity;->d:Lo/Vu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9

    .line 50
    iget-object p1, p0, Lo/Vu$Activity;->d:Lo/Vu;

    .line 51
    new-instance v8, Lo/UW$Application;

    .line 54
    iget-object v0, p0, Lo/Vu$Activity;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;->id()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lo/Vu$Activity;->e:Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/interactive/InteractiveDebugMenuItem;->startTimeMs()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "segmentId.startTimeMs()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    .line 51
    invoke-direct/range {v0 .. v7}, Lo/UW$Application;-><init>(Lcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/model/leafs/originals/interactive/ImpressionData;IZ)V

    .line 50
    invoke-virtual {p1, v8}, Lo/Vu;->e(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
