.class Lcom/netflix/msl/msg/MslControl$FragmentManager;
.super Lcom/netflix/msl/msg/MslControl$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentManager"
.end annotation


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ahN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/netflix/msl/msg/MessageContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ahN;",
            ">;",
            "Lcom/netflix/msl/msg/MessageContext;",
            ")V"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p2}, Lcom/netflix/msl/msg/MslControl$TaskDescription;-><init>(Lcom/netflix/msl/msg/MessageContext;)V

    .line 642
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$FragmentManager;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b(Lo/ahM;)V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FragmentManager;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FragmentManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ahN;

    .line 659
    invoke-virtual {v1}, Lo/ahN;->e()Lcom/netflix/msl/MslConstants$CompressionAlgorithm;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/ahM;->b(Lcom/netflix/msl/MslConstants$CompressionAlgorithm;)Z

    .line 660
    invoke-virtual {v1}, Lo/ahN;->c()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/ahM;->write([B)V

    .line 661
    invoke-virtual {v1}, Lo/ahN;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 662
    invoke-virtual {p1}, Lo/ahM;->close()V

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p1}, Lo/ahM;->flush()V

    goto :goto_0

    :cond_2
    return-void

    .line 653
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netflix/msl/msg/MslControl$FragmentManager;->d:Lcom/netflix/msl/msg/MessageContext;

    invoke-interface {v0, p1}, Lcom/netflix/msl/msg/MessageContext;->b(Lo/ahM;)V

    return-void
.end method
