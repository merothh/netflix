.class public abstract Lo/agO;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final b:Lo/agT;


# direct methods
.method protected constructor <init>(Lo/agT;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/agO;->b:Lo/agT;

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/netflix/msl/util/MslContext;Lo/agQ;)Lo/agM;
.end method

.method public abstract b(Lcom/netflix/msl/util/MslContext;Lo/ahp;)Lo/agQ;
.end method

.method public e()Lo/agT;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/agO;->b:Lo/agT;

    return-object v0
.end method
