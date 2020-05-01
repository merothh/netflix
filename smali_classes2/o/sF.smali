.class Lo/sF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lo/sz;


# direct methods
.method public constructor <init>(Lo/sz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/sF;->e:Lo/sz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/sF;->e:Lo/sz;

    invoke-static {v0}, Lo/sz;->k(Lo/sz;)V

    return-void
.end method
