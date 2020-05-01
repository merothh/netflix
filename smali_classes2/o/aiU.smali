.class Lo/aiU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/aiR$Application;

.field private final c:Ljava/lang/String;

.field private final d:Lo/aiR;


# direct methods
.method public constructor <init>(Lo/aiR;Ljava/lang/String;Ljava/lang/String;Lo/aiR$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiU;->d:Lo/aiR;

    iput-object p2, p0, Lo/aiU;->c:Ljava/lang/String;

    iput-object p3, p0, Lo/aiU;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/aiU;->b:Lo/aiR$Application;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lo/aiU;->d:Lo/aiR;

    iget-object v1, p0, Lo/aiU;->c:Ljava/lang/String;

    iget-object v2, p0, Lo/aiU;->a:Ljava/lang/String;

    iget-object v3, p0, Lo/aiU;->b:Lo/aiR$Application;

    invoke-static {v0, v1, v2, v3}, Lo/aiR;->b(Lo/aiR;Ljava/lang/String;Ljava/lang/String;Lo/aiR$Application;)V

    return-void
.end method
