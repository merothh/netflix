.class Lo/iX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:Lo/iT;


# direct methods
.method public constructor <init>(Lo/iT;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/iX;->e:Lo/iT;

    iput-object p2, p0, Lo/iX;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/iX;->e:Lo/iT;

    iget-object v1, p0, Lo/iX;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/iT;->b(Lo/iT;Ljava/lang/String;)V

    return-void
.end method