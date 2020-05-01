.class Lo/um;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lo/ul;


# direct methods
.method public constructor <init>(Lo/ul;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/um;->e:Lo/ul;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/um;->e:Lo/ul;

    invoke-static {v0}, Lo/ul;->b(Lo/ul;)V

    return-void
.end method
