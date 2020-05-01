.class public Lo/LocalSocketAddress;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final c:Ljava/util/function/IntFunction;

.field private final d:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LocalSocketAddress;->d:Ljava/util/function/Consumer;

    iput-object p2, p0, Lo/LocalSocketAddress;->c:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Lo/LocalSocketAddress;->d:Ljava/util/function/Consumer;

    iget-object v1, p0, Lo/LocalSocketAddress;->c:Ljava/util/function/IntFunction;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;->c(Ljava/util/function/Consumer;Ljava/util/function/IntFunction;I)V

    return-void
.end method
