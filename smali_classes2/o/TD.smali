.class Lo/TD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lo/TC;


# direct methods
.method public constructor <init>(Lo/TC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TD;->d:Lo/TC;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/TD;->d:Lo/TC;

    invoke-static {v0}, Lo/TC;->l(Lo/TC;)V

    return-void
.end method
