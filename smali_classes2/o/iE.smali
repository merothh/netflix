.class Lo/iE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lo/iH;


# direct methods
.method public constructor <init>(Lo/iH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/iE;->a:Lo/iH;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/iE;->a:Lo/iH;

    invoke-static {v0}, Lo/iH;->c(Lo/iH;)V

    return-void
.end method
