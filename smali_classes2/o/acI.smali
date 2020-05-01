.class Lo/acI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/acK;


# direct methods
.method public constructor <init>(Lo/acK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/acI;->d:Lo/acK;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/acI;->d:Lo/acK;

    invoke-static {v0}, Lo/acK;->e(Lo/acK;)V

    return-void
.end method
