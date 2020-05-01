.class Lo/aiS;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/aiR$Application;

.field private final b:Ljava/lang/String;

.field private final e:Lo/aiR;


# direct methods
.method public constructor <init>(Lo/aiR;Ljava/lang/String;Lo/aiR$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aiS;->e:Lo/aiR;

    iput-object p2, p0, Lo/aiS;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/aiS;->a:Lo/aiR$Application;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/aiS;->e:Lo/aiR;

    iget-object v1, p0, Lo/aiS;->b:Ljava/lang/String;

    iget-object v2, p0, Lo/aiS;->a:Lo/aiR$Application;

    invoke-static {v0, v1, v2}, Lo/aiR;->a(Lo/aiR;Ljava/lang/String;Lo/aiR$Application;)V

    return-void
.end method
