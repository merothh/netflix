.class Lo/rd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/rb;

.field private final e:[B


# direct methods
.method public constructor <init>(Lo/rb;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/rd;->a:Lo/rb;

    iput-object p2, p0, Lo/rd;->e:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/rd;->a:Lo/rb;

    iget-object v1, p0, Lo/rd;->e:[B

    invoke-static {v0, v1}, Lo/rb;->e(Lo/rb;[B)V

    return-void
.end method
