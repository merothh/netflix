.class Lo/hY$2;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hY;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lo/hY$2;->d:Lo/hY;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/Bb;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 1201
    :cond_0
    invoke-interface {p1}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "FalkorAgent"

    const-string v0, "RefreshSeasonsAndEpisodes response %s"

    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
