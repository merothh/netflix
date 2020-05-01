.class Lo/lx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lo/lf$5;

.field private final d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lo/lf$5;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lx;->c:Lo/lf$5;

    iput-object p2, p0, Lo/lx;->d:Ljava/lang/Exception;

    iput-object p3, p0, Lo/lx;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lo/lx;->c:Lo/lf$5;

    iget-object v1, p0, Lo/lx;->d:Ljava/lang/Exception;

    iget-object v2, p0, Lo/lx;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lo/lf$5;->d(Lo/lf$5;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
