.class Lo/abA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final c:Lo/abu;


# direct methods
.method public constructor <init>(Lo/abu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abA;->c:Lo/abu;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/abA;->c:Lo/abu;

    invoke-static {v0}, Lo/abu;->o(Lo/abu;)V

    return-void
.end method
