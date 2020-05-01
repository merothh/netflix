.class Lo/Ed;
.super Ljava/lang/Object;

# interfaces
.implements Lo/DE$Activity;


# instance fields
.field private final e:Lo/DY;


# direct methods
.method public constructor <init>(Lo/DY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Ed;->e:Lo/DY;

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lo/Ed;->e:Lo/DY;

    invoke-static {v0, p1}, Lo/DY;->b(Lo/DY;Z)V

    return-void
.end method
