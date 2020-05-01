.class Lo/pL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:[B

.field private final c:Lo/pJ;


# direct methods
.method public constructor <init>(Lo/pJ;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/pL;->c:Lo/pJ;

    iput-object p2, p0, Lo/pL;->b:[B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/pL;->c:Lo/pJ;

    iget-object v1, p0, Lo/pL;->b:[B

    invoke-static {v0, v1}, Lo/pJ;->b(Lo/pJ;[B)V

    return-void
.end method
