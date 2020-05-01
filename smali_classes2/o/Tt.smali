.class Lo/Tt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:I

.field private final c:Lo/Ts$Application;


# direct methods
.method public constructor <init>(Lo/Ts$Application;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Tt;->c:Lo/Ts$Application;

    iput p2, p0, Lo/Tt;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/Tt;->c:Lo/Ts$Application;

    iget v1, p0, Lo/Tt;->b:I

    invoke-static {v0, v1}, Lo/Ts$Application;->a(Lo/Ts$Application;I)V

    return-void
.end method
