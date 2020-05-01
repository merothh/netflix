.class Lo/mz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/mq$2;


# direct methods
.method public constructor <init>(Lo/mq$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/mz;->b:Lo/mq$2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/mz;->b:Lo/mq$2;

    invoke-static {v0}, Lo/mq$2;->a(Lo/mq$2;)V

    return-void
.end method
