.class Lo/lr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lo/lf;


# direct methods
.method public constructor <init>(Lo/lf;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lr;->c:Lo/lf;

    iput-boolean p2, p0, Lo/lr;->b:Z

    iput-object p3, p0, Lo/lr;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/lr;->c:Lo/lf;

    iget-boolean v1, p0, Lo/lr;->b:Z

    iget-object v2, p0, Lo/lr;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/lf;->e(Lo/lf;ZLjava/lang/String;)V

    return-void
.end method
