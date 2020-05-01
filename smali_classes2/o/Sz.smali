.class public final Lo/Sz;
.super Lo/Qk;
.source ""


# instance fields
.field private final a:Lo/Bb;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;Ljava/util/List;Lo/Bb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;",
            "Ljava/util/List<",
            "+",
            "Lo/AS;",
            ">;",
            "Lo/Bb;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lo/Qk;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;)V

    iput-object p1, p0, Lo/Sz;->e:Lcom/netflix/mediaclient/ui/offline/OfflineAdapterData;

    iput-object p2, p0, Lo/Sz;->c:Ljava/util/List;

    iput-object p3, p0, Lo/Sz;->a:Lo/Bb;

    return-void
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lo/Sz;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lo/Bb;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/Sz;->a:Lo/Bb;

    return-object v0
.end method
