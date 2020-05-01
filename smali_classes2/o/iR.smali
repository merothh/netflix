.class Lo/iR;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/netflix/cl/model/envelope/LoggingEnvelope;

.field private final d:Lo/iP;


# direct methods
.method public constructor <init>(Lo/iP;Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/iR;->d:Lo/iP;

    iput-object p2, p0, Lo/iR;->b:Lcom/netflix/cl/model/envelope/LoggingEnvelope;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/iR;->d:Lo/iP;

    iget-object v1, p0, Lo/iR;->b:Lcom/netflix/cl/model/envelope/LoggingEnvelope;

    invoke-static {v0, v1}, Lo/iP;->e(Lo/iP;Lcom/netflix/cl/model/envelope/LoggingEnvelope;)V

    return-void
.end method
