.class Lo/Rg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/BE;

.field private final d:Lo/BY;


# direct methods
.method public constructor <init>(Lo/BE;Lo/BY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rg;->c:Lo/BE;

    iput-object p2, p0, Lo/Rg;->d:Lo/BY;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Rg;->c:Lo/BE;

    iget-object v1, p0, Lo/Rg;->d:Lo/BY;

    invoke-static {v0, v1}, Lo/Rj;->d(Lo/BE;Lo/BY;)V

    return-void
.end method
