.class Lo/ru;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/rt;


# direct methods
.method public constructor <init>(Lo/rt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ru;->c:Lo/rt;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/ru;->c:Lo/rt;

    invoke-static {v0}, Lo/rt;->d(Lo/rt;)V

    return-void
.end method
