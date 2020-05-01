.class Lo/lt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/Exception;

.field private final d:Lo/mm;


# direct methods
.method public constructor <init>(Lo/mm;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lt;->d:Lo/mm;

    iput-object p2, p0, Lo/lt;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/lt;->d:Lo/mm;

    iget-object v1, p0, Lo/lt;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lo/lf$3;->e(Lo/mm;Ljava/lang/Exception;)V

    return-void
.end method
