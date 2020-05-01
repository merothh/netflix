.class Lo/RJ$3;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RJ;->c(Ljava/util/List;Lo/nJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/RJ;

.field final synthetic d:Lo/nJ;


# direct methods
.method constructor <init>(Lo/RJ;Lo/nJ;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/RJ$3;->b:Lo/RJ;

    iput-object p2, p0, Lo/RJ$3;->d:Lo/nJ;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 162
    iget-object p2, p0, Lo/RJ$3;->d:Lo/nJ;

    invoke-interface {p2, p1}, Lo/nJ;->a(Ljava/util/Map;)V

    return-void
.end method
