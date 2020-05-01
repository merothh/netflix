.class Lo/xA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/xy$Application;


# direct methods
.method public constructor <init>(Lo/xy$Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/xA;->b:Lo/xy$Application;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/xA;->b:Lo/xy$Application;

    invoke-static {v0}, Lo/xy$Application;->c(Lo/xy$Application;)V

    return-void
.end method
