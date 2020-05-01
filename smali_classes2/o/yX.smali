.class Lo/yX;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lo/yV;


# direct methods
.method public constructor <init>(Lo/yV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/yX;->b:Lo/yV;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/yX;->b:Lo/yV;

    invoke-static {v0}, Lo/yV;->c(Lo/yV;)V

    return-void
.end method
