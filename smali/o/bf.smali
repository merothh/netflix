.class Lo/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lo/alA;


# instance fields
.field private final c:Ljava/lang/Runnable;

.field private final e:Lo/bc;


# direct methods
.method public constructor <init>(Lo/bc;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/bf;->e:Lo/bc;

    iput-object p2, p0, Lo/bf;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/bf;->e:Lo/bc;

    iget-object v1, p0, Lo/bf;->c:Ljava/lang/Runnable;

    check-cast p1, Lo/bz;

    invoke-static {v0, v1, p1}, Lo/bc;->c(Lo/bc;Ljava/lang/Runnable;Lo/bz;)Lo/akj;

    move-result-object p1

    return-object p1
.end method
