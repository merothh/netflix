.class Lo/iO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/iP;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/iP;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/iO;->a:Lo/iP;

    iput-object p2, p0, Lo/iO;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/iO;->a:Lo/iP;

    iget-object v1, p0, Lo/iO;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/iP;->c(Lo/iP;Ljava/lang/String;)V

    return-void
.end method
