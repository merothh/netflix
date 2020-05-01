.class Lo/ts;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lo/tt;


# direct methods
.method public constructor <init>(Lo/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ts;->e:Lo/tt;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/ts;->e:Lo/tt;

    invoke-static {v0}, Lo/tt;->e(Lo/tt;)V

    return-void
.end method
